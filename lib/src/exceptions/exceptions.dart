class OdooChatException implements Exception {
  OdooChatException({
    required this.code,
    required this.message,
    this.data,
  });

  final int code;
  final String message;
  Map<String, dynamic>? data;
}
