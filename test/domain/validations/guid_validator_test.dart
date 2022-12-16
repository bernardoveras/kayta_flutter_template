import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'package:project_name/domain/validations/guid_validator.dart';

void main() {
  test('Deve retornar true caso o guid for válido.', () async {
    final guid = const Uuid().v4();

    expect(GuidValidator.isValid(guid), true);
  });

  test('Deve retornar false caso o guid for inválido.', () async {
    const invalidGuid = "invalid_guid";

    expect(GuidValidator.isValid(invalidGuid), false);
  });
}
