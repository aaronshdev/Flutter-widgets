import 'package:go_router/go_router.dart';
import 'package:fl_components/presentation/screens/home_screen.dart';
import 'package:fl_components/presentation/screens/screens.dart';

// GoRouter configuration
final routerApp = GoRouter(
  initialLocation: '/menu',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/menu',
      builder: (context, state) => const MenuListViewScreen(),
    ),
    GoRoute(
      path: '/alert',
      builder: (context, state) => const AlertScreen(),
    ),
    GoRoute(
      path: '/card',
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const Animated(),
    ),
    GoRoute(
      path: '/form',
      builder: (context, state) => const FormScreen(),
    ),
    GoRoute(
      path: '/slider',
      builder: (context, state) => const SliderScreen(),
    ),
    GoRoute(
      path: '/listviewbuilder',
      builder: (context, state) => const ListViewBuilderScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressIndicatorsScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      builder: (context, state) => const UiControls(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/counted',
      builder: (context, state) => const CountedScreen(),
    ),
    GoRoute(
      path: '/theme-changer',
      builder: (context, state) => const ThemeChangeScreen(),
    ),
  ],
);