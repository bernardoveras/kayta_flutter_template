import 'package:flutter/foundation.dart';

import 'exceptions/initialization_exception.dart';

class Initializer {
  const Initializer._();

  /// Function executed before initializing the application.
  /// 
  /// She is responsible for starting services, functions and other things that are recommended to be started before opening the application.
  static void init() {
    try {
      //
    } catch (e) {
      debugPrint(e.toString());
      throw InitializationException("Ocorreu um erro na inicialização do aplicativo.", e);
    }
  }
}