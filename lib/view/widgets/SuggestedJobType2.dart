import 'package:flutter/material.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/theme/AppColor.dart';

class SuggestedJobType2 extends StatelessWidget {
  const SuggestedJobType2({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      width: 21.w,
      decoration: BoxDecoration(
          color: AppColor.baleBlueColor2,
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: CustomText(
          text,
          textColor: AppColor.primaryColor,
          textAlign: TextAlign.center,
          fontSize: 12,
        ),
      ),
    );
  }
}
