import 'package:flutter/material.dart';

class ApplicatonTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFF1A1A1A),
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFFBB3B),
        size: 30,
      ),
      selectedItemColor: Color(0xFFFFBB3B),
      unselectedIconTheme: IconThemeData(
        color: Color(0xFFB5B4B4),
        size: 30,
      ),
      unselectedItemColor: Color(0xFFB5B4B4),
    ),
  );
}