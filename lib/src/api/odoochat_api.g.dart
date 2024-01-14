// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'odoochat_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _OdooChatApi implements OdooChatApi {
  _OdooChatApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<RpcResponse<LoginResult>> login(
      RpcPayload<LoginParams> payload) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(payload.toJson((value) => value.toJson()));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RpcResponse<LoginResult>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/web/session/authenticate',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RpcResponse<LoginResult>.fromJson(
      _result.data!,
      (json) => LoginResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<RpcResponse<InitMessagingResult>> initMessaging(
      RpcPayload<InitMessagingParams> payload) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(payload.toJson((value) => value.toJson()));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RpcResponse<InitMessagingResult>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/mail/init_messaging',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RpcResponse<InitMessagingResult>.fromJson(
      _result.data!,
      (json) => InitMessagingResult.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<RpcResponse<List<Message>>> messageFetch(
      RpcPayload<MessageFetchParams> payload) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(payload.toJson((value) => value.toJson()));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RpcResponse<List<Message>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/web/dataset/call_kw/mail.message/message_fetch',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RpcResponse<List<Message>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<Message>((i) => Message.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  @override
  Future<RpcResponse<int>> messagePost(
      RpcPayload<MessagePostParams> payload) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(payload.toJson((value) => value.toJson()));
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<RpcResponse<int>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/web/dataset/call_kw/mail.channel/message_post',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RpcResponse<int>.fromJson(
      _result.data!,
      (json) => json as int,
    );
    return value;
  }

  @override
  Future<RpcResponse<List<PollResult>>> poll(
      RpcPayload<PollParams> payload) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(payload.toJson((value) => value.toJson()));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RpcResponse<List<PollResult>>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/longpolling/poll',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = RpcResponse<List<PollResult>>.fromJson(
      _result.data!,
      (json) => json is List<dynamic>
          ? json
              .map<PollResult>(
                  (i) => PollResult.fromJson(i as Map<String, dynamic>))
              .toList()
          : List.empty(),
    );
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
