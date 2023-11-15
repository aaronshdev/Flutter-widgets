import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final bool isDarckMode;
  final int selectedColor;
  //static const Color primary = Colors.indigo;

  AppTheme({
    this.isDarckMode = true,
    this.selectedColor = 0,
  });

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarckMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    // colorScheme: ColorScheme.fromSeed(
    //   seedColor: colorList[selectedColor],
    //   brightness: isDarckMode ? Brightness.dark : Brightness.light
    // ),
    //primaryColor: colorList[selectedColor],
    textTheme: TextTheme(
      titleLarge: TextStyle(color: colorList[selectedColor]),
      bodySmall: TextStyle(color: colorList[selectedColor].withOpacity(0.6))),
    appBarTheme: AppBarTheme(
      // color: primary,
      elevation: 20,
      shadowColor: colorList[selectedColor],
      centerTitle: true,
      // titleTextStyle: TextStyle(fontSize: 18, color: Colors.white)
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: colorList[selectedColor])
    ),
    cardTheme: CardTheme(
      shadowColor: colorList[selectedColor].withOpacity(0.5),
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
        // borderSide: const BorderSide(color: Colors.black)
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: colorList[selectedColor])
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: colorList[selectedColor])
      )
    ),
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)))
  );
  AppTheme copyWith({
    bool? isDarckMode,
    int? selectedColor
  }) => AppTheme(
    isDarckMode: isDarckMode?? this.isDarckMode,
    selectedColor: selectedColor?? this.selectedColor
  );
  // static final ThemeData darkTheme = ThemeData.dark().copyWith(
  //     useMaterial3: true,
  //     primaryColor: Colors.black87,
  //     appBarTheme: const AppBarTheme(
  //         color: Colors.black87, elevation: 20, shadowColor: Colors.white12),
  //     scaffoldBackgroundColor: Colors.grey);
}
