import 'package:flutter/material.dart';

import 'customText.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        elevation: 0,
        leading: const BackButton(color: Colors.orange),
        leadingWidth: 50,
        backgroundColor: Colors.white,
        title: CustomText(
          title,
          fontSize: 30,
          textColor: Colors.black,
          fontweight: FontWeight.bold,
        ));
  }
}
