import 'package:flutter/material.dart';
import 'package:my_app/utilities/theme/AppColor.dart';
import 'package:my_app/view/screens/barScreens/messageScreen/chatScreen.dart';
import 'package:my_app/view/widgets/default_text.dart';
import 'package:sizer/sizer.dart';

import 'MessageScreen.dart';

TextEditingController messageController = TextEditingController();

class Chat extends StatelessWidget {
  int indx;
  Chat({Key? key, required this.indx}) : super(key: key);
  List<Icon> icons = [
    const Icon(Icons.work_outline_rounded),
    const Icon(Icons.note_outlined),
    const Icon(Icons.sms_outlined),
    const Icon(Icons.notifications_none_rounded),
    const Icon(Icons.file_download_outlined),
    const Icon(Icons.delete_outline_rounded),
  ];
  List<String> titles = [
    'Visit job post',
    'View my application',
    'Mark as unread',
    "Mute",
    "Archive",
    "Delete conversation"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.white2,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: AppColor.white,
          elevation: 0.5,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              messageImages[indx],
              SizedBox(
                width: 1.5.w,
              ),
              DefaultText(
                text: messageTitle[indx],
                color: AppColor.balck2,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    backgroundColor: AppColor.white,
                    // context and builder are
                    // required properties in this widget
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(24.0),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return ListView.builder(
                        padding: EdgeInsets.all(1.h),
                        itemCount: 6,
                        itemBuilder: (context, int index2) => Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(1.h),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                        color: AppColor.buttonColor)),
                                child: ListTile(
                                  onTap: () {},
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 2.5.w),
                                  leading: icons[index2],
                                  title: DefaultText(
                                      text: titles[index2],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.navigate_next_rounded,
                                        size: 20.sp,
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Image.asset(
                  "assets/more.png",
                  cacheWidth: 50,
                ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 25,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(2.2.h),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColor.buttonColor,
                        thickness: 1,
                        endIndent: 15,
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Center(
                      child: DefaultText(
                        text: "Today,  Nov 13",
                        fontSize: 14,
                        color: AppColor.secFont,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // const SizedBox(width: 20),
                    Expanded(
                      child: Divider(
                        color: AppColor.buttonColor,
                        thickness: 1,
                        indent: 15,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            const ChatScreen(),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 3.2.h,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 3.h,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attachment_rounded,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColor.buttonColor2)),
                    height: 7.h,
                    width: 60.w,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextFormField(
                            controller: messageController,
                            decoration: const InputDecoration(
                              hintText: 'Write a message',
                              border: InputBorder.none,
                            ))),
                  ),
                  CircleAvatar(
                    radius: 3.2.h,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 3.h,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic_none_outlined,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
