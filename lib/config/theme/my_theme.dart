import 'package:flutter/material.dart';
import 'package:islamy_training/core/colors_manger.dart';

class MyTheme {
  static bool isLight = false;
  static ThemeData light = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: ColorsManger.blackColor,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w800,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      displayMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: ColorsManger.blackColor),
    ),
    dividerColor: ColorsManger.goldColor,
    dividerTheme: const DividerThemeData(
      color: ColorsManger.goldColor,
      thickness: 3,
    ),
    scaffoldBackgroundColor: ColorsManger.transparentColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedLabelStyle: TextStyle(fontSize: 16),
      backgroundColor: ColorsManger.goldColor,
      selectedItemColor: ColorsManger.blackColor,
      selectedIconTheme: IconThemeData(
        size: 35,
      ),
      unselectedItemColor: ColorsManger.whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    cardTheme: CardTheme(
      color: ColorsManger.goldColor,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
    ),
    indicatorColor: ColorsManger.goldColor,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManger.goldColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
    ),
    iconTheme: const IconThemeData(
      color: ColorsManger.whiteColor,
    ),
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
            iconColor: WidgetStatePropertyAll(ColorsManger.blackColor))),
  );
  static ThemeData dark = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        color: ColorsManger.whiteColor,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: ColorsManger.subMainDark),
      titleMedium: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: ColorsManger.whiteColor),
      labelMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: ColorsManger.whiteColor),
      displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: ColorsManger.subMainDark),
      headlineMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: ColorsManger.subMainDark),
    ),
    dividerColor: ColorsManger.subMainDark,
    dividerTheme:
        const DividerThemeData(color: ColorsManger.subMainDark, thickness: 3),
    scaffoldBackgroundColor: ColorsManger.transparentColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      selectedLabelStyle: TextStyle(fontSize: 16),
      backgroundColor: ColorsManger.mainDark,
      selectedItemColor: ColorsManger.subMainDark,
      selectedIconTheme: IconThemeData(
        size: 35,
      ),
      unselectedItemColor: ColorsManger.whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: false,
    ),
    cardTheme: CardTheme(
      color: ColorsManger.mainDark,
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
    ),
    indicatorColor: ColorsManger.mainDark,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManger.mainDark,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
    ),
    iconTheme: const IconThemeData(
      color: ColorsManger.subMainDark,
    ),
    iconButtonTheme: const IconButtonThemeData(
        style: ButtonStyle(
            iconColor: WidgetStatePropertyAll(ColorsManger.subMainDark))),
  );
}
