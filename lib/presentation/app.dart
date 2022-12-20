import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/routes/routes.dart';
import '../core/theming/app_colors.dart';
import '../core/theming/app_themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      color: AppColors.primaryColor,
      theme: AppThemes.mainTheme,
      navigatorKey: Routes.navigatorKey,
      getPages: Routes.routes,
      initialRoute: Routes.initialRoute,
      locale: const Locale('pt', 'BR'),
    );
  }
}
