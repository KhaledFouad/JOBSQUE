import 'package:flutter/material.dart';

import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:my_app/view/widgets/listTile2_applyJob.dart';
import 'package:my_app/view/widgets/listTile_applyJob.dart';
import 'package:sizer/sizer.dart';

class Step1 extends StatefulWidget {
  final Widget button;
  const Step1({Key? key, required this.button}) : super(key: key);

  @override
  _Step1State createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 1.5.h,
          ),
          DefaultText(
            text: "Biodata",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColor.balck2,
          ),
          SizedBox(
            height: 0.4.h,
          ),
          DefaultText(
            text: "Fill in your bio data correctly",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColor.secFont,
          ),
          SizedBox(
            height: 4.h,
          ),
          ListTileApplyJob(
              controller: fullNameController,
              text1: "Full Name",
              icon: Icons.person_outline_rounded),
          ListTileApplyJob(
              controller: emailController,
              text1: "Email",
              icon: Icons.email_outlined),
          const ListTile2ApplyJob(text1: "No.Handphone"),
          SizedBox(
            height: 13.h,
          ),
          widget.button
        ],
      ),
    );
  }
}
