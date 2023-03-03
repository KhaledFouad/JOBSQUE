import 'package:flutter/material.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:sizer/sizer.dart';

import '../../../../utilities/route/routes.dart';
import '../../../../utilities/theme/AppColor.dart';
import '../../../widgets/default_button.dart';

class RegisterScreen4 extends StatefulWidget {
  const RegisterScreen4({Key? key}) : super(key: key);

  @override
  _RegisterScreen4State createState() => _RegisterScreen4State();
}

class _RegisterScreen4State extends State<RegisterScreen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.registerPage3Route);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image.asset(
                "assets/Success Account Ilustration.png",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0001,
              ),
              CustomText(
                "Your account has been set up!",
                fontSize: 24,
                fontweight: FontWeight.w500,
                textColor: AppColor.balck2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              CustomText(
                "We have customized feeds according to your preferences",
                fontSize: 14,
                fontweight: FontWeight.w400,
                textColor: AppColor.secFont,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              DefaultMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.homePageRoute);
                },
                text: "Get Started",
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
      ),
    );
  }
}
