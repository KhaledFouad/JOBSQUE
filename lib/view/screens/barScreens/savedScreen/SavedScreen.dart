import 'package:flutter/material.dart';
import 'package:my_app/model/savedModel.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  _SavedScreenState createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  final List<SavedModel> _group = [
    SavedModel(
        title: "Senior UI Designer",
        subTitle: "Twitter • Jakarta, Indonesia ",
        icon: "assets/Twitter Logo3.png",
        date: "Posted 2 days ago"),
    SavedModel(
        title: "UI Designer",
        subTitle: "Spectrum • Jakarta, Indonesia ",
        icon: "assets/Spectrum Logo.png",
        date: "Posted 2 days ago"),
    SavedModel(
        title: "Senior UI Designer",
        subTitle: "VK • Yogyakarta, Indonesia ",
        icon: "assets/VK Logo.png",
        date: "Posted 2 days ago"),
    SavedModel(
        title: "Senior UX Designer",
        subTitle: "Discord • Jakarta, Indonesia ",
        icon: "assets/Discord Logo.png",
        date: "Posted 2 days ago"),
    SavedModel(
        title: "Junior UI Designer",
        subTitle: "Invision • Jakarta, Indonesia ",
        icon: "assets/Invision Logo.png",
        date: "Posted 2 days ago"),
  ];
  List<Icon> icons = [
    const Icon(Icons.play_for_work_outlined),
    const Icon(Icons.file_upload_outlined),
    const Icon(Icons.bookmark_border_rounded),
  ];
  List<String> titles = [
    'Apply Job',
    'Share via...',
    'Cancel save',
  ];

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
              text: "Saved",
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
          body: _group.isNotEmpty
              ? ListView(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 5.h,
                      color: AppColor.buttonColor2,
                      child: Center(
                        child: DefaultText(
                          text: " ${_group.length} Job Saved",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.secFont,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(1.5.h),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: _group.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Column(
                          children: [
                            ListTile(
                              title: DefaultText(
                                text: _group[index].title,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColor.balck2,
                              ),
                              subtitle: DefaultText(
                                text: _group[index].subTitle,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColor.forthFont,
                              ),
                              leading: Image.asset(
                                _group[index].icon,
                              ),
                              trailing: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: InkWell(
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
                                        return SizedBox(
                                          height: 33.h,
                                          child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            padding: EdgeInsets.all(1.h),
                                            itemCount: titles.length,
                                            itemBuilder:
                                                (context, int index2) =>
                                                    Padding(
                                              padding: EdgeInsets.all(1.h),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    border: Border.all(
                                                        color: AppColor
                                                            .buttonColor)),
                                                child: ListTile(
                                                  onTap: () {},
                                                  contentPadding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 2.5.w),
                                                  leading: icons[index2],
                                                  title: DefaultText(
                                                      text: titles[index2],
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(
                                                        Icons
                                                            .navigate_next_rounded,
                                                        size: 20.sp,
                                                      )),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Image.asset(
                                    "assets/more.png",
                                    cacheWidth: 50.sp.toInt(),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(1.h),
                              child: Row(
                                children: [
                                  DefaultText(
                                    text: _group[index].date,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.forthFont,
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.access_time,
                                    color: AppColor.successColor,
                                    size: 13.sp,
                                  ),
                                  DefaultText(
                                    text: "  Be an early applicant",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.forthFont,
                                  ),
                                ],
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
                          "assets/Saved Ilustration.png",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        DefaultText(
                          text: "Nothing has been saved yet",
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
                              "Press the star icon on the job you want to save.",
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
