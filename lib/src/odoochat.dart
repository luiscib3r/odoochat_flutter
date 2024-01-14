import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:odoochat/odoochat.dart';
import 'package:odoochat/src/api/odoochat_api.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

export 'model/model.dart';
export 'payload/payload.dart';

class OdooChat {
  OdooChat({
    required String serverUrl,
    required String databaseName,
  }) : _databaseName = databaseName {
    const isRelease = bool.fromEnvironment('dart.vm.product');

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
          // if (!isRelease)
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

  Future<void> login({
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

    print(response);
  }
}
