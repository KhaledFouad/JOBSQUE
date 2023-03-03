import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/SuggestedJobType.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_button.dart';
import 'package:sizer/sizer.dart';

class SuggestedJob extends StatefulWidget {
  const SuggestedJob(
      {Key? key,
      required this.jobTitle,
      required this.jobSubTitle,
      required this.salary,
      required this.jobIcon})
      : super(key: key);
  final String jobTitle;
  final String jobSubTitle;
  final String salary;
  final String jobIcon;

  @override
  State<SuggestedJob> createState() => _SuggestedJobState();
}

class _SuggestedJobState extends State<SuggestedJob> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      width: 80.w,
      decoration: BoxDecoration(
          color: AppColor.cardColor, borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(widget.jobIcon),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      widget.jobTitle,
                      fontSize: 18,
                      fontweight: FontWeight.w500,
                      textColor: AppColor.white,
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    CustomText(
                      widget.jobSubTitle,
                      fontSize: 12,
                      fontweight: FontWeight.w400,
                      textColor: AppColor.thirdFont,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    pressed = !pressed;
                    setState(() {});
                  },
                  child: Icon(
                    pressed == true
                        ? Icons.bookmark_rounded
                        : Icons.bookmark_outline_rounded,
                    color: pressed == true ? AppColor.white : AppColor.white,
                    size: 25.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SuggestedJobType(text: "Fulltime"),
                SuggestedJobType(text: "Remote"),
                SuggestedJobType(text: "Design")
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomText(
                    widget.salary,
                    fontSize: 20,
                    textColor: AppColor.white,
                    fontweight: FontWeight.w500,
                  ),
                  CustomText(
                    "/Month",
                    fontSize: 12,
                    textColor: AppColor.thirdFont,
                    fontweight: FontWeight.w400,
                  ),
                  // SizedBox(
                  //   width: 13.w,
                  // ),
                  Spacer(),
                  DefaultMaterialButton(
                    radius: 100,
                    onPressed: () {},
                    text: "Apply now",
                    fontSize: 13,
                    width: 27.w,
                    height: 5.h,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
