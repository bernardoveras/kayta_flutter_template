class EntityValidationException implements Exception {
  late String _message;
  String get message => _message;

  EntityValidationException(String message) {
    _message = message;
  }

  @override
  String toString() => message;
}
