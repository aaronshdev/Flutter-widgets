import 'package:fl_components/config/themes/app_theme.dart';
import 'package:flutter/material.dart';
//import 'package:fl_components/config/router/app_routes.dart';
import 'package:fl_components/presentation/providers/theme_provider.dart';
import 'package:fl_components/config/router/go_router_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final darkMode = ref.watch(isDarkThemeProvider);
    final isSelectedColor = ref.watch(selectedColorProvider);
    // Se  modifica MaterialApp para usar go_router
    //para regresar al estado anterior se quita el .router y se descomentan las demas lineas
    return MaterialApp.router(
      routerConfig: routerApp,
      debugShowCheckedModeBanner: false,
      title: 'Windgets App',
      //initialRoute: AppRoutes.initialRoute,
      // routes: AppRoutes.getAppRoutes(),
      // onGenerateRoute: AppRoutes.onGeneratedRoute,
      //(settings) =>  AppRoutes.onGeneratedRoute(settings),
      theme: AppTheme(isDarckMode: darkMode, selectedColor: isSelectedColor).getTheme(),
    );
  }
}
