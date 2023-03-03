import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:sizer/sizer.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> jobsList = [
    "Junior UI Designer",
    "Junior UX Designer",
    "Product Designer",
    "Project Manager",
    "UI/UX Designer",
    "Front-End Developer",
    "Back-End Developer"
  ];

  List<String> recentJobs = [
    "Junior UI Designer",
    "Junior UX Designer",
    "Product Designer",
    "Project Manager",
    "UI/UX Designer",
  ];

  List<String> popularJobs = [
    "Product Designer",
    "Project Manager",
    "UI/UX Designer",
    "Front-End Developer",
    "Back-End Developer"
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var job in jobsList) {
      if (job.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(job);
      }
    }
    // return ListView.builder(
    //   itemBuilder: (context, index) {
    //     var result = matchQuery[index];
    //     return ListTile(
    //       title: Text(result),
    //     );
    //   },
    //   itemCount: matchQuery.length,
    // );
    return ListView.builder(
      itemCount: matchQuery.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(matchQuery.elementAt(index)),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> matchQuery = jobsList
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();
    final List<String> recent = recentJobs
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();
    final List<String> popular = popularJobs
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return matchQuery.isNotEmpty
        ? ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  recent.isEmpty
                      ? const SizedBox(
                          width: double.infinity,
                        )
                      : Container(
                          width: double.infinity,
                          height: 5.h,
                          color: AppColor.buttonColor2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.5.w),
                            child: const Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText("Recent searches")),
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: recent.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            // Navigator.pushNamed(
                            //     context, AppRoutes.setFilterPageRoute);
                          },
                          leading: const Icon(Icons.watch_later_outlined),
                          title: CustomText(
                            recent[index],
                            textColor: AppColor.balck2,
                            fontSize: 14,
                            fontweight: FontWeight.w400,
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.remove_circle_outline_sharp,
                              color: AppColor.errorColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  popular.isEmpty
                      ? const SizedBox(
                          width: double.infinity,
                        )
                      : Container(
                          width: double.infinity,
                          height: 5.h,
                          color: AppColor.buttonColor2,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.5.w),
                            child: const Align(
                                alignment: Alignment.centerLeft,
                                child: CustomText("Popular searches")),
                          ),
                        ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: popular.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          onTap: () {
                            // Navigator.pushNamed(
                            //     context, AppRoutes.setFilterPageRoute);
                          },
                          leading: const Icon(Icons.search),
                          title: CustomText(
                            popular[index],
                            textColor: AppColor.balck2,
                            fontSize: 14,
                            fontweight: FontWeight.w400,
                          ),
                          trailing: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_circle_right_outlined,
                              color: AppColor.primaryColor,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          )
        : Padding(
            padding: const EdgeInsets.all(25),
            child: SafeArea(
                child: ListView(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Image.asset(
                "assets/Search Ilustration.png",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0001,
              ),
              CustomText(
                "Search not found",
                fontSize: 24,
                fontweight: FontWeight.w500,
                textColor: AppColor.balck2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              CustomText(
                "Try searching with different keywords so we can show you",
                fontSize: 16,
                fontweight: FontWeight.w400,
                textColor: AppColor.secFont,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
            ])),
          );
  }
}
