/// An exception to handle validation errors for entities.
class EntityValidationException implements Exception {
  final String _message;
  String get message => _message;

  EntityValidationException(String message) : _message = message;

  @override
  String toString() => message;
}
