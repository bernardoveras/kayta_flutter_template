import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'package:project_name/domain/exceptions/entity_validation_exception.dart';
import 'package:project_name/domain/validations/guid_validator.dart';
import 'package:project_name/domain/value_objects/guid.dart';

void main() {
  test('Instanciar', () {
    final generatedGuid = const Uuid().v4();

    final guid = Guid(generatedGuid);

    expect(guid.value, generatedGuid);
    expect(guid.toString(), generatedGuid);
  });

  test('Deve retornar um erro ao tentar instanciar com guid inválido', () {
    const invalidGuid = "invalid_guid";

    expect(() => Guid(invalidGuid), throwsA(isA<EntityValidationException>()));
  });

  test('Deve retornar um erro ao tentar instanciar com guid vazio', () {
    const invalidGuid = "";

    expect(() => Guid(invalidGuid), throwsA(isA<EntityValidationException>()));
  });

  test('O método toString deve ser igual ao value', () {
    final generatedGuid = const Uuid().v4();

    final guid = Guid(generatedGuid);

    expect(guid.value, guid.toString());
  });

  test('O operador de igualdade deve retornar true caso for igual', () {
    final generatedGuid = const Uuid().v4();

    var guid = Guid(generatedGuid);
    var otherGuid = Guid(generatedGuid);

    expect(guid, otherGuid);
  });

  test('Deve gerar um guid válido e não estourar exceção', () {
    final guid = Guid.generate();

    expect(GuidValidator.isValid(guid.toString()), true);
  });
}
