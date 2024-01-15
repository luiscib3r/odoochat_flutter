import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:odoochat/odoochat.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

export 'api/odoochat_api.dart';
export 'exceptions/exceptions.dart';
export 'model/model.dart';
export 'payload/payload.dart';

class OdooChat {
  OdooChat({
    required String serverUrl,
    required String databaseName,
    bool debug = false,
  })  : _databaseName = databaseName,
        _debugMode = debug {
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
  final bool _debugMode;

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

    if (response.error != null) {
      if (_debugMode) {
        // ignore: avoid_print
        print(response.error);
      }
      throw OdooChatException(
        code: response.error!.code,
        message: response.error!.message,
        data: response.error!.data,
      );
    }

    _loginResult = response.result;

    return response.result!;
  }

  Future<T> _proccess<T>({
    required Future<RpcResponse<T>> Function() action,
  }) async {
    if (_loginResult == null) {
      throw OdooChatException(
        code: 403,
        message: 'You must login first. Please call login method.',
      );
    }

    final response = await action();

    if (response.error != null) {
      if (_debugMode) {
        // ignore: avoid_print
        print(response.error);
      }
      throw OdooChatException(
        code: response.error!.code,
        message: response.error!.message,
      );
    }

    return response.result!;
  }

  Future<InitMessagingResult> initMessaging() => _proccess(
        action: () => _api.initMessaging(
          RpcPayload.from(
            params: InitMessagingParams(
              context: _loginResult!.userContext,
            ),
          ),
        ),
      );

  Future<List<Message>> fetchMessages(int channelId) => _proccess(
        action: () => _api.messageFetch(
          RpcPayload.from(
            params: MessageFetchParams(
              context: _loginResult!.userContext,
              channelId: channelId,
            ),
          ),
        ),
      );

  Future<int> sendMessage({
    required int channelId,
    required String message,
    List<int> attachmentIds = const [],
  }) =>
      _proccess(
        action: () => _api.messagePost(
          RpcPayload.from(
            params: MessagePostParams(
              context: _loginResult!.userContext,
              channelId: channelId,
              body: message,
              attachmentIds: attachmentIds,
            ),
          ),
        ),
      );

  int _lastPoll = 0;
  Future<List<PollResult>> poll({
    int? last,
  }) =>
      _proccess(
        action: () async {
          final response = await _api.poll(
            RpcPayload.from(
              params: PollParams(
                last: last ?? _lastPoll,
              ),
            ),
          );

          if (response.result?.isNotEmpty ?? false) {
            _lastPoll = response.result?.last.id ?? _lastPoll;
          }

          return response;
        },
      );
}
