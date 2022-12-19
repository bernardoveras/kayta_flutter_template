class InitializationException implements Exception {
  late final String _message;
  String get message => _message;

  InitializationException(String message, [dynamic error]) : _message = message;

  @override
  String toString() => message;
}
