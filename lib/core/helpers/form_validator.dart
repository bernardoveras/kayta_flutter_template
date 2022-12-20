import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../extensions/extensions.dart';

/// A utility class that holds methods for validating different textFields.
/// 
/// This class has no constructor and all methods and variables are `static`.
@immutable
class FormValidator{
  const FormValidator._();

  /// The error message for invalid email input.
  static const _invalidEmailError = 'Por favor, informe um e-mail válido.';

  /// The error message for empty email input.
  static const _emptyEmailInputError = 'Por favor, informe um e-mail.';

  /// A method containing validation logic for email input.
  static String? emailValidator(String? email){
    if(email.isNullOrEmpty()) {
      return _emptyEmailInputError;
    } else if (!email.isValidEmail()) {
      return _invalidEmailError;
    }
    return null;
  }

}
