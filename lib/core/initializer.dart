import 'package:flutter/foundation.dart';

import 'exceptions/initialization_exception.dart';

class Initializer {
  const Initializer._();

  /// Função executada antes de inicializar o aplicativo.
  static void init() {
    try {
      //
    } catch (e) {
      debugPrint(e.toString());
      throw InitializationException("Ocorreu um erro na inicialização do aplicativo.", e);
    }
  }
}