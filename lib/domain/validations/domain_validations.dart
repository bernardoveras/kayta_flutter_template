import '../exceptions/exceptions.dart';
import 'guid_validator.dart';

/// A utility class that contains methods for validating domain entities.
/// 
/// This class has no constructor and all methods and variables are `static`.
class DomainValidation {
  const DomainValidation._();
  
  /// A method that checks whether a String is null.
  static void notNull(dynamic target, String fieldName) {
    if (target == null) {
      throw EntityValidationException('$fieldName should not be null.');
    }
  }

  /// A method that checks whether a String is null or empty.
  static void notNullOrEmpty(String? target, String fieldName) {
    if (target == null || target.trim().isEmpty) {
      throw EntityValidationException('$fieldName should not be empty or null.');
    }
  }

  /// A method that checks whether a String is less than a specific length.
  static void minLength(String target, int minLength, String fieldName) {
    if (target.length < minLength) {
      throw EntityValidationException('$fieldName should be at least $minLength characters long.');
    }
  }

  /// A method that checks whether a String is greater than a specified length.
  static void maxLength(String target, int maxLength, String fieldName) {
    if (target.length > maxLength) {
      throw EntityValidationException('$fieldName should be less or equal $maxLength characters long.');
    }
  }

  /// A method that checks whether a String is a valid Guid.
  static void isGuid(String target, String fieldName) {
    if (!GuidValidator.isValid(target)) {
      throw EntityValidationException('$fieldName is not a valid guid.');
    }
  }
}
