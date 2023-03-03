import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/SuggestedJobType2.dart';
import 'package:sizer/sizer.dart';
import 'customText.dart';

class RecentJob extends StatefulWidget {
  const RecentJob({
    Key? key,
    required this.jobTitle,
    required this.jobSubTitle,
    required this.salary,
    required this.jobIcon, required this.ontap,
  }) : super(key: key);
  final String jobTitle;
  final String jobSubTitle;
  final String salary;
  final String jobIcon;
  final Function() ontap;

  @override
  State<RecentJob> createState() => _RecentJobState();
}

class _RecentJobState extends State<RecentJob> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: InkWell(
          onTap: widget.ontap,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    widget.jobIcon,
                    width: 30.sp,
                    // height: 30.sp,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        widget.jobTitle,
                        fontSize: 18,
                        fontweight: FontWeight.w500,
                        textColor: AppColor.balck2,
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
                  SizedBox(
                    width: 15.w,
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
                      color: pressed == true
                          ? AppColor.primaryColor
                          : AppColor.balck2,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SuggestedJobType2(text: "Fulltime"),
                  const SuggestedJobType2(text: "Remote"),
                  const SuggestedJobType2(text: "Design"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomText(
                        widget.salary,
                        fontSize: 18,
                        textColor: AppColor.successColor,
                        fontweight: FontWeight.w500,
                      ),
                      CustomText(
                        "/Month",
                        fontSize: 12,
                        textColor: AppColor.thirdFont,
                        fontweight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 40,
                thickness: 0.5,
                indent: 5,
                endIndent: 5,
                color: AppColor.thirdFont,
              )
            ],
          ),
        ),
      ),
    );
  }
}
