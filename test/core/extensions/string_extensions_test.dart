import 'package:test/test.dart';

import 'package:project_name/core/extensions/string_extensions.dart';

void main() {
  test('Deve remover todos os espaços vazios da string', () {
    const String valueWithWhitespace = '   test    with    whitespace    ';
    const String expectedResult = 'testwithwhitespace';

    var result = valueWithWhitespace.removeWhitespace();

    expect(result, expectedResult);
  });
  test('Deve retornar true caso o valor seja nulo ou vazio', () {
    final List<String?> values = ['', ' ', null, '      ', '         '];

    for (String? value in values) {
      expect(value.isNullOrEmpty(), true);
    }
  });

  test('Deve retornar false caso o valor não seja nulo ou vazio', () {
    final List<String?> values = ['a', ' a ', '  asd   ', ' _     _   '];

    for (String? value in values) {
      expect(value.isNullOrEmpty(), false);
    }
  });

  test('Deve retornar true caso o valor só contenha números', () {
    const String value = '123456';

    expect(value.isOnlyNumber(), true);
  });

  test('Deve retornar false caso o valor não contenha só números', () {
    final List<String?> values = ['a', ' 123 ', '  2   ', '', null];

    for (String? value in values) {
      expect(value.isOnlyNumber(), false);
    }
  });
}
