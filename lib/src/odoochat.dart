import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:odoochat/odoochat.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

export 'api/odoochat_api.dart';
export 'model/model.dart';
export 'payload/payload.dart';

class OdooChat {
  OdooChat({
    required String serverUrl,
    required String databaseName,
    bool debug = false,
  }) : _databaseName = databaseName {
    _dio = Dio(
      BaseOptions(
        baseUrl: serverUrl,
        contentType: 'application/json',
      ),
    )..interceptors.addAll(
        [
          CookieManager(
            CookieJar(),
          ),
          if (debug)
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
            ),
        ],
      );

    _api = OdooChatApi(
      _dio,
      baseUrl: serverUrl,
    );
  }

  late final Dio _dio;
  late final OdooChatApi _api;
  final String _databaseName;

  LoginResult? get loginResult => _loginResult;
  LoginResult? _loginResult;

  Future<LoginResult> login({
    required String username,
    required String password,
  }) async {
    final response = await _api.login(
      RpcPayload.from(
        params: LoginParams(
          login: username,
          password: password,
          db: _databaseName,
        ),
      ),
    );

    _loginResult = response.result;

    return response.result;
  }

  Future<InitMessagingResult> initMessaging() async {
    if (_loginResult == null) {
      throw Exception('You must login first. Please call login method.');
    }

    final response = await _api.initMessaging(
      RpcPayload.from(
        params: InitMessagingParams(
          context: _loginResult!.userContext,
        ),
      ),
    );

    return response.result;
  }

  Future<List<Message>> messageFetch(int channelId) async {
    if (_loginResult == null) {
      throw Exception('You must login first. Please call login method.');
    }

    final response = await _api.messageFetch(
      RpcPayload.from(
        params: MessageFetchParams(
          context: _loginResult!.userContext,
          channelId: channelId,
        ),
      ),
    );

    return response.result;
  }
}
