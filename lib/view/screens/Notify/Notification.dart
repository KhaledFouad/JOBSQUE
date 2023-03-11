import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> images = [
    "assets/Dana Logo.png",
    "assets/Shoope Logo.png",
    "assets/Slack Logo.png",
    "assets/Facebook Logo.png"
  ];
  List<String> titles = ['Dana', 'Shoope', 'Slack', 'Facebook'];
  List<String> subTitles = [
    'Posted new design jobs',
    'Posted new design jobs',
    'Posted new design jobs',
    'Posted new design jobs',
  ];
  List<String> titles2 = [
    'Email setup successful',
    'Welcome to Jobsque',
  ];
  List<String> subTitles2 = [
    'Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.',
    'Hello Rafif Dian Axelingga, thank you for registering Jobsque. Enjoy the various features that....',
  ];
  List<IconData> icons = [Icons.mail_outline_rounded, Icons.search_rounded];

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
              text: "Notification",
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
          body: (titles.isNotEmpty || titles2.isNotEmpty)
              ? ListView(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 5.h,
                      color: titles.isNotEmpty
                          ? AppColor.buttonColor2
                          : AppColor.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.5.h),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: DefaultText(
                            text: "New",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: titles.isNotEmpty
                                ? AppColor.secFont
                                : AppColor.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.5.h),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: titles.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(0.5.h),
                              title: DefaultText(
                                text: titles[index],
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColor.balck2,
                              ),
                              subtitle: DefaultText(
                                text: subTitles[index],
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.forthFont,
                              ),
                              leading: Image.asset(
                                images[index],
                              ),
                              trailing: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: AppColor.yellowColor,
                                      size: 7.sp,
                                    ),
                                    SizedBox(
                                      width: 0.5.w,
                                    ),
                                    DefaultText(
                                      text: "10.00AM",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.forthFont,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              endIndent: 2.w,
                              indent: 2.w,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 5.h,
                      color: titles2.isNotEmpty
                          ? AppColor.buttonColor2
                          : AppColor.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.5.h),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: DefaultText(
                            text: "Yesterday",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: titles2.isNotEmpty
                                ? AppColor.secFont
                                : AppColor.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.5.h),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: titles2.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index3) => Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.all(0.5.h),
                              title: DefaultText(
                                text: titles2[index3],
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.balck2,
                                overflow: TextOverflow.visible,
                              ),
                              subtitle: DefaultText(
                                text: subTitles2[index3],
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.forthFont,
                                overflow: TextOverflow.visible,
                              ),
                              leading: CircleAvatar(
                                  backgroundColor: AppColor.baleBlueColor2,
                                  radius: 17.sp,
                                  child: Icon(
                                    icons[index3],
                                    size: 23.sp,
                                  )),
                              trailing: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: DefaultText(
                                  text: "10.00AM",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.forthFont,
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              endIndent: 2.w,
                              indent: 2.w,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Image.asset(
                          "assets/Notification Ilustration.png",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        DefaultText(
                          text: "No new notifications yet",
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
                              "You will receive a notification if there is something on your account",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColor.secFont,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.visible,
                        ),
                      ]),
                    )
                  ],
                )),
    );
  }
}
