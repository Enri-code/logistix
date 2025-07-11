import 'package:flutter/material.dart';
import 'package:logistix/core/theme/colors.dart';
import 'package:logistix/core/theme/styling.dart';

class MyTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primarySwatch: AppColors.orange,
    scaffoldBackgroundColor: AppColors.grey100,
    appBarTheme: const AppBarTheme(
      surfaceTintColor: AppColors.grey100,
      color: AppColors.grey100,
      centerTitle: false,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.orange,
      secondary: AppColors.blueGrey,
      tertiary: AppColors.redAccent,
      surface: Colors.white,
      onPrimary: AppColors.grey900,
      onSecondary: AppColors.grey900,
      onSurface: AppColors.grey900,
      primaryContainer: AppColors.blueGrey,
    ),
    cardTheme: const CardThemeData(
      margin: EdgeInsets.zero,
      shape: roundRectBorder16,
      shadowColor: Colors.black54,
    ),
    tabBarTheme: const TabBarThemeData(
      labelStyle: TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
      dividerHeight: 0,
    ),
    dividerTheme: const DividerThemeData(color: AppColors.grey200),
    chipTheme: const ChipThemeData(
      side: BorderSide.none,
      padding: EdgeInsets.zero,
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    fontFamily: 'Inter',
    textTheme: const TextTheme().apply(
      bodyColor: Colors.black87,
      displayColor: Colors.black.withAlpha(200),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      prefixIconColor: AppColors.blueGreyMaterial,
      hintStyle: TextStyle(color: Colors.grey),
      contentPadding: padding_H16_V8,
      enabledBorder: OutlineInputBorder(
        borderRadius: borderRadius_12,
        borderSide: BorderSide(color: Color(0xFFE0E0E0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius_12,
        borderSide: BorderSide(color: AppColors.orange),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFD50000), width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: borderRadius_12,
        borderSide: BorderSide(color: Color(0xFFD50000), width: 1.5),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: roundRectBorder8,
        padding: padding_H16_V12,
        backgroundColor: AppColors.blueGrey,
        foregroundColor: Colors.white,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFF9E9E9E)),
        foregroundColor: AppColors.blueGrey,
        padding: padding_H16_V12,
        shape: roundRectBorder8,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: padding_H16_V12,
        textStyle: const TextStyle(fontSize: 15),
        shape: roundRectBorder8,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      elevation: 4,
      backgroundColor: Colors.white,
      shadowColor: Colors.black12,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.orange,
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primarySwatch: AppColors.orange,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.orange,
      secondary: AppColors.blueGrey,
      tertiary: AppColors.redAccent,
      surface: Colors.black,
      onPrimary: AppColors.grey100,
      onSecondary: AppColors.grey200,
      onSurface: AppColors.grey200,
      primaryContainer: Colors.blueGrey,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.grey900,
      hintStyle: TextStyle(color: AppColors.grey700),
      prefixIconColor: Color(0xFFB0BEC5),
      contentPadding: padding_H16_V8,
      enabledBorder: OutlineInputBorder(
        borderRadius: borderRadius_12,
        borderSide: BorderSide(color: AppColors.grey800),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius_12,
        borderSide: BorderSide(color: AppColors.orange),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFD50000), width: 1),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: borderRadius_12,
        borderSide: BorderSide(color: Color(0xFFD50000), width: 1.5),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: roundRectBorder8,
        foregroundColor: AppColors.grey100,
        backgroundColor: AppColors.blueGreyMaterial[900],
        padding: padding_H16_V12,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: AppColors.grey800),
        shape: roundRectBorder8,
        padding: padding_H16_V12,
        foregroundColor: AppColors.grey100,
      ),
    ),
    dividerTheme: const DividerThemeData(color: AppColors.grey800),
    chipTheme: const ChipThemeData(
      side: BorderSide.none,
      padding: EdgeInsets.zero,
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    cardTheme: const CardThemeData(
      margin: EdgeInsets.zero,
      color: AppColors.grey900,
      shadowColor: AppColors.grey100,
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      surfaceTintColor: Colors.black,
      centerTitle: false,
    ),
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      elevation: 4,
      backgroundColor: Colors.black,
      shadowColor: Colors.black54,
    ),
    fontFamily: 'Inter',
    textTheme: const TextTheme().apply(
      bodyColor: AppColors.grey200,
      displayColor: AppColors.grey200,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        // foregroundColor: AppColors.orange,
        textStyle: const TextStyle(fontSize: 15),
        padding: padding_H16_V12,
        shape: roundRectBorder8,
      ),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.orange,
    ),
  );
}
