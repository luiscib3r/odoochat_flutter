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
}
