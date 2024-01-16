import 'dart:io';
import 'dart:typed_data';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:odoochat/odoochat.dart';
import 'package:odoochat/src/debug/odoo_dio_logger.dart';

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
          if (debug) OdooDioLogger(),
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
  int? _odooVersion;

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
    _odooVersion = _loginResult?.serverVersionInfo.first as int?;

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
        action: () {
          if (_odooVersion == 14) {
            return _api.messageFetch(
              RpcPayload.from(
                params: MessageFetchParams(
                  context: _loginResult!.userContext,
                  channelId: channelId,
                ),
              ),
            );
          }

          return _api.getMessages(
            RpcPayload.from(
              params: GetMessagesParams(
                channelId: channelId,
                limit: 30,
              ),
            ),
          );
        },
      );

  Future<int> sendMessage({
    required int channelId,
    required String message,
    List<int> attachmentIds = const [],
  }) =>
      _proccess(
        action: () async {
          if (_odooVersion == 14) {
            return _api.messagePost(
              RpcPayload.from(
                params: MessagePostParams(
                  context: _loginResult!.userContext,
                  channelId: channelId,
                  body: message,
                  attachmentIds: attachmentIds,
                ),
              ),
            );
          }

          final response = await _api.sendMessage(
            RpcPayload.from(
              params: SendMessageParams(
                channelId: channelId,
                body: message,
                context: _loginResult!.userContext,
                attachmentIds: attachmentIds,
              ),
            ),
          );

          return RpcResponse<int>(
            jsonrpc: response.jsonrpc,
            id: response.id,
            result: response.result?.id,
          );
        },
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

  String getAttachmentUrl(int id) {
    return '${_dio.options.baseUrl}/web/content/ir.attachment/$id/datas';
  }

  Future<Uint8List> getAttachment(int id) async {
    final response = await _dio.get<Uint8List>(
      '/web/content/ir.attachment/$id/datas',
      options: Options(
        responseType: ResponseType.bytes,
        contentType: ContentType.binary.value,
      ),
    );

    if (response.data == null) {
      throw OdooChatException(
        code: 404,
        message: 'Attachment not found',
        data: {
          'id': id,
        },
      );
    }

    return Uint8List.fromList(response.data!);
  }

  String? _csrfToken;

  Future<String> get csrfToken async {
    if (_csrfToken != null) {
      return _csrfToken!;
    }

    final response = await _dio.get<String>(
      '/web',
      options: Options(
        contentType: ContentType.html.value,
      ),
    );

    final document = response.data!;

    final csrfToken = document
        .split('csrf_token:')
        .last
        .split(',')
        .first
        .replaceAll('"', '')
        .replaceAll(' ', '');

    return _csrfToken = csrfToken;
  }

  Future<int> uploadAttachment({
    required String filename,
    required Uint8List bytes,
  }) async {
    final token = await csrfToken;

    final response = await _dio.post<String>(
      '/web/binary/upload_attachment',
      data: UploadAttachmentPayload(
        file: bytes,
        fileName: filename,
        token: token,
      ).payload,
    );

    final attachmentId =
        response.data!.split('"id"').last.split(',').first.replaceAll(': ', '');

    return int.parse(attachmentId);
  }
}
