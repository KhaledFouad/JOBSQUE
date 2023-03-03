import 'package:flutter/material.dart';
import 'package:my_app/view/widgets/default_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/route/routes.dart';
import '../../../../utilities/theme/AppColor.dart';
import '../../../widgets/customText.dart';
import '../../../widgets/default_text.dart';
import '../../../widgets/textFormFeild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool _isChecked = false;
  var visible = false;
  var valid1 = false;
  var valid2 = false;

  void _loadUserEmailPassword() async {
    print("Load Email");
    try {
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      var _email = _prefs.getString("email") ?? "";
      var _password = _prefs.getString("password") ?? "";
      var _remeberMe = _prefs.getBool("remember_me") ?? false;

      print(_remeberMe);
      print(_email);
      print(_password);
      if (_remeberMe) {
        setState(() {
          _isChecked = true;
        });
        userNameController.text = _email ?? "";
        passwordController.text = _password ?? "";
      }
    } catch (e) {
      print(e);
    }
  }

  // void _handleRemeberme(bool value) {
  //   _isChecked = value;
  //   SharedPreferences.getInstance().then(
  //     (prefs) {
  //       prefs.setBool("remember_me", value);
  //       prefs.setString('Username', userNameController.text);
  //       prefs.setString('Password', passwordController.text);
  //     },
  //   );
  //   setState(() {
  //     _isChecked = value;
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadUserEmailPassword();

    userNameController.addListener(() {
      setState(() {
        valid1 = userNameController.text.isNotEmpty;
      });
    });

    passwordController.addListener(() {
      if (passwordController.text.length >= 8) {
        setState(() {
          valid2 = passwordController.text.isNotEmpty;
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
    userNameController.dispose();
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const CustomText("Login",
                fontSize: 28, fontweight: FontWeight.w500),
            const SizedBox(height: 8),
            Text(
              "Please login to find your dream job",
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
                      height: MediaQuery.of(context).size.height * 0.0015,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: AppColor.primaryColor,
                          value: _isChecked,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          onChanged: (value) {
                            _isChecked = value!;
                            SharedPreferences.getInstance().then(
                              (prefs) {
                                prefs.setBool("remember_me", value);
                                prefs.setString(
                                    'Username', userNameController.text);
                                prefs.setString(
                                    'Password', passwordController.text);
                              },
                            );
                            setState(() {
                              _isChecked = value;
                            });
                          },
                          //_handleRemeberme,
                        ),
                        CustomText("Remember me",
                            fontSize: 14, textColor: AppColor.balck2),
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(
                              context, AppRoutes.resetPasswordPageRoute),
                          child: CustomText(
                            "Forgot Password?",
                            fontSize: 14,
                            textColor: AppColor.primaryColor,
                            fontweight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 190),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultText(
                  text: "Dont’t have an account?",
                  fontSize: 14,
                  color: AppColor.thirdFont,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(width: 6),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.registerPageRoute);
                  },
                  child: DefaultText(
                    text: "Register",
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
                valid1 & valid2 == false
                    ? () => null
                    : Navigator.pushNamed(context, AppRoutes.homePageRoute);
              },
              text: "Login",
              textColor:
                  valid1 & valid2 == false ? AppColor.secFont : AppColor.white,
              fontSize: 16,
              radius: 1000,
              background: valid1 & valid2 == false
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
