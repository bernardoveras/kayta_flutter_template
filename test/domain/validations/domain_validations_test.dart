import 'dart:math';

import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'package:project_name/domain/exceptions/exceptions.dart';
import 'package:project_name/domain/validations/validations.dart';

void main() {
  String generateRandomString(int length) {
    final random = Random();
    const availableChars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final randomString = List.generate(length, (index) => availableChars[random.nextInt(availableChars.length)]).join();

    return randomString;
  }

  test('[DomainValidation.notNull] - Deve retornar a exceção EntityValidationException caso for nulo', () {
    const String? value = null;

    expect(() => DomainValidation.notNull(value, 'fieldName'), throwsA(isA<EntityValidationException>()));
  });

  test('[DomainValidation.notNull] - Deve passar caso não for nulo', () {
    const String value = 'teste';

    DomainValidation.notNull(value, 'fieldName');

    expect(1, 1);
  });

  test('[DomainValidation.notNullOrEmpty] - Deve retornar a exceção EntityValidationException caso for nulo', () {
    const String? value = null;

    expect(() => DomainValidation.notNullOrEmpty(value, 'fieldName'), throwsA(isA<EntityValidationException>()));
  });

  test('[DomainValidation.notNullOrEmpty] - Deve retornar a exceção EntityValidationException caso for vazio', () {
    const String value = '';

    expect(() => DomainValidation.notNullOrEmpty(value, 'fieldName'), throwsA(isA<EntityValidationException>()));
  });

  test('[DomainValidation.notNullOrEmpty] - Deve passar caso não for nulo ou vazio', () {
    const String value = 'teste';

    DomainValidation.notNullOrEmpty(value, 'fieldName');

    expect(1, 1);
  });

  test('[DomainValidation.minLength] - Deve retornar a exceção EntityValidationException caso for menor que o minimo permitido', () {
    final int minLength = Random().nextInt(100);
    final String value = generateRandomString(minLength - 1);

    expect(() => DomainValidation.minLength(value, minLength, 'fieldName'), throwsA(isA<EntityValidationException>()));
  });

  test('[DomainValidation.minLength] - Deve passar caso não for menor que o minimo permitido', () {
    final int minLength = Random().nextInt(100);
    final String value = generateRandomString(minLength + 1);

    DomainValidation.minLength(value, minLength, 'fieldName');

    expect(1, 1);
  });

  test('[DomainValidation.maxLength] - Deve retornar a exceção EntityValidationException caso for maior que o máximo permitido', () {
    final int maxLength = Random().nextInt(100);
    final String value = generateRandomString(maxLength + 1);

    expect(() => DomainValidation.maxLength(value, maxLength, 'fieldName'), throwsA(isA<EntityValidationException>()));
  });

  test('[DomainValidation.maxLength] - Deve passar caso não for maior que o máximo permitido', () {
    final int maxLength = Random().nextInt(100);
    final String value = generateRandomString(maxLength - 1);

    DomainValidation.maxLength(value, maxLength, 'fieldName');

    expect(1, 1);
  });

  test('[DomainValidation.isGuid] - Deve retornar a exceção EntityValidationException caso for uma guid inválida', () {
    const String invalidGuid = 'invalid_guid';

    expect(() => DomainValidation.isGuid(invalidGuid, 'fieldName'), throwsA(isA<EntityValidationException>()));
  });

  test('[DomainValidation.isGuid] - Deve passar caso for uma guid válida', () {
    final String validGuid = const Uuid().v4();

    DomainValidation.isGuid(validGuid, 'fieldName');

    expect(1, 1);
  });
}
