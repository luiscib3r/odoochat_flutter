import 'dart:typed_data';

import 'package:dio/dio.dart';

class UploadAttachmentPayload {
  final String token;
  final Uint8List file;
  final String fileName;

  FormData get payload => FormData.fromMap({
        'id': 0,
        'csrf_token': token,
        'model': 'mail.compose.message',
        'ufile': MultipartFile.fromBytes(
          file,
          filename: fileName,
        ),
      });

  UploadAttachmentPayload({
    required this.file,
    required this.fileName,
    required this.token,
  });
}
