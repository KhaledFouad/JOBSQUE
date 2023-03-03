import 'package:flutter/material.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_button.dart';

class RegisterScreen3 extends StatefulWidget {
  const RegisterScreen3({super.key});

  @override
  State<RegisterScreen3> createState() => _RegisterScreen3State();
}

class _RegisterScreen3State extends State<RegisterScreen3> {
  // const RegisterScreen3({Key? key, this.selectedUserList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              CustomText(
                "Where are you prefefred Location?",
                fontSize: 24,
                fontweight: FontWeight.w500,
                textColor: AppColor.balck2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              CustomText(
                  "Let us know, where is the work location you want at this time, so we can adjust it.",
                  textColor: AppColor.secFont,
                  fontSize: 16,
                  fontweight: FontWeight.w400),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              CustomText("Select the country you want for your job",
                  textColor: AppColor.secFont,
                  fontSize: 16,
                  fontweight: FontWeight.w400),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              FilterChip(
                  padding: const EdgeInsets.all(15),
                  backgroundColor: AppColor.white2,
                  shape: StadiumBorder(
                      side: BorderSide(color: AppColor.buttonColor)),
                  avatar: const CircleAvatar(
                    backgroundImage: AssetImage("assets/country1.png"),
                  ),
                  label: const Text(
                    'United States',
                    style: TextStyle(fontSize: 20),
                  ),
                  onSelected: (bool value) {
                    if (value) {}
                  }),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              DefaultMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.registerPage4Route);
                },
                text: "Next",
                textColor: AppColor.white,
                fontSize: 16,
                radius: 1000,
                background: AppColor.primaryColor,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.036,
              ),
            ],
          ),
        ),
      ),
    );
    // FilterListWidget<Country>(
    //   listData: countryList,
    //   selectedListData: selectedUserList,
    //   onApplyButtonClick: (list) {
    //     // do something with list ..
    //   },
    //   choiceChipLabel: (item) {
    //     /// Used to display text on chip
    //     return item!.name;
    //   },
    //   validateSelectedItem: (list, val) {
    //     ///  identify if item is selected or not
    //     return list!.contains(val);
    //   },
    //   onItemSearch: (user, query) {
    //     /// When search query change in search bar then this method will be called
    //     ///
    //     /// Check if items contains query
    //     return user.name!.toLowerCase().contains(query.toLowerCase());
    //   },
    // );
  }
}
