/// An exception to handle initialization errors.
class InitializationException implements Exception {
  final String _message;
  String get message => _message;

  InitializationException(String message) : _message = message;

  @override
  String toString() => message;
}
