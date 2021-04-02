import 'dart:math';

class InitMessagingPayload {
  final Map<String, dynamic> _payload;
  Map<String, dynamic> get payload => _payload;

  InitMessagingPayload({
    required Map<String, dynamic> context,
  }) : _payload = {
          'id': Random().nextInt(999999999),
          'jsonrpc': '2.0',
          'method': 'call',
          'params': {
            'context': context,
          },
        };
}
