import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        color: primary, elevation: 20, shadowColor: Colors.indigoAccent
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)
      ),
      cardTheme: CardTheme(
        shadowColor: AppTheme.primary.withOpacity(0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
      ),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          // foregroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 5
        )
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
      )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.black87,
      appBarTheme: const AppBarTheme(
          color: Colors.black87, elevation: 20, shadowColor: Colors.white12),
      scaffoldBackgroundColor: Colors.grey);
}