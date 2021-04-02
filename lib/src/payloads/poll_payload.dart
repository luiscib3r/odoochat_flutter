import 'dart:math';

class PollPayload {
  final Map<String, dynamic> _payload;
  Map<String, dynamic> get payload => _payload;

  PollPayload({
    required int last,
  }) : _payload = {
          'id': Random().nextInt(999999999),
          'jsonrpc': '2.0',
          'method': 'call',
          'params': {
            'channels': ['bundle_changed'],
            'last': last,
            'options': {
              'bus_inactivity': 0,
            }
          }
        };
}
