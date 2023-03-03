import 'package:flutter/material.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/theme/AppColor.dart';

class SuggestedJobType extends StatelessWidget {
  const SuggestedJobType({required this.text, Key? key}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 22.w,
      decoration: BoxDecoration(
          color: AppColor.baleBlueColor,
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: CustomText(
          text,
          textColor: AppColor.white,
          textAlign: TextAlign.center,
          fontSize: 12,
        ),
      ),
    );
  }
}
