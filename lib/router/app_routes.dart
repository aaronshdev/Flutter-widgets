import 'package:fl_components/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/models/models.dart';

class AppRoutes {
  static const initialRoute = 'menu';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home screen',
        screen: HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'alert',
        name: 'Alert screen',
        screen: const AlertScreen(),
        icon: Icons.warning_amber_rounded),
    MenuOption(
        route: 'card',
        name: 'Card screen',
        screen: const CardScreen(),
        icon: Icons.cases_rounded),
    MenuOption(
        route: 'animated',
        name: 'Animated screen',
        screen: const Animated(),
        icon: Icons.category),    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'menu': (BuildContext context) => ListviewMenuScreen()});
    for (final option in menuOptions) {
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
