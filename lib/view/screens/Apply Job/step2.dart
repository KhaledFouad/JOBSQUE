import 'package:flutter/material.dart';
import 'package:my_app/model/GroupModel.dart';
import 'package:my_app/model/RadioModel.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

class Step2 extends StatefulWidget {
  final Widget button;
  const Step2({Key? key, required this.button}) : super(key: key);

  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  int _value2 = 0;
  final List<GroupModel> _group = [
    GroupModel(
        title: "Senior UX Designer",
        subTitle: "CV.pdf - Portfolio.pdf",
        index: 1,
        selected: false),
    GroupModel(
        title: "Senior UI Designer",
        subTitle: "CV.pdf - Portfolio.pdf",
        index: 2,
        selected: false),
    GroupModel(
        title: "Graphic Designer",
        subTitle: "CV.pdf - Portfolio.pdf",
        index: 3,
        selected: false),
    GroupModel(
        title: "Front-End Developer",
        subTitle: "CV.pdf - Portfolio.pdf",
        index: 4,
        selected: false),
  ];
  List<RadioModel> sampleData = <RadioModel>[];
  Widget makeRadioTiles() {
    List<Widget> list = <Widget>[];

    for (int i = 0; i < _group.length; i++) {
      list.add(Container(
        height: 80,
        margin: const EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
            color:
                _group[i].selected ? AppColor.baleBlueColor2 : AppColor.white,
            borderRadius: const BorderRadius.all(Radius.circular(10.0) //
                ),
            border: Border.all(
                color: _group[i].selected
                    ? AppColor.primaryColor
                    : AppColor.buttonColor)),
        child: RadioListTile(
          value: _group[i].index,
          groupValue: _value2,
          selected: _group[i].selected,
          onChanged: (val) {
            setState(() {
              for (int i = 0; i < _group.length; i++) {
                _group[i].selected = false;
              }
              _value2 = val!;
              _group[i].selected = true;
            });
          },
          activeColor:
              _group[i].selected ? AppColor.primaryColor : AppColor.white,
          controlAffinity: ListTileControlAffinity.trailing,
          title: DefaultText(
              text: ' ${_group[i].title}',
              color: AppColor.balck2,
              fontSize: 16,
              fontWeight: FontWeight.w500),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: DefaultText(
                text: ' ${_group[i].subTitle}',
                color: AppColor.secFont,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ),
      ));
    }

    Column column = Column(
      children: list,
    );
    return column;
  }

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
            text: "Type of work",
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
            height: 2.5.h,
          ),
          makeRadioTiles(),
          SizedBox(
            height: 12.h,
          ),
          widget.button,
        ],
      ),
    );
  }
}
