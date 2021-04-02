import 'dart:async';

import 'package:dio/dio.dart';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class HttpClient {
  String serverUrl;

  Dio http = Dio();

  final cookieJar = CookieJar(
    ignoreExpires: false,
  );

  HttpClient({
    required this.serverUrl,
  }) {
    http.interceptors.add(
      CookieManager(
        cookieJar,
      ),
    );
  }

  Future<Response> get({
    required String url,
  }) async {
    final response = await http.get(
      '${serverUrl + url}',
    );

    return response;
  }

  Future<Response> post({
    required String url,
    required dynamic data,
  }) async {
    final response = await http.post(
      '${serverUrl + url}',
      data: data,
    );

    return response;
  }
}
