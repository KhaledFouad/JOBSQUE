import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/screens/Apply%20Job/step2.dart';
import 'package:my_app/view/screens/Apply%20Job/step3.dart';
import 'package:my_app/view/widgets/customText.dart';
import 'package:my_app/view/widgets/default_button.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:my_app/view/widgets/listTile_applyJob.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/listTile2_applyJob.dart';

class ApplyJob extends StatefulWidget {
  const ApplyJob({Key? key}) : super(key: key);

  @override
  _ApplyJobState createState() => _ApplyJobState();
}

class _ApplyJobState extends State<ApplyJob> {
  static int _currentStep = 0;
  var activeStep = 0;
  var formkey1 = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        // toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
          "Apply Job",
          textColor: AppColor.balck2,
          fontSize: 20,
          fontweight: FontWeight.w500,
        ),

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
      body: Column(
        children: [
          Expanded(
            child: Theme(
              data: ThemeData(
                colorScheme: Theme.of(context).colorScheme.copyWith(
                      primary: AppColor.primaryColor,
                    ),
              ),
              child: Stepper(
                type: StepperType.horizontal,
                physics: const ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                elevation: 0,
                steps: <Step>[
                  Step(
                    label: DefaultText(
                        text: "Biodata", color: AppColor.primaryColor),
                    title: const Text("  "),
                    content: Form(
                      key: formkey1,
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 2.8.h,
                            ),
                            ListTileApplyJob(
                                controller: fullNameController,
                                text1: "Full Name",
                                icon: Icons.person_outline_rounded),
                            ListTileApplyJob(
                                controller: emailController,
                                text1: "Email",
                                icon: Icons.email_outlined),
                            const ListTile2ApplyJob(text1: "No.Handphone"),
                            SizedBox(
                              height: 15.h,
                            ),
                            DefaultMaterialButton(
                              onPressed: () => continued(),
                              text: "Next",
                              textColor: AppColor.white,
                              fontSize: 16,
                              radius: 1000,
                              background: AppColor.primaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    label: DefaultText(
                      text: "Type of work",
                      color: _currentStep >= 1
                          ? AppColor.primaryColor
                          : AppColor.balck2,
                    ),
                    title: const Text('  '),
                    content: const Text(' dsdsdsdd '),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    label: DefaultText(
                      text: "Upload portfolio",
                      color: _currentStep >= 2
                          ? AppColor.primaryColor
                          : AppColor.balck2,
                    ),
                    title: const Text('  '),
                    content: const Text('  '),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
