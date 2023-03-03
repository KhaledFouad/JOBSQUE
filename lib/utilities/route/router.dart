import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/view/screens/Apply%20Job/Apply%20Job.dart';
import 'package:my_app/view/screens/Job%20Detail/JobDetailScreen.dart';
import 'package:my_app/view/screens/barScreens/NavigationBar.dart';
import 'package:my_app/view/screens/barScreens/HomeScreen/HomeScreen.dart';
import 'package:my_app/view/screens/authScreens/ResetPassword/ResetPassword.dart';
import 'package:my_app/view/screens/authScreens/ResetPassword/ResetPassword2.dart';
import 'package:my_app/view/screens/authScreens/ResetPassword/ResetPassword3.dart';
import 'package:my_app/view/screens/authScreens/ResetPassword/ResetPassword4.dart';
import 'package:my_app/view/screens/authScreens/register/RegisterScreen2.dart';
import 'package:my_app/view/screens/authScreens/register/RegisterScreen3.dart';
import 'package:my_app/view/screens/authScreens/register/RegisterScreen4.dart';
import 'package:my_app/view/screens/barScreens/HomeScreen/SearchScreen.dart';
import 'package:my_app/view/screens/barScreens/HomeScreen/SetFilterScreen.dart';
import '../../view/screens/authScreens/login/LoginScreen.dart';
import '../../view/screens/onboarding screens/onboarding_screen.dart';
import '../../view/screens/authScreens/register/RegisterScreen.dart';
import '../../view/screens/splash/SplachScreen.dart';

Route<dynamic> onGenerate(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AppRoutes.onBoardingPageRoute:
      return MaterialPageRoute(
          builder: (_) => const OnBoardingPage(), settings: routeSettings);
    case AppRoutes.registerPageRoute:
      return MaterialPageRoute(
          builder: (_) => const RegisterScreen(), settings: routeSettings);
    case AppRoutes.registerPage2Route:
      return MaterialPageRoute(
          builder: (_) => const RegisterScreen2(), settings: routeSettings);
    case AppRoutes.registerPage3Route:
      return MaterialPageRoute(
          builder: (_) => const RegisterScreen3(), settings: routeSettings);
    case AppRoutes.registerPage4Route:
      return MaterialPageRoute(
          builder: (_) => const RegisterScreen4(), settings: routeSettings);
    case AppRoutes.resetPasswordPageRoute:
      return MaterialPageRoute(
          builder: (_) => const ResetPassword(), settings: routeSettings);
    case AppRoutes.resetPassword2PageRoute:
      return MaterialPageRoute(
          builder: (_) => const ResetPassword2(), settings: routeSettings);
    case AppRoutes.resetPassword3PageRoute:
      return MaterialPageRoute(
          builder: (_) => const ResetPassword3(), settings: routeSettings);
    case AppRoutes.resetPassword4PageRoute:
      return MaterialPageRoute(
          builder: (_) => const ResetPassword4(), settings: routeSettings);
    case AppRoutes.navigationPageRoute:
      return MaterialPageRoute(
          builder: (_) => const NavigationBarScreen(), settings: routeSettings);
    case AppRoutes.jobDetailPageRoute:
      return MaterialPageRoute(
          builder: (_) => const JobDetailScreen(
                initialIndex: 0,
              ),
          settings: routeSettings);
    case AppRoutes.applyJobPageRoute:
      return MaterialPageRoute(
          builder: (_) => const ApplyJob(), settings: routeSettings);
    case AppRoutes.homePageRoute:
      return MaterialPageRoute(
          builder: (_) => const HomeScreen(), settings: routeSettings);
    case AppRoutes.setFilterPageRoute:
      return MaterialPageRoute(
          builder: (_) => const SetFilterScreen(), settings: routeSettings);
    case AppRoutes.splashPageRoute:
    default:
      return MaterialPageRoute(
          builder: (_) => const LoginScreen(), settings: routeSettings);
  }
}
