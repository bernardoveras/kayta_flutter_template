import '../exceptions/entity_validation_exception.dart';
import 'guid_validator.dart';

class DomainValidation {
  const DomainValidation._();
  
  static void notNull(dynamic target, String fieldName) {
    if (target == null) {
      throw EntityValidationException('$fieldName should not be null.');
    }
  }

  static void notNullOrEmpty(String? target, String fieldName) {
    if (target == null || target.trim().isEmpty) {
      throw EntityValidationException('$fieldName should not be empty or null.');
    }
  }

  static void minLength(String target, int minLength, String fieldName) {
    if (target.length < minLength) {
      throw EntityValidationException('$fieldName should be at least $minLength characters long.');
    }
  }

  static void maxLength(String target, int maxLength, String fieldName) {
    if (target.length > maxLength) {
      throw EntityValidationException('$fieldName should be less or equal $maxLength characters long.');
    }
  }

  static void isGuid(String target, String fieldName) {
    if (!GuidValidator.isValid(target)) {
      throw EntityValidationException('$fieldName is not a valid guid.');
    }
  }
}
