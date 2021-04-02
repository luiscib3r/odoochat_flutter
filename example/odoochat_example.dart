import 'dart:math';

import 'package:odoochat/src/odoochat.dart';

void main(List<String> args) async {
  final odooChat = OdooChat(
    serverUrl: 'https://your-server.odoo.com',
    username: 'user',
    password: 'pass',
    databaseName: 'databasename',
  );

  await odooChat.login();
  final channels = await odooChat.initMessaging();

  // Find channel with admin
  late int admin_channel;

  channels.forEach((element) {
    if (element.name.contains('admin')) admin_channel = element.id;
  });

  // Get messages
  final messages = await odooChat.messageFetch(admin_channel);

  messages.forEach((element) {
    print(element.author.name);
    print(element.body);
    print(element.attachments);
    print('\n');
  });

  // Send message
  await odooChat.messagePost(
    channel_id: admin_channel,
    body:
        'Probando desde OdooChat Flutter mensage: ${Random().nextInt(999999)}',
  );

  // Poll
  while (true) {
    final message = await odooChat.poll();

    if (message != null) {
      print(message.author.name);
      print(message.author.uid);
      print(message.channelId);
      print(message.body);
      print(message.attachments);
    }
  }
}
