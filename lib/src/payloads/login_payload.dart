class LoginPayload {
  final Map<String, dynamic> _payload;
  Map<String, dynamic> get payload => _payload;

  LoginPayload({
    required String login,
    required String password,
    required String db,
  }) : _payload = {
          'jsonrpc': '2.0',
          'params': {
            'login': login,
            'password': password,
            'db': db,
          },
        };
}
