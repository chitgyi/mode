import 'package:flutter/material.dart';

final kDartTheme = ThemeData(
  backgroundColor: Colors.black,
  brightness: Brightness.dark,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.lightBlueAccent,
    unselectedItemColor: Colors.white54,
    type: BottomNavigationBarType.shifting,
  ),
  primaryColor: Colors.black,
  accentColor: Colors.lightBlueAccent,
);

final kDefaultTheme = ThemeData(
  backgroundColor: Colors.white,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.lightBlueAccent,
    unselectedItemColor: Colors.black54,
    type: BottomNavigationBarType.shifting,
  ),
  primaryColor: Colors.white,
  accentColor: Colors.lightBlueAccent,
);
