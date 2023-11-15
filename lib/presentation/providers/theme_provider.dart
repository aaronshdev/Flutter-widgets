import 'package:fl_components/config/themes/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final isDarkThemeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);
//Listado de colores inmutables

final colorListProvider = Provider((ref) => colorList);

