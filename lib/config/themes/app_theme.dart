import 'package:flutter/material.dart';

class AppTheme {
    static const Color primary = Colors.indigo;

    static final ThemeData lightTheme = ThemeData.light().copyWith(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        // color: primary, 
        elevation: 20,
        // shadowColor: Colors.indigoAccent,
        centerTitle: true,
        // titleTextStyle: TextStyle(fontSize: 18, color: Colors.white)
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)
      ),
      cardTheme: CardTheme(
        shadowColor: AppTheme.primary.withOpacity(0.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
      ),
      // floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: primary),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //         textStyle: const TextStyle(fontSize: 20),
        //         backgroundColor: primary,
        //         minimumSize: const Size(double.infinity, 50.0),
        //         // foregroundColor: primary,
        //         shape: const StadiumBorder(),
        //         elevation: 5)),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15), 
        borderSide: const BorderSide(color: Colors.black)
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15), 
        borderSide: const BorderSide(color: primary)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15), 
        borderSide: const BorderSide(color: primary)
      )  
    ), 

    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
    )
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    primaryColor: Colors.black87,
    appBarTheme: const AppBarTheme(
      color: Colors.black87, elevation: 20, shadowColor: Colors.white12
    ),
    scaffoldBackgroundColor: Colors.grey
  );
}
