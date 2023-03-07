import 'package:extended_phone_number_input/consts/enums.dart';
import 'package:extended_phone_number_input/phone_number_controller.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

class ListTile2ApplyJob extends StatefulWidget {
  final String text1;
  const ListTile2ApplyJob({Key? key, required this.text1}) : super(key: key);

  @override
  _ListTile2ApplyJobState createState() => _ListTile2ApplyJobState();
}

class _ListTile2ApplyJobState extends State<ListTile2ApplyJob> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            DefaultText(
              text: widget.text1,
              color: AppColor.balck2,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            DefaultText(
              text: "*",
              color: AppColor.errorColor,
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        PhoneNumberInput(
            hint: "No.Handphone",
            allowPickFromContacts: false,
            // controller: _controller,
            initialCountry: 'us',
            locale: 'en',
            countryListMode: CountryListMode.dialog,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColor.thirdFont)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: AppColor.primaryColor))),
        SizedBox(
          height: 4.5.h,
        )
      ],
    );
  }
}
