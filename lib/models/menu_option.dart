// import 'package:flutter/material.dart' show IconData, Widget;
import 'package:flutter/material.dart';
import 'package:fl_components/presentation/screens/home_screen.dart';
import 'package:fl_components/presentation/screens/screens.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final String subtitle;
  final Widget screen;

  const MenuOption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.subtitle, 
      required this.screen});
}

const appMenuItems = <MenuOption>[
  MenuOption(
      route: '/',
      name: 'Home screen',
      subtitle: 'Home',
      screen: HomeScreen(),
      icon: Icons.home),
  MenuOption(
      route: '/alert',
      name: 'Alert screen',
      subtitle: 'An alert card',
      screen: AlertScreen(),
      icon: Icons.warning_amber_rounded),
  MenuOption(
      route: '/card',
      name: 'Card screen',
      subtitle: 'Cards images',
      screen: CardScreen(),
      icon: Icons.cases_rounded),
  MenuOption(
      route: '/animated',
      name: 'Animated screen',
      subtitle: 'Animation',
      screen: Animated(),
      icon: Icons.category),
  MenuOption(
      route: '/form',
      name: 'Form screen',
      subtitle: 'Form with inputs',
      screen: FormScreen(),
      icon: Icons.list_alt_outlined),
  MenuOption(
      route: '/slider',
      name: 'Slider screen',
      subtitle: 'Slider and checks',
      screen: SliderScreen(),
      icon: Icons.slow_motion_video),
  MenuOption(
      route: '/listviewbuilder',
      name: 'ListView Builers screen',
      subtitle: 'Sliders images',
      screen: ListViewBuilderScreen(),
      icon: Icons.build_circle_outlined),
  MenuOption(
      route: '/buttons',
      name: 'Kinds buttons',
      subtitle: 'Types Buttons',
      screen: ButtonsScreen(),
      icon: Icons.smart_button_rounded),
  MenuOption(
      route: '/progress',
      name: 'Progress indicators',
      subtitle: 'Generals and controled',
      screen: ProgressIndicatorsScreen(),
      icon: Icons.refresh_rounded,),
  MenuOption(
      route: '/snackbars',
      name: 'Snackbars',
      subtitle: 'Snackbars screen',
      screen: SnackBarScreen(),
      icon: Icons.info_outline_rounded,),
  MenuOption(
      route: '/ui-controls',
      name: 'Ui Controls',
      subtitle: 'Uicontrols screen',
      screen: UiControls(),
      icon: Icons.no_crash_rounded,),
  MenuOption(
      route: '/onboarding',
      name: 'Onboarding',
      subtitle: 'Onboarding screen',
      screen: OnboardingScreen(),
      icon: Icons.image_aspect_ratio_rounded,),

];

