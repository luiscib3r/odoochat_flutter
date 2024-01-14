import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:odoochat/odoochat.dart' show OdooChat;

part 'chat_bloc.freezed.dart';
part 'chat_state.dart';

class ChatBloc extends Cubit<OdooChatState> {
  ChatBloc({
    required this.odooChat,
  }) : super(OdooChatState.initial()) {
    _loadData();
  }

  final OdooChat odooChat;

  Future<void> _loadData() async {
    final loginResult = odooChat.loginResult!;

    final result = await odooChat.initMessaging();

    final channels = [
      ...result.channelSlots.channels,
      ...result.channelSlots.privateGroups,
      ...result.channelSlots.directMessages,
    ].map((e) => AppChannel(id: e.id, name: e.name));

    emit(
      state.copyWith(
        channels: channels.toList(),
        user: User(
          id: loginResult.partnerId.toString(),
          firstName: loginResult.partnerDisplayName.split(',').last,
        ),
      ),
    );
  }

  Future<void> setChannel(AppChannel channel) async {
    emit(state.copyWith(currentChannel: channel));
    final result = await odooChat.fetchMessages(channel.id);

    final messages = result.map(
      (e) => TextMessage(
        id: e.id.toString(),
        author: User(
          id: e.author.id.toString(),
          firstName: e.author.name,
        ),
        text: Bidi.stripHtmlIfNeeded(e.body).trim(),
        createdAt: DateTime.parse(e.date).millisecondsSinceEpoch,
      ),
    );

    emit(state.copyWith(messages: messages.toList()));
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
}
