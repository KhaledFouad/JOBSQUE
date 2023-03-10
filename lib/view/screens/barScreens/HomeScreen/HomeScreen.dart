import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/RecentJob.dart';
import 'package:my_app/view/widgets/SuggestedJob.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_text_button.dart';
import 'package:sizer/sizer.dart';

import 'SearchScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 1.h,
                        ),
                        CustomText(
                          "Hi, Rafif Dian👋",
                          fontSize: 24,
                          fontweight: FontWeight.w500,
                          textColor: AppColor.balck2,
                        ),
                        CustomText(
                          "Create a better future for yourself here",
                          fontSize: 3.5.w,
                          fontweight: FontWeight.w400,
                          textColor: AppColor.secFont,
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: AppColor.balck2,
                        child: CircleAvatar(
                          backgroundColor: AppColor.white2,
                          child: IconButton(
                            icon: Icon(
                              Icons.notifications_none_rounded,
                              color: AppColor.balck2,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.notificationPageRoute);
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                InkWell(
                  onTap: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                  child: Container(
                    height: 6.5.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: AppColor.thirdFont)),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.search_outlined,
                            color: AppColor.balck2,
                            size: 20,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          CustomText(
                            "Search....",
                            fontSize: 14,
                            fontweight: FontWeight.w400,
                            textColor: AppColor.secFont,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    CustomText(
                      "Suggested Job",
                      fontSize: 18,
                      fontweight: FontWeight.w500,
                      textColor: AppColor.balck2,
                    ),
                    const Spacer(),
                    DefaultTextButton(
                      onPressed: () {},
                      child: CustomText(
                        "View all",
                        fontSize: 13,
                        fontweight: FontWeight.w500,
                        textColor: AppColor.primaryColor,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SuggestedJob(
                        jobIcon: "assets/Zoom Logo.png",
                        jobSubTitle: 'Zoom • United States',
                        jobTitle: 'Product Designer',
                        salary: '\$12K-15K',
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      const SuggestedJob(
                        jobIcon: "assets/Slack Logo.png",
                        jobSubTitle: 'Slack • United States',
                        jobTitle: 'Product Designer',
                        salary: '\$12K-15K',
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    CustomText(
                      "Recent Job",
                      fontSize: 18,
                      fontweight: FontWeight.w500,
                      textColor: AppColor.balck2,
                    ),
                    const Spacer(),
                    DefaultTextButton(
                      onPressed: () {},
                      child: CustomText(
                        "View all",
                        fontSize: 13,
                        fontweight: FontWeight.w500,
                        textColor: AppColor.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                RecentJob(
                  jobTitle: "Senior UI Designer",
                  jobSubTitle: "Twitter • Jakarta, Indonesia ",
                  salary: "\$15K",
                  jobIcon: "assets/Twitter Logo.png",
                  ontap: () {
                    Navigator.pushNamed(context, AppRoutes.jobDetailPageRoute);
                  },
                ),
                // SizedBox(
                //   width: 2.h,
                // ),
                RecentJob(
                  jobTitle: "Senior UI Designer",
                  jobSubTitle: "Discord • Jakarta, Indonesia ",
                  salary: "\$15K",
                  jobIcon: "assets/Discord Logo.png",
                  ontap: () {},
                ),
                RecentJob(
                  jobTitle: "UI Designer",
                  jobSubTitle: "Fouad • Jakarta, Indonesia ",
                  salary: "\$15K",
                  jobIcon: "assets/Discord Logo.png",
                  ontap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
