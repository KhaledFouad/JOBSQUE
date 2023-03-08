import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

import 'MessageScreen.dart';

TextEditingController messageController = TextEditingController();

class Chat extends StatelessWidget {
  int indx;
  Chat({Key? key, required this.indx}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white2,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: AppColor.white,
        elevation: 0.5,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            messageImages[indx],
            SizedBox(
              width: 2.w,
            ),
            CustomText(
              messageTitle[indx],
              textColor: AppColor.balck2,
              fontSize: 16,
              fontweight: FontWeight.w500,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                size: 30,
              ),
              color: AppColor.primaryColor,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2.2.h),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColor.buttonColor,
                      thickness: 1,
                      endIndent: 15,
                    ),
                  ),
                  // const SizedBox(width: 20),
                  Center(
                    child: DefaultText(
                      text: "Today,  Nov 13",
                      fontSize: 14,
                      color: AppColor.secFont,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // const SizedBox(width: 20),
                  Expanded(
                    child: Divider(
                      color: AppColor.buttonColor,
                      thickness: 1,
                      indent: 15,
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Expanded(
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
                      child: const Text(
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
                      child: const Text(
                        'Hi Melan, thank you for considering me, this is good news for me.,',
                        style: TextStyle(color: Colors.white),
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
                      child: const Text(
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
                      child: const Text(
                        'Hi Melan, thank you for considering me, this is good news for me.,',
                        style: TextStyle(color: Colors.white),
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
                      child: const Text(
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
                      child: const Text(
                        'Hi Melan, thank you for considering me, this is good news for me.,',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 3.2.h,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 3.h,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attachment_rounded,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColor.buttonColor2)),
                  height: 7.h,
                  width: 60.w,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                          controller: messageController,
                          decoration: const InputDecoration(
                            hintText: 'Write a message',
                            border: InputBorder.none,
                          ))),
                ),
                CircleAvatar(
                  radius: 3.2.h,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 3.h,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mic_none_outlined,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
