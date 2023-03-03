import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_app/model/CardModel.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'customText.dart';

class CustomCard extends StatefulWidget {
  CustomCard({
    required this.cardModel,
    Key? key,
  }) : super(key: key);

  CardModel cardModel;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  int selected = 0;
  bool selectedColor = false;
  Color? color1, color2, color3, color4, color5;

  // @override
  // void initState() {
  //   super.initState();
  //   selected.addListener(() {
  //     setState(() {
  //       selected = 0;
  //     });
  //   });
  // }

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   selected.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.yellow[200],
        border: Border.all(
          color: AppColor.buttonColor,
          width: 1.5,
          // strokeAlign: 0.4,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: InkWell(
        onTap: () {
          selected++;
          if (selected > 0) {
            selectedColor = true;
          }
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColor.white2, borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CircleAvatar(
                    backgroundColor: AppColor.buttonColor,
                    radius: 30,
                    child: CircleAvatar(
                      radius: 28,
                      // maxRadius: 4.5.h,
                      backgroundColor: AppColor.white2,
                      child: Icon(
                        widget.cardModel.icon,
                        color: AppColor.black,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0016,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  widget.cardModel.title,
                  fontSize: 16,
                  fontweight: FontWeight.w400,
                  textColor: AppColor.balck2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
