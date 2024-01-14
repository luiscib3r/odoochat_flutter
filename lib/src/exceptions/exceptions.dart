class OdooChatException implements Exception {
  OdooChatException({
    required this.code,
    required this.message,
  });

  final int code;
  final String message;
}
