import 'dart:math';

class MessagePostPayload {
  final Map<String, dynamic> _payload;
  Map<String, dynamic> get payload => _payload;

  MessagePostPayload({
    required int channelId,
    required String body,
    required Map<String, dynamic> context,
    List<int> attachmentIds = const [],
  }) : _payload = {
          'id': Random().nextInt(999999999),
          'jsonrpc': '2.0',
          'method': 'call',
          'params': {
            'args': [channelId],
            'kwargs': {
              'attachment_ids': attachmentIds,
              'body': body,
              'channel_ids': [],
              'context': context,
              'message_type': 'comment',
              'partner_ids': [],
              'subtype_xmlid': 'mail.mt_comment',
              'subtype': 'mail.mt_comment',
            },
            'method': 'message_post',
            'model': 'mail.channel',
          }
        };
}
