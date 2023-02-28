import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/meetingScreen/meetingTab/applyMeeting/applyMeetingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddFriends extends StatelessWidget {
  AddFriends({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final ApplyMeetingController controller = Get.find();
    return Container(
      height: size.height * 60 / 640,
      width: size.width - (size.width * 2 * 24 / 360),
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width * 20 / 360, right: size.width * 20 / 360),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: size.height * 12 / 640),
                  child: Text(
                    "친구${index}",
                    style: TextStyle(
                        fontSize: size.width * 16 / 360, color: primaryColor),
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.decrease();
                    controller.removeFriend[index] = false.obs;
                    print(controller.index);
                  },
                  child: Icon(
                    Icons.remove,
                    size: 13,
                    color: primaryColor,
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(
                children: [
                  Container(
                    width: size.width / 2 - (size.width * 40 / 360),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '나이',
                              style: TextStyle(fontSize: size.width * 18 / 360),
                            ),
                            Text(
                              '세',
                              style: TextStyle(
                                  fontSize: size.width * 18 / 360,
                                  color: grayLightColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 4 / 640),
                    child: Container(
                      height: 1,
                      width: size.width / 2 - (size.width * 40 / 360),
                      color: grayLightColor,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: size.width / 2 - (size.width * 40 / 360),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '키',
                              style: TextStyle(fontSize: size.width * 18 / 360),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                  fontSize: size.width * 18 / 360,
                                  color: grayLightColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 4 / 640),
                    child: Container(
                      height: 1,
                      width: size.width / 2 - (size.width * 40 / 360),
                      color: grayLightColor,
                    ),
                  )
                ],
              ),
            ])
          ],
        ),
      ),
    );
  }
}
