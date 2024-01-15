import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:odoochat_example/bloc/bloc.dart';
import 'package:open_filex/open_filex.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatBloc>(
      create: (context) => ChatBloc(
        odooChat: context.read(),
      ),
      child: const ChatView(),
    );
  }

  static Future<void> open(BuildContext context) => Navigator.of(context)
      .pushReplacement(CupertinoPageRoute(builder: (_) => const ChatPage()));
}

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  late final bloc = context.read<ChatBloc>();

  @override
  Widget build(BuildContext context) {
    final channelName = context.select(
      (ChatBloc bloc) => bloc.state.currentChannel?.name,
    );

    return Scaffold(
      appBar: AppBar(
        title: channelName != null ? Text(channelName) : const Text('Channels'),
        actions: [
          if (channelName != null)
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: bloc.exitChannel,
            ),
        ],
      ),
      body: BlocBuilder<ChatBloc, OdooChatState>(
        builder: (context, state) {
          if (state.user == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.currentChannel == null) {
            return ListView.builder(
              itemCount: state.channels.length,
              itemBuilder: (context, index) {
                final channel = state.channels[index];

                return Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[200],
                  ),
                  child: ListTile(
                    title: Text(
                      '${channel.id} ${channel.name}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    onTap: () => bloc.setChannel(channel),
                  ),
                );
              },
            );
          }

          return Stack(
            fit: StackFit.expand,
            children: [
              Chat(
                isAttachmentUploading: state.loading,
                messages: state.messages,
                user: state.user!,
                onSendPressed: bloc.sendMessage,
                onPreviewDataFetched: bloc.handlePreviewDataFetched,
                theme: DefaultChatTheme(
                  primaryColor: Theme.of(context).primaryColor,
                ),
                onMessageTap: handleMessageTap,
                onAttachmentPressed: handleFileSelection,
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.single.path != null) {
      final file = result.files.single;

      final filename = result.files.single.name;
      final bytes = await File(file.path!).readAsBytes();

      await bloc.sendAttachment(filename: filename, bytes: bytes);
    }
  }

  Future<void> handleMessageTap(BuildContext _, types.Message message) async {
    if (message is types.FileMessage) {
      await OpenFilex.open(message.uri);
    }
  }
}
