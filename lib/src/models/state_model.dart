import 'package:odoochat/src/models/user_model.dart';

class StateModel {
  final String serverUrl;
  final String username;
  final String password;
  final String databaseName;

  UserModel? user;

  StateModel({
    required this.serverUrl,
    required this.username,
    required this.password,
    required this.databaseName,
  });

  StateModel.fromJson(Map<String, dynamic> map)
      : serverUrl = map['serverUrl'],
        username = map['username'],
        password = map['password'],
        databaseName = map['databaseName'],
        user = UserModel.fromJson(map['user']);

  Map<String, dynamic> toJson() => {
        'serverUrl': serverUrl,
        'username': username,
        'password': password,
        'databaseName': databaseName,
        'user': user?.toJson(),
      };
}
