import 'package:flutter/material.dart';

class Themes {
  final ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 31, 31, 31),
    listTileTheme: ListTileThemeData(
      iconColor: Colors.white10,
      textColor: Colors.white,
    ),
    primarySwatch: Colors.yellow,
    primaryColor: Colors.yellow.shade800,
    dividerColor: Colors.white24,
    tabBarTheme: TabBarThemeData(indicatorColor: Colors.yellow.shade800),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.yellow.shade800,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      labelSmall: TextStyle(color: Colors.white54, fontWeight: FontWeight.w500),
    ),
  );
}
