import 'package:flutter/material.dart';

import 'app_bootstrapper.dart';
import 'presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppBootstrapper.init(
    mainAppWidget: const App(),
    runApp: runApp,
  );
}
