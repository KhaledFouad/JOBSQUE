import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:sizer/sizer.dart';

import 'default_text.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String asset;
  final String text1;
  final String text2;
  const CustomListTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.asset,
      required this.text1,
      required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: DefaultText(
            text: title,
            fontSize: 14,
            color: AppColor.balck2,
          ),
          subtitle: DefaultText(
            text: subtitle,
            fontSize: 12,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.w400,
            color: AppColor.secFont,
          ),
          leading: CircleAvatar(
              backgroundColor: AppColor.white,
              child: Image.asset(asset)),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DefaultText(
                text: text1,
                fontSize: 12,
                color: AppColor.secFont,
                fontWeight: FontWeight.w400,
              ),
              DefaultText(
                text: text2,
                fontSize: 12,
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Divider(
          height: 3.h,
          thickness: 0.5,
          indent: 15,
          endIndent: 15,
          color: AppColor.thirdFont,
        ),
        SizedBox(
          height: 1.6.h,
        ),
      ],
    );
  }
}
