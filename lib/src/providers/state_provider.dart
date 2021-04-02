import 'package:odoochat/src/models/state_model.dart';
import 'package:odoochat/src/models/user_model.dart';

class StateProvider {
  late final StateModel _state;

  StateProvider({
    required String serverUrl,
    required String username,
    required String password,
    required String databaseName,
  }) : _state = StateModel(
          serverUrl: serverUrl,
          username: username,
          password: password,
          databaseName: databaseName,
        );

  String get serverUrl => _state.serverUrl;
  String get username => _state.username;
  String get password => _state.password;
  String get databaseName => _state.databaseName;

  UserModel? get user => _state.user;
  set user(UserModel? value) => _state.user = value;

  StateProvider.fromJson(Map<String, dynamic> map)
      : _state = StateModel.fromJson(map);

  Map<String, dynamic> toJson() => _state.toJson();
}
