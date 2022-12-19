import '../exceptions/exceptions.dart';
import 'guid_validator.dart';

class DomainValidation {
  const DomainValidation._();
  
  /// Checa se a string é nulo.
  /// 
  /// Retorna uma exceção "EntityValidationException" caso o valor for nulo.
  static void notNull(dynamic target, String fieldName) {
    if (target == null) {
      throw EntityValidationException('$fieldName should not be null.');
    }
  }

  /// Checa se a string é nulo ou vazia.
  /// 
  /// Retorna uma exceção "EntityValidationException" caso o valor for nulo ou vazia.
  static void notNullOrEmpty(String? target, String fieldName) {
    if (target == null || target.trim().isEmpty) {
      throw EntityValidationException('$fieldName should not be empty or null.');
    }
  }

  /// Checa se a string é menor que um tamanho mínimo.
  /// 
  /// Retorna uma exceção "EntityValidationException" caso o valor for menor do que o minLength.
  static void minLength(String target, int minLength, String fieldName) {
    if (target.length < minLength) {
      throw EntityValidationException('$fieldName should be at least $minLength characters long.');
    }
  }

  /// Checa se a string é maior que um tamanho máximo.
  /// 
  /// Retorna uma exceção "EntityValidationException" caso o valor for maior do que o minLength.
  static void maxLength(String target, int maxLength, String fieldName) {
    if (target.length > maxLength) {
      throw EntityValidationException('$fieldName should be less or equal $maxLength characters long.');
    }
  }

  /// Checa se a string é um GUID válido.
  /// 
  /// Retorna uma exceção "EntityValidationException" caso o valor não for um GUID válido.
  static void isGuid(String target, String fieldName) {
    if (!GuidValidator.isValid(target)) {
      throw EntityValidationException('$fieldName is not a valid guid.');
    }
  }
}
