import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text, {
    Key? key,
    this.fontSize,
    this.textColor,
    this.fontweight,  this.textAlign,
  }) : super(key: key);

  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontweight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontweight,
      ),
    );
  }
}
