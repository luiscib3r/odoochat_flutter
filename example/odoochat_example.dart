import 'package:odoochat/odoochat.dart';

Future<void> main(List<String> args) async {
  final odooChat = OdooChat(
    serverUrl: 'http://localhost:8069',
    databaseName: 'luisciber',
  );

  await odooChat.login(
    username: 'luisciber640@gmail.com',
    password: '12345678',
  );
}
