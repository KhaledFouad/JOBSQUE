import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_button.dart';

class ApplyDoneScreen extends StatefulWidget {
  const ApplyDoneScreen({Key? key}) : super(key: key);

  @override
  _ApplyDoneScreenState createState() => _ApplyDoneScreenState();
}

class _ApplyDoneScreenState extends State<ApplyDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        // toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          "Apply Job",
          textColor: AppColor.balck2,
          fontSize: 20,
          fontweight: FontWeight.w500,
        ),

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
        child: SafeArea(
            child: ListView(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.020,
          ),
          Image.asset(
            "assets/Data Ilustration.png",
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.0001,
          ),
          CustomText(
            "Your data has been successfully sent",
            fontSize: 24,
            fontweight: FontWeight.w500,
            textColor: AppColor.balck2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.015,
          ),
          CustomText(
            "You will get a message from our team, about the announcement of employee acceptance",
            fontSize: 16,
            fontweight: FontWeight.w400,
            textColor: AppColor.secFont,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          DefaultMaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.homePageUpdatedRoute);
            },
            text: "Back to home",
            textColor: AppColor.white,
            fontSize: 16,
            radius: 1000,
            background: AppColor.primaryColor,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.030,
          ),
        ])),
      ),
    );
  }
}
