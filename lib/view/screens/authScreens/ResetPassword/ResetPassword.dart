import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/textFormFeild.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/route/routes.dart';
import '../../../widgets/default_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
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
                    controller: emailController,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    hintText: "Enter your email....",
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 30,
                      color: AppColor.thirdFont,
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.5, vertical: 12.5),
                    child: Row(
                      children: [
                        CustomText(
                          "You remember your password",
                          fontSize: 15,
                          fontweight: FontWeight.w400,
                          textColor: AppColor.secFont,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.loginPageRoute);
                          },
                          child: CustomText(
                            "login",
                            fontSize: 15,
                            textColor: AppColor.primaryColor,
                            fontweight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DefaultMaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.resetPassword2PageRoute);
              },
              text: "Request password reset",
              textColor: AppColor.white,
              fontSize: 16,
              radius: 1000,
              background: AppColor.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
