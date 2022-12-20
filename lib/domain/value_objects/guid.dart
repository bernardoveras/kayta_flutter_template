import 'package:uuid/uuid.dart';

import '../validations/domain_validations.dart';

/// A value object for guid.
class Guid {
  final String value;

  Guid(this.value) {
    validate();
  }

  /// A method that generates a valid random guid.
  static Guid generate() {
    var guid = const Uuid().v4();

    return Guid(guid);
  }

  /// A method that checks if a guid is valid.
  void validate() {
    DomainValidation.notNullOrEmpty(value, 'Value');
    DomainValidation.isGuid(value, 'Value');
  }

  @override
  String toString() => value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Guid && other.value == value;
  }


  @override
  int get hashCode => value.hashCode;
}
