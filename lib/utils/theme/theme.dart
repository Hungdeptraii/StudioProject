import 'package:flutter/material.dart';
import 'package:cmc_store/utils/theme/custom_themes/text_theme.dart';

import 'package:cmc_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:cmc_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:cmc_store/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:cmc_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:cmc_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:cmc_store/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:cmc_store/utils/theme/custom_themes/text_field.theme.dart';


class CAppTheme {
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: CTextTheme.lightTextTheme,
    chipTheme: CChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CAppBarTheme.lightAppBarTheme,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: CTextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: CTextTheme.darkTextTheme,
      chipTheme: CChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: CAppBarTheme.darkAppBarTheme,
      checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: CBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: COutlineButtonTheme.darkOutlineButtonTheme,
      inputDecorationTheme: CTextFormFieldTheme.darkInputDecorationTheme,
  );
}