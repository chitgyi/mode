import 'package:flutter/material.dart';
import '../constants/strings.constants.dart';
import '../constants/color.constants.dart';
import '../constants/text_style.constants.dart';

final kDarkThemeData = ThemeData(
  fontFamily: Strings.FontFamily,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.PrimaryDark,
  primaryColor: AppColors.PrimaryDark,
  accentColor: AppColors.Primary,
  primaryColorDark: AppColors.PrimaryDark,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.AccentDark,
    selectedItemColor: AppColors.Selected,
    unselectedItemColor: AppColors.UnSelected,
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
  textTheme: const TextTheme(
    headline6: TextStyles.H6,
    headline5: TextStyles.H5,
    headline4: TextStyles.H4,
    headline3: TextStyles.H3,
    headline2: TextStyles.H2,
    headline1: TextStyles.H1,
    bodyText2: TextStyles.Body2,
    bodyText1: TextStyles.Body1,
    subtitle2: TextStyles.Subtitle2,
    subtitle1: TextStyles.Subtitle1,
  ),
);
