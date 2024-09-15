class HoYoLABAPIError implements Exception {
  final int code;
  final String message;

  HoYoLABAPIError(this.code, this.message);

  @override
  String toString() => 'ApiException: Code $code, Message: $message';
}