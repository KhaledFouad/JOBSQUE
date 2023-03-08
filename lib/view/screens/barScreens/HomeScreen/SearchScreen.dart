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
    "Back-End Developer",
    "khaled Fouad",
    "ahmed Fouad",
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
    "Back-End Developer",
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
    final List<String> searchResult = query.isEmpty
        ? recentJobs
        : jobsList
            .where((element) =>
                element.toLowerCase().contains(query.toLowerCase()))
            .toList();

    for (var job in jobsList) {
      if (job.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(job);
      } else if (searchResult.isEmpty) {
        return ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
              child: Column(
                children: [
                  Image.asset(
                    "assets/Search Ilustration.png",
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  const Text(
                    "Search not found",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 0.8.h,
                  ),
                  Text(
                    "Try searching with different keywords so we can show you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.secFont),
                  ),
                ],
              ),
            ),
          ],
        );
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
    final List<String> searchResult = query.isEmpty
        ? recentJobs
        : jobsList
            .where((element) =>
                element.toLowerCase().contains(query.toLowerCase()))
            .toList();

    if (query.isEmpty) {
      return ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            width: double.infinity,
            height: 5.h,
            color: AppColor.buttonColor2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent searches',
                  style: TextStyle(color: AppColor.secFont),
                ),
              ),
            ),
          ),
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: searchResult.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.watch_later_outlined),
                title: Text(searchResult.elementAt(index)),
                trailing: Icon(
                  Icons.highlight_remove_outlined,
                  color: AppColor.errorColor,
                ),
              );
            },
          ),
          Container(
            width: double.infinity,
            height: 5.h,
            color: AppColor.buttonColor2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular searches',
                  style: TextStyle(color: AppColor.secFont),
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: popularJobs.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const Icon(Icons.search),
                title: Text(popularJobs.elementAt(index)),
                trailing: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: AppColor.primaryColor,
                ),
              );
            },
          ),
        ],
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: searchResult.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.search),
              title: Text(searchResult.elementAt(index)),
              trailing: const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.blue,
              ),
            );
          },
        ),
      );
    }
  }
}
