// ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:odoochat/odoochat.dart'
    show
        Attachment,
        InitMessagingResultExtension,
        OdooChat,
        PollMessageMessage,
        PollResult,
        PollResultExtension;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

// ignore: always_use_package_imports
import 'chat_poll/chat_poll.dart';

part 'chat_bloc.freezed.dart';
part 'chat_state.dart';

class ChatBloc extends Cubit<OdooChatState> {
  ChatBloc({
    required this.odooChat,
  }) : super(OdooChatState.initial()) {
    _loadData();
  }

  final OdooChat odooChat;

  late final ChatPoll chatPoll = ChatPoll(
    odooChat: odooChat,
  );

  late final StreamSubscription<List<PollResult>> _pollSubscription;

  Future<void> _loadData() async {
    final loginResult = odooChat.loginResult!;

    final result = await odooChat.initMessaging();

    final channels =
        result.channels.map((e) => AppChannel(id: e.id, name: e.name));

    emit(
      state.copyWith(
        channels: channels.toList(),
        user: User(
          id: loginResult.partnerId.toString(),
          firstName: loginResult.partnerDisplayName.split(',').last,
        ),
      ),
    );

    await chatPoll.run();
    _pollSubscription = chatPoll.stream.listen(_handlePollResults);
  }

  Future<File> _downloadAttachment(Attachment attachment) async {
    final directory = await getTemporaryDirectory();
    final savePath = join(directory.path, attachment.filename);
    final data = await odooChat.getAttachment(attachment.id);

    final file = File(savePath);
    await file.writeAsBytes(data);

    return File(savePath);
  }

  Future<void> _handlePollResults(List<PollResult> results) async {
    final newMessagesFuture = results
        .where((e) => e.channelId == state.currentChannel?.id)
        .map((e) async {
      if (e.message != null && e.message is PollMessageMessage) {
        final message = (e.message! as PollMessageMessage).data;

        final author = User(
          firstName: message.author.name,
          id: message.author.id.toString(),
        );

        final attachments = await Future.wait(
          message.atachments.map(
            (attach) async {
              final saveFile = await _downloadAttachment(attach);

              if (attach.mimetype == 'image/jpeg' ||
                  attach.mimetype == 'image/png') {
                return ImageMessage(
                  author: author,
                  id: 'attach-${attach.id}',
                  name: attach.filename,
                  size: saveFile.lengthSync(),
                  uri: saveFile.path,
                );
              }

              return FileMessage(
                author: author,
                id: 'attach-${attach.id}',
                name: attach.filename,
                size: saveFile.lengthSync(),
                uri: saveFile.path,
              );
            },
          ),
        );

        return [
          if (message.body.isNotEmpty)
            TextMessage(
              author: author,
              id: message.id.toString(),
              text: Bidi.stripHtmlIfNeeded(message.body).trim(),
              createdAt: DateTime.parse(message.date).millisecondsSinceEpoch,
            ),
          ...attachments,
        ];
      }

      return null;
    });

    final newMessages = await Future.wait(newMessagesFuture);

    final newMessagesFiltered = newMessages
        .where((e) => e != null)
        .cast<List<Message>>()
        .expand((e) => e)
        .where((e) => !state.messages.map((e) => e.id).contains(e.id));

    emit(
      state.copyWith(
        messages: [
          ...newMessagesFiltered,
          ...state.messages,
        ],
      ),
    );
  }

  Future<void> setChannel(AppChannel channel) async {
    emit(state.copyWith(currentChannel: channel));
    final result = await odooChat.fetchMessages(channel.id);

    final messages = await Future.wait(
      result.map((e) async {
        final author = User(
          id: e.author.id.toString(),
          firstName: e.author.name,
        );

        final attachments = await Future.wait(
          e.atachments.map(
            (attach) async {
              final saveFile = await _downloadAttachment(attach);

              if (attach.mimetype == 'image/jpeg' ||
                  attach.mimetype == 'image/png') {
                return ImageMessage(
                  author: author,
                  id: 'attach-${attach.id}',
                  name: attach.filename,
                  size: saveFile.lengthSync(),
                  uri: saveFile.path,
                );
              }

              return FileMessage(
                author: author,
                id: 'attach-${attach.id}',
                name: attach.filename,
                size: saveFile.lengthSync(),
                uri: saveFile.path,
              );
            },
          ),
        );

        return [
          if (e.body.isNotEmpty)
            TextMessage(
              id: e.id.toString(),
              author: author,
              text: Bidi.stripHtmlIfNeeded(e.body).trim(),
              createdAt: DateTime.parse(e.date).millisecondsSinceEpoch,
            ),
          ...attachments,
        ];
      }),
    );

    emit(
      state.copyWith(
        messages: messages.expand((e) => e).toList(),
      ),
    );
  }

  void exitChannel() =>
      emit(state.copyWith(currentChannel: null, messages: []));

  void handlePreviewDataFetched(
    TextMessage message,
    PreviewData previewData,
  ) {
    final index =
        state.messages.indexWhere((element) => element.id == message.id);

    final updatedMessage = (state.messages[index] as TextMessage).copyWith(
      previewData: previewData,
    );

    emit(
      state.copyWith(
        messages: [
          ...state.messages.sublist(0, index),
          updatedMessage,
          ...state.messages.sublist(index + 1),
        ],
      ),
    );
  }

  Future<void> sendMessage(PartialText message) async {
    if (state.currentChannel != null) {
      await odooChat.sendMessage(
        channelId: state.currentChannel!.id,
        message: message.text,
      );
    }
  }

  Future<void> sendAttachment({
    required String filename,
    required Uint8List bytes,
  }) async {
    emit(state.copyWith(loading: true));
    final attachmentId = await odooChat.uploadAttachment(
      filename: filename,
      bytes: bytes,
    );
    emit(state.copyWith(loading: false));

    await odooChat.sendMessage(
      channelId: state.currentChannel!.id,
      message: '',
      attachmentIds: [attachmentId],
    );
  }

  @override
  Future<void> close() async {
    await _pollSubscription.cancel();
    return super.close();
  }
}
