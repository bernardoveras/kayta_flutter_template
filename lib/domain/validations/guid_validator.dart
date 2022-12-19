import 'package:uuid/uuid.dart';

class GuidValidator {
  const GuidValidator._();
  
  /// Checar se uma string é um GUID.
  static bool isValid(String guid) {
    if (Uuid.isValidUUID(fromString: guid)) return true;

    return false;
  }
}
