import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.w, left: 5.w, bottom: 3.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColor.buttonColor),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: const DefaultText(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.visible,
                    text:
                        'Hi Rafif!, Im Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 5.w, bottom: 3.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColor.primaryColor),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: const DefaultText(
                  text:
                      'Hi Melan, thank you for considering me, this is good news for me.,',
                  color: Colors.white,
                  overflow: TextOverflow.visible,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w, left: 5.w, bottom: 3.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColor.buttonColor),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: const DefaultText(
                    overflow: TextOverflow.visible,
                    text:
                        'Hi Rafif!, Im Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 5.w, bottom: 3.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColor.primaryColor),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: const DefaultText(
                  overflow: TextOverflow.visible,
                  text:
                      'Hi Melan, thank you for considering me, this is good news for me.,',
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w, left: 5.w, bottom: 3.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColor.buttonColor),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: const DefaultText(
                    overflow: TextOverflow.visible,
                    text:
                        'Hi Rafif!, Im Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 5.w, bottom: 3.h),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppColor.primaryColor),
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: const DefaultText(
                  overflow: TextOverflow.visible,
                  text:
                      'Hi Melan, thank you for considering me, this is good news for me.,',
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
