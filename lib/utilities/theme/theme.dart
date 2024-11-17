import 'package:apartment_scout/utilities/theme/custom_theme/appbar_theme.dart';
import 'package:apartment_scout/utilities/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:apartment_scout/utilities/theme/custom_theme/checkbox_theme.dart';
import 'package:apartment_scout/utilities/theme/custom_theme/chip_theme.dart';
import 'package:apartment_scout/utilities/theme/custom_theme/elevated_button_theme.dart';
import 'package:apartment_scout/utilities/theme/custom_theme/outline_button_theme.dart';
import 'package:apartment_scout/utilities/theme/custom_theme/text_field_theme.dart';
import 'package:apartment_scout/utilities/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class SThemeManager {
  SThemeManager._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: STextTheme.lightTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: SAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: SBottomSheetTheme.lightBottomSheetTheme, 
    checkboxTheme: SCheckboxTheme.lightCheckboxTheme,
    chipTheme: SChipTheme.lightChipTheme,
    outlinedButtonTheme: SOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: STextFieldTheme.lightTextFieldTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'Poppins',
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: STextTheme.darkTextTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: SAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: SBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
    chipTheme: SChipTheme.darkChipTheme,
    outlinedButtonTheme: SOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: STextFieldTheme.darkTextFieldTheme,
  );
}