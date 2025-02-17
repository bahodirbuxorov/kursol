import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // **Light Theme**
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundBlue,
    cardColor: AppColors.lightCardBackground,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.lightText, fontFamily: 'Urbanist'),
      bodyMedium: TextStyle(color: AppColors.lightText, fontFamily: 'Urbanist'),
      bodySmall: TextStyle(color: AppColors.gray700, fontFamily: 'Urbanist'),
    ),
    iconTheme: const IconThemeData(color: AppColors.gray800),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(color: AppColors.lightText, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Urbanist'),
      iconTheme: IconThemeData(color: AppColors.gray900),
    ),
  );

  // **Dark Theme**
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.dark1,
    cardColor: AppColors.darkCardBackground,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.darkText, fontFamily: 'Urbanist'),
      bodyMedium: TextStyle(color: AppColors.darkText, fontFamily: 'Urbanist'),
      bodySmall: TextStyle(color: AppColors.gray500, fontFamily: 'Urbanist'),
    ),
    iconTheme: const IconThemeData(color: AppColors.gray300),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.dark2,
      elevation: 0,
      titleTextStyle: TextStyle(color: AppColors.darkText, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Urbanist'),
      iconTheme: IconThemeData(color: AppColors.gray300),
    ),
  );
}
