// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/theme/AppColor.dart';
import '../../../widgets/customText.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/default_text.dart';
import '../../../widgets/textFormFeild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var visible = false;
  var length = false;
  var valid1 = false;
  var valid2 = false;
  var valid3 = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userNameController.addListener(() {
      setState(() {
        valid1 = userNameController.text.isNotEmpty;
      });
    });
    emailController.addListener(() {
      setState(() {
        valid2 = emailController.text.isNotEmpty;
      });
    });
    passwordController.addListener(() {
      if (passwordController.text.length >= 8) {
        setState(() {
          valid3 = passwordController.text.isNotEmpty;
        });
      } else {
        setState(() {
          valid3 = false;
        });
      }
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userNameController.dispose();
    emailController.dispose();
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
              Navigator.pushNamed(context, AppRoutes.loginPageRoute);
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
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const CustomText("Create Account",
                fontSize: 28, fontweight: FontWeight.w500),
            const SizedBox(height: 8),
            Text(
              "Please create an account to find your dream job",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColor.secFont),
            ),
            const SizedBox(height: 44),
            Form(
              key: formkey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultFormField(
                      controller: userNameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      hintText: "Username",
                      prefixIcon: Icon(
                        Icons.person_outline_rounded,
                        size: 30,
                        color: AppColor.thirdFont,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    DefaultFormField(
                      controller: emailController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 30,
                        color: AppColor.thirdFont,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    DefaultFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.next,
                      maxLines: 1,
                      obscureText: visible == false ? true : false,
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        size: 30,
                        color: AppColor.thirdFont,
                      ),
                      // onChanged: (p0) {
                      //   setState(() {
                      //     valid3 = false;
                      //   });
                      // },
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
                          // setState(() {});
                          return "please enter password";
                        }
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    CustomText(
                      "Password must be at least 8 characters",
                      fontSize: 14,
                      textColor:
                          valid3 ? AppColor.successColor : AppColor.thirdFont,
                      fontweight: FontWeight.w400,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 105),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultText(
                  text: "Already have an account?",
                  fontSize: 14,
                  color: AppColor.thirdFont,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(width: 6),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.loginPageRoute);
                  },
                  child: DefaultText(
                    text: "login",
                    fontSize: 14,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            DefaultMaterialButton(
              onPressed: () {
                valid1 & valid2 & valid3 == false
                    ? () => null
                    : Navigator.pushNamed(context, AppRoutes.homePageRoute);
                // if (formkey.currentState!.validate()) {
                //   // MyCache.putString(
                //   //     key: MyCacheKey.email, value: emailController.text);
                //   // MyCache.putString(
                //   //     key: MyCacheKey.password, value: passwordController.text);
                // }
              },
              text: "Create account",
              textColor: valid1 & valid2 & valid3 == false
                  ? AppColor.secFont
                  : AppColor.white,
              fontSize: 16,
              radius: 1000,
              background: valid1 & valid2 & valid3 == false
                  ? AppColor.buttonColor
                  : AppColor.primaryColor,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    color: AppColor.buttonColor,
                    thickness: 1,
                    endIndent: 5,
                  ),
                ),
                const SizedBox(width: 25),
                DefaultText(
                  text: "Or Sign up With Account",
                  fontSize: 14,
                  color: AppColor.secFont,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(width: 25),
                Expanded(
                  child: Divider(
                    color: AppColor.buttonColor,
                    thickness: 1,
                    indent: 5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    "assets/Button1.png",
                    width: 40.w,
                  ),
                ),
                const SizedBox(width: 18),
                Expanded(
                  child: Image.asset(
                    "assets/Button.png",
                    width: 40.w,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
