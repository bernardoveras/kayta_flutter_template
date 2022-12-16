import 'package:project_name/domain/validations/domain_validations.dart';
import 'package:uuid/uuid.dart';


class Guid {
  final String value;

  Guid(this.value) {
    validate();
  }

  static Guid generate() {
    var guid = const Uuid().v4();

    return Guid(guid);
  }

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
