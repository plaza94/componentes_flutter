import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pink;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario

      primaryColor: Colors.pink,

      //appbar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      scaffoldBackgroundColor: Colors.black,
      //FloatingActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),
      //ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const StadiumBorder(), elevation: 0)));

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.indigo,
      //appbar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),
      scaffoldBackgroundColor: Colors.white);
}
