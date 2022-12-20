import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../presentation/home/home.dart';

/// A utility class that holds screen names for named navigation.
///
/// This class has no constructor and all methods and variables are `static`.
class Routes {
  const Routes._();

  static final GlobalKey<NavigatorState> navigatorKey = Get.key;

  static const String initialRoute =home;
  static const String home = '/home';

  static List<GetPage> get routes => [
        GetPage(
          name: home,
          binding: HomeBinding(),
          page: () => const HomeView(),
        ),
      ];
}
