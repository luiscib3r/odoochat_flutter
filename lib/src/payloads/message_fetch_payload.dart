import 'dart:math';

class MessageFetchPayload {
  final Map<String, dynamic> _payload;
  Map<String, dynamic> get payload => _payload;

  MessageFetchPayload({
    required int channelId,
    required Map<String, dynamic> context,
  }) : _payload = {
          'id': Random().nextInt(999999999),
          'jsonrpc': '2.0',
          'method': 'call',
          'params': {
            'args': [],
            'kwargs': {
              'context': context,
              'domain': [
                [
                  'channel_ids',
                  'in',
                  [channelId]
                ]
              ],
              'limit': 30,
            },
            'method': 'message_fetch',
            'model': 'mail.message'
          }
        };
}
