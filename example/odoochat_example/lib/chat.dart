import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:odoochat_example/bloc/bloc.dart';

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

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ChatBloc>();

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

          return Chat(
            messages: state.messages,
            user: state.user!,
            onSendPressed: bloc.sendMessage,
            onPreviewDataFetched: bloc.handlePreviewDataFetched,
            theme: DefaultChatTheme(
              primaryColor: Theme.of(context).primaryColor,
            ),
          );
        },
      ),
    );
  }
}
