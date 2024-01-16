## OdooChat.

### Example

```dart
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
    username: 'youruser@odoo.com',
    password: '12345678',
  );

  print(loginResult);

  // Init messaging
  final messagingResult = await odooChat.initMessaging();

  print('Current Partner: ');
  print(messagingResult.currentPartner);

  print('Channels, Private Messages, Groups: ');
  print(messagingResult.channels);

  if (messagingResult.channels.isEmpty) {
    print('No channels found');
    return;
  }

  // Fetch messages
  final messages = await odooChat.fetchMessages(
    messagingResult.channels.first.id,
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
    channelId: messagingResult.channels.first.id,
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
        case null:
          print('Empty poll result');
      }
    }
  }
}
```
### Download attachments

```dart
// Get attachment in bytes
final bytes = odooChat.getAttachment(attachmentId)
```

### Note

It is recommended to use isolates to run the chat poll.

Review an [application example](https://github.com/luiscib3r/odoochat_flutter/tree/main/example/odoochat_example).

### Flutter Web

Please note that currently, this package does not support Flutter Web. However, work is in progress to make it compatible with web as well.