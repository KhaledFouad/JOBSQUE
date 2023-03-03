import 'package:flutter/material.dart';
import 'package:my_app/view/widgets/textFormFeild.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/theme/AppColor.dart';
import 'default_text.dart';

class ListTileApplyJob extends StatefulWidget {
  final TextEditingController controller;
  final String text1;
  final IconData icon;
  const ListTileApplyJob(
      {Key? key,
      required this.controller,
      required this.text1,
      required this.icon})
      : super(key: key);

  @override
  _ListTileApplyJobState createState() => _ListTileApplyJobState();
}

class _ListTileApplyJobState extends State<ListTileApplyJob> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
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
          subtitle: DefaultFormField(
            controller: widget.controller,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: widget.text1,
            prefixIcon: Icon(
              widget.icon,
              size: 30,
              color: AppColor.thirdFont,
            ),
          ),
        ),
        SizedBox(
          height: 4.5.h,
        )
      ],
    );
  }
}
