import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class AppColor {
  static Color black = Colors.black;
  static Color balck2 = const Color(0xff111827);
  static Color white = Colors.white;
  static Color white2 = const Color(0xffFAFAFA);

  // static Color splashColor1 = Color(0xFfF9FBFF);
  // static Color splashColor2 = Color(0xFfF4F8FF);
  // static Color splashColor3 = Color(0xffF0F5FF);
  // static Color splashColor4 = Color(0xFfE8F0FF);
  static Color secFont = const Color(0xff6B7280);
  static Color thirdFont = const Color(0xff9CA3AF);
  static Color forthFont = const Color(0xff374151);
  static Color buttonColor = const Color(0xffD1D5DB);
  static Color buttonColor2 = const Color(0xffF4F4F5);

  static Color primaryColor = const Color(0xff3366FF);
  static Color primaryColor2 = const Color(0xffADC8FF);
  static Color primaryColor3 = const Color(0xff02337A);
  static Color cardColor = const Color(0xff091A7A);
  static Color baleBlueColor = const Color(0xff2B3A8D);
  static Color baleBlueColor2 = const Color(0xffD6E4FF);

  static Color successColor = const Color(0xff60C631);
  static Color errorColor = const Color(0xffFF472B);
  static Color yellowColor = const Color(0xffDBB40E);
}
