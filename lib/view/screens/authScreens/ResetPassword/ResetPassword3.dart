import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/default_button.dart';
import 'package:my_app/view/widgets/textFormFeild.dart';
import 'package:sizer/sizer.dart';

import '../../../../utilities/route/routes.dart';
import '../../../widgets/customText.dart';

class ResetPassword3 extends StatefulWidget {
  const ResetPassword3({Key? key}) : super(key: key);

  @override
  _ResetPassword3State createState() => _ResetPassword3State();
}

class _ResetPassword3State extends State<ResetPassword3> {
  var formkey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  var visible = false;
  var visible2 = false;
  var valid1 = false;
  var valid2 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController.addListener(() {
      if (passwordController.text.length >= 8) {
        setState(() {
          valid1 = passwordController.text.isNotEmpty;
        });
      } else {
        setState(() {
          valid1 = false;
        });
      }
    });
    passwordController2.addListener(() {
      if (passwordController2.text.length >= 8) {
        setState(() {
          valid2 = passwordController2.text.isNotEmpty;
        });
      } else {
        setState(() {
          valid2 = false;
        });
      }
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    passwordController2.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Image.asset(
              "assets/Logo.png",
              width: 25.w,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
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
        child: ListView(
          children: [
            SizedBox(
              height: 3.h,
            ),
            const CustomText("Reset Password",
                fontSize: 28, fontweight: FontWeight.w500),
            SizedBox(height: 1.h),
            CustomText(
                "Enter the email address you used when you joined and we’ll send you instructions to reset your password.",
                fontSize: 15,
                fontweight: FontWeight.w400,
                textColor: AppColor.secFont),
            Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  DefaultFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    obscureText: visible == false ? true : false,
                    hintText: "Enter new password",
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      size: 30,
                      color: AppColor.thirdFont,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        visible = !visible;
                        setState(() {});
                      },
                      child: Icon(
                        visible == false
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 30,
                        color: AppColor.thirdFont,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter password";
                      }
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      "Password must be at least 8 characters",
                      fontSize: 14,
                      textColor:
                          valid1 ? AppColor.successColor : AppColor.thirdFont,
                      fontweight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  DefaultFormField(
                    controller: passwordController2,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    obscureText: visible2 == false ? true : false,
                    hintText: "Confirm new password",
                    prefixIcon: Icon(
                      Icons.lock_outline_rounded,
                      size: 30,
                      color: AppColor.thirdFont,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        visible2 = !visible2;
                        setState(() {});
                      },
                      child: Icon(
                        visible == false
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 30,
                        color: AppColor.thirdFont,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter password";
                      }
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      "Both password must match",
                      fontSize: 14,
                      textColor:
                          valid2 ? AppColor.successColor : AppColor.thirdFont,
                      fontweight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  DefaultMaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.resetPassword4PageRoute);
                    },
                    text: "Reset password",
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
          ],
        ),
      ),
    );
  }
}
