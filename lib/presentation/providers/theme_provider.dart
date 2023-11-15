import 'package:fl_components/config/themes/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkThemeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);
//Listado de colores inmutables

final colorListProvider = Provider((ref) => colorList);

//Un objeto de tipo AppTheme (custom)

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//Controler o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //El state es Estado = New AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarckMode: !state.isDarckMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
