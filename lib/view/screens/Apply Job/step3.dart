import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

class Step3 extends StatefulWidget {
  final Widget button;
  const Step3({Key? key, required this.button}) : super(key: key);

  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  FilePickerResult? result;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 1.5.h,
          ),
          DefaultText(
            text: "Upload portfolio",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColor.balck2,
          ),
          SizedBox(
            height: 0.4.h,
          ),
          DefaultText(
            text: "Fill in your bio data correctly",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColor.secFont,
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              DefaultText(
                text: "Upload CV",
                color: AppColor.balck2,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              DefaultText(
                text: "*",
                color: AppColor.errorColor,
              ),
            ],
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: const BorderRadius.all(Radius.circular(10.0) //
                  ),
              border: Border.all(color: AppColor.buttonColor),
            ),
            child: Center(
              child: ListTile(
                horizontalTitleGap: 10,
                minVerticalPadding: 5,
                minLeadingWidth: 30,
                contentPadding: EdgeInsets.symmetric(horizontal: 8.sp),
                // dense: false,
                // enabled: true,
                title: DefaultText(
                  text: "Rafif Dian.CV",
                  color: AppColor.balck2,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                subtitle: DefaultText(
                  text: "CV.pdf 300KB",
                  color: AppColor.secFont,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.mode_edit_outline_outlined,
                        color: AppColor.primaryColor,
                        size: 25,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.highlight_remove_rounded,
                        color: AppColor.errorColor,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                leading: Image.asset(
                  "assets/pdf.png",
                  height: 33.sp,
                  width: 28.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3.4.h,
          ),
          DefaultText(
            text: "Other File",
            color: AppColor.balck2,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 0.5.h,
          ),
          
          if (result != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Selected file:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: result?.files.length ?? 0,
                      itemBuilder: (context, index) {
                        return Text(result?.files[index].name ?? '',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold));
                      })
                ],
              ),
            ),
          Center(
            child: ElevatedButton(
              onPressed: () async {
                result =
                    await FilePicker.platform.pickFiles(allowMultiple: true);
                if (result == null) {
                  print("No file selected");
                } else {
                  setState(() {});
                  result?.files.forEach((element) {
                    print(element.name);
                  });
                }
              },
              child: const Text("File Picker"),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          widget.button,
        ],
      ),
    );
  }
}
