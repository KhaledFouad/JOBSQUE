import 'package:flutter/material.dart';
// import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:sizer/sizer.dart';

import '../../../utilities/theme/AppColor.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _pageController = PageController();
  // final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   actions: [
        //     Image.asset(
        //       "assets/splashLogo.png",
        //       width: 40,
        //       height: 40,
        //     ),
        //   ],
        // ),
        //     backgroundColor: AppColor.white,
        //     body: OnBoard(
        //       pageController: _pageController,
        //       // Either Provide onSkip Callback or skipButton Widget to handle skip state
        //       onSkip: () {
        //         // print('skipped');
        //       },
        //       // Either Provide onDone Callback or nextButton Widget to handle done state
        //       onDone: () {
        //         Navigator.pushNamed(context, AppRoutes.homePageRoute);
        //       },
        //       onBoardData: onBoardData,
        //       titleStyles: TextStyle(
        //         color: AppColor.balck2,
        //         fontSize: 32,
        //         fontWeight: FontWeight.w900,
        //         letterSpacing: 0.15,
        //       ),
        //       descriptionStyles: TextStyle(
        //         fontSize: 16,
        //         color: AppColor.secFont,
        //       ),
        //       pageIndicatorStyle: PageIndicatorStyle(
        //         width: 50,
        //         inactiveColor: AppColor.primaryColor2,
        //         activeColor: AppColor.primaryColor,
        //         inactiveSize: const Size(6, 6),
        //         activeSize: const Size(8, 8),
        //       ),
        //       // Either Provide onSkip Callback or skipButton Widget to handle skip state
        //       skipButton: Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 30),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Image.asset(
        //               "assets/Logo.png",
        //             ),
        //             TextButton(
        //               onPressed: () => _pageController.jumpToPage(2),
        //               // print('skipButton pressed');
        //               child: Text(
        //                 "Skip",
        //                 style: TextStyle(color: AppColor.secFont, fontSize: 16),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),

        //       // Either Provide onDone Callback or nextButton Widget to handle done state
        //       nextButton: OnBoardConsumer(
        //         builder: (context, ref, child) {
        //           final state = ref.watch(onBoardStateProvider);
        //           return InkWell(
        //             onTap: () => _onNextTap(state),
        //             child: Container(
        //               width: 90.w,
        //               height: 6.h,
        //               alignment: Alignment.center,
        //               decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(30),
        //                   color: AppColor.primaryColor),
        //               child: InkWell(
        //                 onTap: () =>
        //                     Navigator.pushNamed(context, AppRoutes.loginPageRoute),
        //                 child: Text(
        //                   state.isLastPage ? "Get Started" : "Next",
        //                   style: const TextStyle(
        //                     color: Colors.white,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           );
        //         },
        //       ),
        //     ),
        //   );
        // }

        // void _onNextTap(OnBoardState onBoardState) {
        //   if (!onBoardState.isLastPage) {
        //     _pageController.animateToPage(
        //       onBoardState.page + 1,
        //       duration: const Duration(milliseconds: 250),
        //       curve: Curves.easeInOutSine,
        //     );
        //   } else {
        //     //print("nextButton pressed");
        //   }
        // }

        // final List<OnBoardModel> onBoardData = [
        //   const OnBoardModel(
        //     title: "Find a job, and start building your career from now on",
        //     description:
        //         "Explore over 25,924 available job roles and upgrade your operator now.",
        //     imgUrl: "assets/Background.png",
        //   ),
        //   const OnBoardModel(
        //     title: "Hundreds of jobs are waiting for you to join together",
        //     description:
        //         "Immediately join us and start applying for the job you are interested in.",
        //     imgUrl: 'assets/background2.png',
        //   ),
        //   const OnBoardModel(
        //     title: "Get the best choice for the job you've always dreamed of",
        //     description:
        //         "The better the skills you have, the greater the good job opportunities for you.",
        //     imgUrl: 'assets/background3.png',
        );
    //];
  }

  // return Scaffold(
  //   // appBar: AppBar(
  //   //   // toolbarHeight: ,
  //   //   backgroundColor: Colors.white,
  //   //   elevation: 0,
  //   //   actions: [],
  //   //   leading: ,
  //   // ),
  //   body: PageView(
  //     children: [
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           //   children: [
  //           //     Image.asset(
  //           //       "assets/splashLogo.png",
  //           //       // width: 40,
  //           //       // height: 40,
  //           //     ),
  //           //     SizedBox(width: 5),
  //           //     DefaultTextButton(
  //           //         onPressed: () => controller.jumpToPage(2),
  //           //         child: CustomText(
  //           //           "skip",
  //           //           fontSize: 16,
  //           //           fontweight: FontWeight.w400,
  //           //           textColor: AppColor.secFont,
  //           //         ))
  //           //   ],
  //           SizedBox(
  //             height: 10.h,
  //           ),

  //           Image.asset(
  //             "assets/Background.png",
  //             fit: BoxFit.cover,
  //             width: double.infinity,
  //           ),
  //           SizedBox(
  //             height: 2.h,
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: CustomText(
  //               "Find a job, and start building your career from now on",
  //               textColor: AppColor.balck2,
  //               fontSize: 32,
  //               fontweight: FontWeight.w500,
  //             ),
  //           ),
  //           SizedBox(
  //             height: 1.h,
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: CustomText(
  //               "Explore over 25,924 available job roles and upgrade your operator now.",
  //               fontSize: 16,
  //               fontweight: FontWeight.w400,
  //               textColor: AppColor.secFont,
  //             ),
  //           ),
  //         ],
  //       ),
  //       Column(
  //         children: [
  //           SizedBox(
  //             height: 10.h,
  //           ),
  //           Image.asset(
  //             "assets/background2.png",
  //             fit: BoxFit.cover,
  //             width: double.infinity,
  //           ),
  //           SizedBox(
  //             height: 2.h,
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: CustomText(
  //               "Hundreds of jobs are waiting for you to join together",
  //               textColor: AppColor.balck2,
  //               fontSize: 32,
  //               fontweight: FontWeight.w500,
  //             ),
  //           ),
  //           SizedBox(
  //             height: 1.h,
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: CustomText(
  //               "Immediately join us and start applying for the job you are interested in.",
  //               fontSize: 16,
  //               fontweight: FontWeight.w400,
  //               textColor: AppColor.secFont,
  //             ),
  //           ),
  //         ],
  //       ),
  //       Column(
  //         children: [
  //           Image.asset("assets/background3.png"),
  //           CustomText(
  //             "Get the best choice for the job you've always dreamed of",
  //             textColor: AppColor.balck2,
  //             fontSize: 32,
  //             fontweight: FontWeight.w500,
  //           ),
  //           CustomText(
  //             "The better the skills you have, the greater the good job opportunities for you.",
  //             fontSize: 16,
  //             fontweight: FontWeight.w400,
  //             textColor: AppColor.secFont,
  //           ),
  //         ],
  //       ),
  //     ],
  //   ),
  //   bottomSheet: Container(
  //       // height: 12.h,
  //       child: Column(
  //     children: [
  //       SmoothPageIndicator(
  //         controller: controller,
  //         count: 3,
  //         effect: WormEffect(
  //             dotColor: AppColor.primaryColor2,
  //             spacing: 3,
  //             activeDotColor: AppColor.primaryColor,
  //             dotHeight: 8,
  //             dotWidth: 8),
  //         onDotClicked: (index) => controller.animateToPage(index,
  //             duration: const Duration(microseconds: 500),
  //             curve: Curves.easeIn),
  //       ),
  //       SizedBox(
  //         height: 3.h,
  //       ),
  //       // Padding(
  //       //   padding: const EdgeInsets.symmetric(horizontal: 8),
  //       //   child:
  //       DefaultMaterialButton(
  //         onPressed: () {
  //           controller.nextPage(
  //               duration: const Duration(microseconds: 500),
  //               curve: Curves.easeInOut);
  //         },
  //         text: "Next",
  //         textColor: AppColor.white,
  //         fontSize: 16,
  //         radius: 1000,
  //         background: AppColor.primaryColor,
  //       ),
  //       // ),
  //     ],
  //   )),
  // );
}
