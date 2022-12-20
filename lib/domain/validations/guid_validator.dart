import 'package:uuid/uuid.dart';

/// A utility class that contains methods to validate guids.
/// This class has no constructor and all methods are `static`.
class GuidValidator {
  const GuidValidator._();

  /// A method that checks whether a String is a valid Guid.
  static bool isValid(String guid) {
    if (Uuid.isValidUUID(fromString: guid)) return true;

    return false;
  }
}
