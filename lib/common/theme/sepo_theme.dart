import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SepoTheme {
  static ThemeData get light => ThemeData(
    scaffoldBackgroundColor: kColorBackground,
    fontFamily: 'SF Pro',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      border: InputBorder.none,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      unselectedItemColor: kColorNeutral50,
      selectedItemColor: kColorPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(kColorPrimaryTint1),
        minimumSize: const MaterialStatePropertyAll(
          Size.fromHeight(56),
        ),
        elevation: const MaterialStatePropertyAll(0),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        minimumSize: const MaterialStatePropertyAll(Size.fromHeight(56)),
        side: const MaterialStatePropertyAll(
          BorderSide(
            width: 2,
            color: kColorPrimary,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        ),
      ),
    ),
  );
}