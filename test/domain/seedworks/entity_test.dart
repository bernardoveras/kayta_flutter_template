import 'package:test/test.dart';

import 'package:project_name/domain/exceptions/exceptions.dart';
import 'package:project_name/domain/seedworks/seedworks.dart';
import 'package:project_name/domain/value_objects/value_objects.dart';

class ExampleTestEntity extends Entity {}

void main() {
  test('Instanciar', () {
    var entity = ExampleTestEntity();

    expect(entity.id.value.isNotEmpty, true);
  });

  test('Deve alterar o id', () {
    var entity = ExampleTestEntity();
    var newGuid = Guid.generate().toString();

    entity.changeIdentifier(newGuid);

    expect(entity.id.value.isNotEmpty, true);
    expect(entity.id.value, newGuid);
  });

  test('Deve retornar a exceção EntityValidationException ao tentar alterar o id com guid inválido', () {
    var entity = ExampleTestEntity();
    var invalidGuid = "invalid_guid";

    expect(() => entity.changeIdentifier(invalidGuid), throwsA(isA<EntityValidationException>()));
  });

  test('Deve retornar a exceção EntityValidationException ao tentar alterar o id com valor vazio', () {
    var entity = ExampleTestEntity();
    var invalidGuid = "";

    expect(() => entity.changeIdentifier(invalidGuid), throwsA(isA<EntityValidationException>()));
  });

  test('Deve gerar um novo id', () {
    var entity = ExampleTestEntity();
    var olderId = entity.id;

    entity.generateNewIdentifier();

    expect(entity.id.value.isNotEmpty, true);
    expect(entity.id != olderId, true);
  });
}
