import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/view/widgets/CustomListTile.dart';
import 'package:my_app/view/widgets/SuggestedJobType2.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_button.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/theme/AppColor.dart';

class JobDetailScreen extends StatefulWidget {
  final int initialIndex;
  const JobDetailScreen({Key? key, required this.initialIndex})
      : super(key: key);

  @override
  _JobDetailScreenState createState() => _JobDetailScreenState();
}

class _JobDetailScreenState extends State<JobDetailScreen>
    with SingleTickerProviderStateMixin {
  bool pressed = false;
  static List<String> menuList = <String>[
    'UI/UX Designer',
    'Flutter Developer',
    'Product Manager'
  ];
  String dropdownValue = menuList.first;
  bool reset = false;
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: widget.initialIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          "Job Detail",
          textColor: AppColor.balck2,
          fontSize: 20,
          fontweight: FontWeight.w500,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: InkWell(
              onTap: () {
                pressed = !pressed;
                setState(() {});
              },
              child: Icon(
                pressed == true
                    ? Icons.bookmark_rounded
                    : Icons.bookmark_outline_rounded,
                color:
                    pressed == true ? AppColor.primaryColor : AppColor.balck2,
                size: 25.sp,
              ),
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
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(2.5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Twitter Logo2.png"),
            SizedBox(height: 1.2.h),
            CustomText(
              "Senior UI Designer",
              textColor: AppColor.balck2,
              fontSize: 20,
              fontweight: FontWeight.w500,
            ),
            SizedBox(height: 0.4.h),
            CustomText(
              "Twitter • Jakarta, Indonesia ",
              textColor: AppColor.forthFont,
              fontSize: 12,
              fontweight: FontWeight.w400,
            ),
            SizedBox(height: 1.4.h),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SuggestedJobType2(text: "Fulltime"),
                  SuggestedJobType2(text: "Onsite"),
                  SuggestedJobType2(text: "Senior"),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            Expanded(
              child: Scaffold(
                backgroundColor: AppColor.white,
                appBar: AppBar(
                  backgroundColor: AppColor.white,
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  flexibleSpace: Container(
                    height: 7.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColor.buttonColor2),
                    child: TabBar(
                        dragStartBehavior: DragStartBehavior.start,
                        indicatorWeight: 1.h,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: AppColor.primaryColor3,
                        ),
                        overlayColor: MaterialStateProperty.all(AppColor.white),
                        labelStyle: const TextStyle(fontSize: 15),
                        automaticIndicatorColorAdjustment: true,
                        labelColor: AppColor.white,
                        indicatorColor: AppColor.primaryColor3,
                        unselectedLabelColor: AppColor.secFont,
                        controller: tabController,
                        tabs: const [
                          Align(
                            alignment: Alignment.center,
                            child: CustomText(
                              "Desicription",
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: CustomText(
                              "Company",
                              fontSize: 14,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: CustomText(
                              "People",
                              fontSize: 14,
                            ),
                          ),
                        ]),
                  ),
                ),
                body: TabBarView(controller: tabController, children: [
                  ListView(
                    children: [
                      SizedBox(height: 2.7.h),
                      CustomText(
                        "Job Description",
                        textColor: AppColor.balck2,
                        fontSize: 16,
                        fontweight: FontWeight.w500,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 0.8.h),
                      CustomText(
                        "Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.",
                        textColor: AppColor.secFont,
                        fontSize: 14,
                        fontweight: FontWeight.w400,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 2.h),
                      CustomText(
                        "Skill Required",
                        textColor: AppColor.balck2,
                        fontSize: 16,
                        fontweight: FontWeight.w500,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 0.8.h),
                      DefaultText(
                        text:
                            "•	A strong visual portfolio with clear understanding of UI methodologies",
                        color: AppColor.secFont,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.left,
                        textScaleFactor: 1.1,
                        overflow: TextOverflow.visible,
                      ),
                      DefaultText(
                        text:
                            "•	Ability to create hi-fidelity mock-ups in Figma",
                        color: AppColor.secFont,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.left,
                        textScaleFactor: 1.1,
                        overflow: TextOverflow.visible,
                      ),
                      DefaultText(
                        text:
                            "•	Ability to create various graphics for the web e.g. illustrations and icons",
                        color: AppColor.secFont,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.left,
                        textScaleFactor: 1.1,
                        overflow: TextOverflow.visible,
                      ),
                      DefaultText(
                        text:
                            "•	Able to facilitate workshops and liaise with stakeholders",
                        color: AppColor.secFont,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.left,
                        textScaleFactor: 1.1,
                        overflow: TextOverflow.visible,
                      ),
                      DefaultText(
                        text: "•	Proficiency in the Adobe Creative Suite",
                        color: AppColor.secFont,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.left,
                        textScaleFactor: 1.1,
                        overflow: TextOverflow.visible,
                      ),
                      DefaultText(
                        text:
                            "•	Confident communicator with an analytical mindset",
                        color: AppColor.secFont,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.left,
                        textScaleFactor: 1.1,
                        overflow: TextOverflow.visible,
                      ),
                      DefaultText(
                        text:
                            "•	Ability to create various graphics for the web e.g. illustrations and icons",
                        overflow: TextOverflow.visible,
                        textScaleFactor: 1.1,
                        color: AppColor.secFont,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.left,
                        fontSize: 14,
                      )
                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(height: 2.7.h),
                      CustomText(
                        "Contact Us",
                        textColor: AppColor.balck2,
                        fontSize: 16,
                        fontweight: FontWeight.w500,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 1.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 10.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.buttonColor),
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DefaultText(
                                    text: "Email",
                                    color: AppColor.thirdFont,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    textAlign: TextAlign.left,
                                    textScaleFactor: 1.1,
                                    overflow: TextOverflow.visible,
                                  ),
                                  DefaultText(
                                    text: "twitter@mail.com",
                                    color: AppColor.balck2,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.left,
                                    textScaleFactor: 1.1,
                                    overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Spacer(),
                          Container(
                            height: 10.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColor.buttonColor),
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  DefaultText(
                                    text: "Website",
                                    color: AppColor.thirdFont,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    textAlign: TextAlign.left,
                                    textScaleFactor: 1.1,
                                    overflow: TextOverflow.visible,
                                  ),
                                  DefaultText(
                                    text: "https://twitter.com",
                                    color: AppColor.balck2,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    textAlign: TextAlign.left,
                                    textScaleFactor: 1.1,
                                    overflow: TextOverflow.visible,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      CustomText(
                        "About Company",
                        textColor: AppColor.balck2,
                        fontSize: 16,
                        fontweight: FontWeight.w500,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 0.8.h),
                      DefaultText(
                        text:
                            "Understanding Recruitment is an award-winning technology, software and digital recruitment consultancy with headquarters in St. Albans, Hertfordshire.We also have a US office in Boston, Massachusetts specialising in working closely with highly skilled individuals seeking their next career move within Next Gen Tech, Backend Engineering, and Artificial Intelligence.We recently celebrated our first decade in business and over the years have been recognised with several industry awards including 'Best Staffing Firm to Work For 2018'​ at the SIA Awards for the third consecutive year and ‘Business of the Year 2017’ at the SME Hertfordshire Business Awards.Our teams of specialists operate across all areas of Technology and Digital, including Java, JavaScript, Python, .Net, DevOps & SRE, SDET, Artificial Intelligence, Machine Learning, AI, Digital, Quantum Computing, Hardware Acceleration, Digital, Charity, Fintech, and the Public Sector.",
                        color: AppColor.secFont,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textAlign: TextAlign.left,
                        textScaleFactor: 1.1,
                        overflow: TextOverflow.visible,
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      SizedBox(height: 2.7.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefaultText(
                                text: "6 Employees For",
                                fontSize: 14,
                                color: AppColor.balck2,
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.w500,
                              ),
                              SizedBox(height: 0.4.h),
                              DefaultText(
                                text: "UI/UX Design",
                                fontSize: 14,
                                color: AppColor.secFont,
                                textAlign: TextAlign.left,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                          Container(
                            width: 38.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: AppColor.buttonColor)),
                            child: Align(
                              alignment: Alignment.center,
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down_sharp),
                                elevation: 16,
                                // borderRadius: BorderRadius.circular(5),
                                style: TextStyle(
                                    color: AppColor.balck2,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                                underline: Container(),
                                items: menuList.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.4.h,
                      ),
                      const CustomListTile(
                          title: "Dimas Adi Saputro",
                          subtitle: "Senior UI/UX Designer at Twitter",
                          asset: "assets/Dimas Profile.png",
                          text1: "Work during",
                          text2: "5 Years"),
                      const CustomListTile(
                          title: "Syahrul Ramadhani",
                          subtitle: "Senior UI/UX Designer at Twitter",
                          asset: "assets/Syahrul Profile.png",
                          text1: "Work during",
                          text2: "5 Years"),
                      const CustomListTile(
                          title: "Farrel Daniswara",
                          subtitle: "Senior UI/UX Designer at Twitter",
                          asset: "assets/Farrel Profile.png",
                          text1: "Work during",
                          text2: "4 Years"),
                      const CustomListTile(
                          title: "Azzahra Farrelika",
                          subtitle: "UI/UX Designer at Twitter",
                          asset: "assets/Azzahra Profile.png",
                          text1: "Work during",
                          text2: "4 Years"),
                      const CustomListTile(
                          title: "Dindra Desmipian",
                          subtitle: "UI/UX Designer at Twitter",
                          asset: "assets/Dindra Profile.png",
                          text1: "Work during",
                          text2: "5 Years"),
                      const CustomListTile(
                          title: "Ferdi Saputra",
                          subtitle: "UI/UX Designer at Twitter",
                          asset: "assets/Ferdi Profile.png",
                          text1: "Work during",
                          text2: "5 Years"),
                    ],
                  ),
                ]),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                floatingActionButton: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.buttonColor2),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  height: 50,
                  margin: const EdgeInsets.all(10),
                  child: DefaultMaterialButton(
                    onPressed: () => Navigator.pushNamed(
                        context, AppRoutes.applyJobPageRoute),
                    text: "Apply now",
                    textColor: AppColor.white,
                    fontSize: 16,
                    radius: 1000,
                    background: AppColor.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
