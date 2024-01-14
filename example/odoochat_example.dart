// ignore_for_file: avoid_print

import 'package:odoochat/odoochat.dart';

Future<void> main(List<String> args) async {
  // Init
  final odooChat = OdooChat(
    serverUrl: 'http://localhost:8069',
    databaseName: 'luisciber',
    debug: true,
  );

  // Login
  final loginResult = await odooChat.login(
    username: 'luisciber640@gmail.com',
    password: '12345678',
  );

  print(loginResult);

  // Init messaging
  final messagingResult = await odooChat.initMessaging();

  print('Current Partner: ');
  print(messagingResult.currentPartner);

  print('Channels: ');
  print(messagingResult.channelSlots.channels);

  print('Direct messages: ');
  print(messagingResult.channelSlots.directMessages);

  print('Private groups: ');
  print(messagingResult.channelSlots.privateGroups);

  // Fetch messages
  final messages = await odooChat.fetchMessages(
    messagingResult.channelSlots.channels.first.id,
  );

  print('Messages: ');
  for (final message in messages.reversed) {
    print(message.emailFrom);
    print(message.author);
    print(message.body);
    print(message.date);
    print('\n');
  }

  // Send message
  final newMessageId = await odooChat.sendMessage(
    channelId: messagingResult.channelSlots.channels.first.id,
    message: 'Test message from OdooChat Flutter',
  );

  print('New message id: $newMessageId');

  // Poll
  while (await Future<bool>.delayed(const Duration(seconds: 3), () => true)) {
    final results = await odooChat.poll();

    for (final result in results) {
      print('\n');
      switch (result.message) {
        case PollMessageMessage(data: final Message data):
          print('Is a message');
          print(data);
        case PollMessageChannel(data: final Channel data):
          print('Is a new channel notification');
          print(data);
        case PollMessageInfo(data: final MessageInfo data):
          print('Is an info message'); // ex: typing, or bot messages
          switch (data) {
            case MessageInfoTyping(
                isTyping: final bool isTyping,
                partnerId: final int partnerId,
                partnerName: final String partnerName,
              ):
              print('Partner id: $partnerId');
              print('Partner name: $partnerName');
              print('Is typing: $isTyping');

            case MessageInfoTransient(
                body: final String body,
              ):
              print('Transient message: $body');
          }
      }
    }
  }
}
