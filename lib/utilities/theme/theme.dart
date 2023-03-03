import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AppColor.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(primary: AppColor.white),
    iconTheme: IconThemeData(color: AppColor.thirdFont),
    buttonTheme: ButtonThemeData(buttonColor: AppColor.primaryColor),
    scaffoldBackgroundColor: AppColor.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.white,
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: AppColor.white),
    ),
    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppColor.secFont),
        fillColor: MaterialStateProperty.all(AppColor.secFont)),
    toggleButtonsTheme: const ToggleButtonsThemeData(
      selectedBorderColor: Colors.transparent,
      borderColor: Colors.transparent,
    ),
  );
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.dark(primary: AppColor.primaryColor),
      iconTheme: IconThemeData(color: AppColor.primaryColor),
      buttonTheme: ButtonThemeData(buttonColor: AppColor.primaryColor),
      scaffoldBackgroundColor: AppColor.primaryColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.primaryColor,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: AppColor.primaryColor),
      ),
      checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateProperty.all(AppColor.primaryColor),
          fillColor: MaterialStateProperty.all(Color(0xebc4176a))),
      toggleButtonsTheme: const ToggleButtonsThemeData(
        selectedBorderColor: Colors.transparent,
        borderColor: Colors.transparent,
      ));
}
