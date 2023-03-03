import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_app/view/screens/onboarding%20screens/onboarding_screen.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/theme/AppColor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer(
    //     const Duration(seconds: 3),
    //     () => Navigator.pushReplacement(context,
    //         MaterialPageRoute(builder: (context) => const OnBoardingPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/Ellipse 817.png",
             width: 100.w,
             height: 100.h,
          ),
          Image.asset(
            "assets/Ellipse 816.png",
            width: 100.w,
            height: 100.h,
          ),
          Image.asset(
            "assets/Ellipse 815.png",
             width: 100.w,
             height: 100.h,
          ),
          Image.asset(
            "assets/Ellipse 814.png",
             width: 100.w,
             height: 100.h,
          ),
          Center(
            child: Image.asset(
              "assets/splashLogo.png",
              width: 50.w,
              height: 50.h,
            ),
          ),
        ],
      ),
    );
  }
}
