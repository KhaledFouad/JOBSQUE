import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/screens/barScreens/messageScreen/chat.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: AppColor.white,
          elevation: 0,
          centerTitle: true,
          title: DefaultText(
            text: "Messsages",
            color: AppColor.balck2,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.navigationPageRoute);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(2.2.h),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: AppColor.buttonColor)),
                      height: 7.h,
                      // width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(children: [
                          Icon(
                            Icons.search,
                            size: 25.sp,
                            color: AppColor.secFont,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DefaultText(
                                text: 'Search messages....',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColor.secFont),
                          )
                        ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.5.w,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet<void>(
                        backgroundColor: AppColor.white,
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(24.0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24)),
                                border:
                                    Border.all(color: AppColor.buttonColor)),
                            height: 35.h,
                            child: Padding(
                              padding: EdgeInsets.all(15.sp),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DefaultText(
                                    text: "Message filters",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.balck2,
                                  ),
                                  SizedBox(
                                    height: 2.6.h,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: AppColor.buttonColor)),
                                    height: 7.h,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.5.h),
                                      child: ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 2.w),
                                        onTap: () {},
                                        title: DefaultText(
                                          text: "Unread",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.forthFont,
                                        ),
                                        trailing: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.navigate_next_rounded,
                                              size: 20.sp,
                                              color: AppColor.balck2,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.8.h,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: AppColor.buttonColor)),
                                    height: 7.h,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.5.h),
                                      child: ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 2.w),
                                        onTap: () {},
                                        title: DefaultText(
                                          text: "Spam",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.forthFont,
                                        ),
                                        trailing: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.navigate_next_rounded,
                                              size: 20.sp,
                                              color: AppColor.balck2,
                                            )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.8.h,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: AppColor.buttonColor)),
                                    height: 7.h,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 2.5.h),
                                      child: ListTile(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 2.5.w),
                                        onTap: () {},
                                        title: DefaultText(
                                          text: "Archived",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.forthFont,
                                        ),
                                        trailing: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.navigate_next_rounded,
                                              size: 20.sp,
                                              color: AppColor.balck2,
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColor.buttonColor,
                      radius: 23.sp,
                      child: CircleAvatar(
                        backgroundColor: AppColor.white,
                        radius: 22.5.sp,
                        child: Image.asset("assets/setting-4.png"),
                      ),
                    ),
                  ),
                ],
              ),
              messageTitle.isEmpty
                  ? Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Image.asset(
                          "assets/Data Ilustration3.png",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        DefaultText(
                          text: "You have not received any messages",
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppColor.balck2,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        DefaultText(
                          text:
                              "Once your application has reached the interview stage, you will get a message from the recruiter.",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.secFont,
                          textAlign: TextAlign.center,
                        ),
                      ]),
                    )
                  : ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.h),
                            child: ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Chat(indx: index),
                                    ));
                              },
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 1.w),
                              leading: messageImages[index],
                              title: Row(
                                children: [
                                  DefaultText(
                                      text: messageTitle[index],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  const Spacer(),
                                  DefaultText(
                                      text: messageTime[index],
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.primaryColor),
                                ],
                              ),
                              subtitle: DefaultText(
                                text: messageContent[index],
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1,
                            endIndent: 20,
                            indent: 20.w,
                          )
                        ],
                      ),
                      itemCount: 3,
                      shrinkWrap: true,
                    )
            ],
          ),
        ),
      ),
    );
  }
}

List<Image> messageImages = [
  Image.asset("assets/image 31.png"),
  Image.asset("assets/Gojek Logo.png"),
  Image.asset("assets/Dana Logo.png"),
];
List<String> messageTitle = ['Twitter', 'Gojek Indonesia', 'Dana'];
List<String> messageContent = [
  'Here is the link: http://zoom.com/abcdeefg',
  'Let’s keep in touch.',
  'Thank you for your attention!'
];
List<String> messageTime = ['12.30', '12.30', 'Yesterday'];
