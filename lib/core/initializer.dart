import 'package:flutter/foundation.dart';

import 'exceptions/exceptions.dart';

class Initializer {
  const Initializer._();

  static void init() {
    try {
      //
    } catch (e) {
      debugPrint(e.toString());
      throw InitializationException("Ocorreu um erro na inicialização do aplicativo.", e);
    }
  }
}
