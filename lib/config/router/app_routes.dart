import 'package:flutter/material.dart';
import 'package:fl_components/presentation/screens/screens.dart';
import 'package:fl_components/models/menu_option.dart';

class AppRoutes {
  static const initialRoute = 'menu';

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'menu': (BuildContext context) => const MenuListViewScreen()});
    for (final option in appMenuItems) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   initialRoute: (BuildContext context) => ListviewMenuScreen(),
  // };

  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
