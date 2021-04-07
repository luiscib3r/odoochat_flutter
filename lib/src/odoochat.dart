import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:odoochat/src/api.dart';
import 'package:odoochat/src/models/channel_model.dart';
import 'package:odoochat/src/models/message_model.dart';
import 'package:odoochat/src/models/user_model.dart';
import 'package:odoochat/src/payloads/init_messaging_payload.dart';
import 'package:odoochat/src/payloads/login_payload.dart';
import 'package:odoochat/src/payloads/message_fetch_payload.dart';
import 'package:odoochat/src/payloads/message_post_payload.dart';
import 'package:odoochat/src/payloads/poll_payload.dart';
import 'package:odoochat/src/payloads/upload_attachment_payload.dart';
import 'package:odoochat/src/providers/httpclient_provider.dart';
import 'package:odoochat/src/providers/state_provider.dart';

class OdooChat {
  final HttpClient _httpClient;
  final StateProvider _stateProvider;

  int lastPoll = 0;

  int? get userId => _stateProvider.user?.uid;
  String? get userName => _stateProvider.user?.name;

  OdooChat({
    required String serverUrl,
    required String username,
    required String password,
    required String databaseName,
  })   : _httpClient = HttpClient(
          serverUrl: serverUrl,
        ),
        _stateProvider = StateProvider(
          serverUrl: serverUrl,
          username: username,
          password: password,
          databaseName: databaseName,
        );

  OdooChat.loadState(Map<String, dynamic> map)
      : _stateProvider = StateProvider.fromJson(map),
        _httpClient = HttpClient(
          serverUrl: map['serverUrl'],
        );

  Future<void> login() async {
    try {
      final response = await _httpClient.post(
        url: OdooAPI.AUTHENTICATE,
        data: LoginPayload(
          login: _stateProvider.username,
          password: _stateProvider.password,
          db: _stateProvider.databaseName,
        ).payload,
      );

      if (response.statusCode == 200 && response.data['result'] != null) {
        final data = response.data['result'];
        _stateProvider.user = UserModel.fromJson(data);
      }
    } catch (e) {
      print(e);
    }
  }

  Future<List<ChannelModel>> initMessaging() async {
    if (_stateProvider.user != null) {
      final response = await _httpClient.post(
        url: OdooAPI.INIT_MESSAGING,
        data: InitMessagingPayload(
          context: _stateProvider.user!.context,
        ).payload,
      );

      if (response.statusCode == 200) {
        final channel = response.data['result']['channel_slots']
                ['channel_channel'] +
            response.data['result']['channel_slots']['channel_direct_message'];

        final channelList =
            (channel as List).map((e) => ChannelModel.fromJson(e)).toList();

        return channelList;
      } else {
        return [];
      }
    } else {
      await login();

      throw Exception(
          'You have logged in for the first time, please try again.');
    }
  }

  Future<List<MessageModel>> messageFetch(int channelId) async {
    if (_stateProvider.user != null) {
      final response = await _httpClient.post(
        url: OdooAPI.MESSAGE_FETCH,
        data: MessageFetchPayload(
          channelId: channelId,
          context: _stateProvider.user!.context,
        ).payload,
      );

      if (response.statusCode == 200) {
        final List<dynamic> result = response.data['result'] ?? [];

        if (result.isNotEmpty) {
          final messageList =
              result.map((e) => MessageModel.fromJson(e)).toList();

          return messageList;
        }
      }

      return [];
    } else {
      await login();

      throw Exception(
          'You have logged in for the first time, please try again.');
    }
  }

  Future<void> messagePost({
    required int channelId,
    required String body,
    List<int> attachmentIds = const [],
  }) async {
    if (_stateProvider.user != null) {
      final response = await _httpClient.post(
        url: OdooAPI.MESSAGE_POST,
        data: MessagePostPayload(
          channelId: channelId,
          body: body,
          context: _stateProvider.user!.context,
          attachmentIds: attachmentIds,
        ).payload,
      );
    } else {
      await login();

      throw Exception(
          'You have logged in for the first time, please try again.');
    }
  }

  Future<MessageModel?> poll() async {
    if (_stateProvider.user != null) {
      final response = await _httpClient.post(
        url: OdooAPI.POLL,
        data: PollPayload(last: lastPoll).payload,
      );

      if (response.statusCode == 200) {
        final result = response.data['result'];

        if (result != null && (result as List).isNotEmpty) {
          lastPoll = result[0]['id'];

          final message = result[0]['message'];

          if (message['id'] != null) {
            return MessageModel.fromJson(message);
          }
        }
      }
    } else {
      await login();

      throw Exception(
          'You have logged in for the first time, please try again.');
    }
  }

  Future<String> get csrfToken async {
    final response = await _httpClient.get(url: '/web');

    final document = response.data as String;

    final csrfToken = document
        .split('csrf_token:')
        .last
        .split(',')
        .first
        .replaceAll('"', '')
        .replaceAll(' ', '');

    return csrfToken;
  }

  Future<int?> uploadAttachment(String fileName, Uint8List file) async {
    try {
      final token = await csrfToken;

      final response = await _httpClient.post(
        url: OdooAPI.UPLOAD_ATTACHMENT,
        data: UploadAttachmentPayload(
          fileName: fileName,
          file: file,
          token: token,
        ).payload,
      );

      if (response.statusCode == 200) {
        final data = response.data as String;

        final fileId = int.parse(
          data.split('"id"').last.split(',').first.replaceAll(': ', ''),
        );

        return fileId;
      }
    } on DioError catch (e) {
      print(e.response?.statusCode);
      print(e.response?.data);
    }
  }

  Future<List<int>?> downloadAttachment(int id) async {
    try {
      final url = OdooAPI.DOWNLOAD_ATTACHMENT.replaceAll('ID', '$id');

      final response = await _httpClient.getFile(url: url);

      if (response.statusCode == 200) return response.data;
    } on DioError catch (e) {
      print(e.response?.statusCode);
      print(e.response?.data);
    }
  }

  Future<List<int>?> downloadImage(int id, String resolution) async {
    try {
      final url = OdooAPI.DOWNLOAD_IMAGE
          .replaceAll(
            'ID',
            '$id',
          )
          .replaceAll(
            'RESOLUTION',
            resolution,
          );

      final response = await _httpClient.getFile(url: url);

      if (response.statusCode == 200) return response.data;
    } on DioError catch (e) {
      print(e.response?.statusCode);
      print(e.response?.data);
    }
  }

  Map<String, dynamic> get state => _stateProvider.toJson();
}
