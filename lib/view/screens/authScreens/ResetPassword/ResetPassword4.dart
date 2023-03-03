import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_button.dart';

import '../../../../utilities/theme/AppColor.dart';

class ResetPassword4 extends StatefulWidget {
  const ResetPassword4({Key? key}) : super(key: key);

  @override
  _ResetPassword4State createState() => _ResetPassword4State();
}

class _ResetPassword4State extends State<ResetPassword4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Image.asset(
              "assets/Password Succesfully Ilustration.png",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0001,
            ),
            Center(
              child: CustomText(
                "Check your Email",
                fontSize: 24,
                fontweight: FontWeight.w500,
                textColor: AppColor.balck2,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Center(
              child: CustomText(
                "Your password has been changed successfully, we will let you know if there are more problems with your account",
                fontSize: 16,
                fontweight: FontWeight.w400,
                textColor: AppColor.secFont,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.20,
            ),
            DefaultMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.resetPassword3PageRoute);
              },
              text: "Open email app",
              textColor: AppColor.white,
              fontSize: 16,
              radius: 1000,
              background: AppColor.primaryColor,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.030,
            ),
          ],
        ),
      ),
    );
  }
}
