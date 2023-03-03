import 'package:flutter/material.dart';
import 'package:my_app/model/CardModel.dart';
import 'package:my_app/utilities/route/routes.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_button.dart';
import '../../../widgets/customCard.dart';

class RegisterScreen2 extends StatefulWidget {
  const RegisterScreen2({Key? key}) : super(key: key);

  @override
  _RegisterScreen2State createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  List<CardModel> homeCardModelDummyDataList = [
    CardModel(
      title: 'UI/UX Designer',
      icon: Icons.design_services_outlined,
    ),
    CardModel(
      title: 'Ilustrator Designer',
      icon: Icons.mode_edit_outline_rounded,
    ),
    CardModel(
      title: 'Developer',
      icon: Icons.developer_mode,
    ),
    CardModel(
      title: 'Management',
      icon: Icons.precision_manufacturing_outlined,
    ),
    CardModel(
      title: 'Information Technology',
      icon: Icons.computer_rounded,
    ),
    CardModel(
      title: 'Research and Analytics',
      icon: Icons.cloud_done_rounded,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.020,
              ),
              CustomText(
                "What type of work are you interested in?",
                fontSize: 24,
                fontweight: FontWeight.w500,
                textColor: AppColor.balck2,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              CustomText(
                  "Tell us what you’re interested in so we can customise the app for your needs.",
                  textColor: AppColor.secFont,
                  fontSize: 16,
                  fontweight: FontWeight.w400),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.040,
              ),
              Flexible(
                flex: 4,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 3 / 2.5,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20),
                  itemCount: 6,
                  itemBuilder: (context, index) => CustomCard(
                    cardModel: homeCardModelDummyDataList[index],
                   
                  ),
                ),
              ),
              DefaultMaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.registerPage3Route);
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
  }
}
