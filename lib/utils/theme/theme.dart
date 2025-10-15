import 'package:flutter/material.dart';
import 'package:ibb_store/utils/theme/custome_themes/appbar_theme.dart';
import 'package:ibb_store/utils/theme/custome_themes/bottom_sheet_theme.dart';
import 'package:ibb_store/utils/theme/custome_themes/checkbox_theme.dart';
import 'package:ibb_store/utils/theme/custome_themes/chip_theme.dart';
import 'package:ibb_store/utils/theme/custome_themes/elevated_button_theme.dart';
import 'package:ibb_store/utils/theme/custome_themes/outlined_button_theme.dart';
import 'package:ibb_store/utils/theme/custome_themes/text_field_theme.dart';
import 'package:ibb_store/utils/theme/custome_themes/text_theme.dart';




class TAppTheme {
  TAppTheme._();

  /// -- Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TtextTtheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  ); // ThemeData

  /// -- Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: TtextTtheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  ); // ThemeData
}