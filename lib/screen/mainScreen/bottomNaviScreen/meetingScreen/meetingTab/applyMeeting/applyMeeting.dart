import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:eye_scrim/customDatas/addFriends.dart';
import 'package:eye_scrim/customDatas/hostInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'applyMeetingController.dart';

final ApplyMeetingController controller = Get.find();
HostInfo user = new HostInfo();

class ApplyMeeting extends StatelessWidget {
  const ApplyMeeting({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Obx(
      () => Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(),
              _DevideLine(),
              UserProfile(),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, _index) {
                    if (controller.removeFriend[_index] == true.obs)
                      return Friends[_index];
                    else {
                      return Container(
                        height: 0,
                        width: 0,
                      );
                    }
                  }),
              if (controller.index.value != 4) AddFriendsBtn(),
              ApplyBtn()
            ],
          ),
        ),
      ),
    );
  }
}

class ApplyBtn extends StatelessWidget {
  ApplyBtn({
    Key? key,
  }) : super(key: key);

  final ApplyMeetingController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Get.back();
                controller.apply();
              },
              child: Container(
                width: size.width - (size.width * 2 * 24 / 360),
                height: size.height * 30 / 640,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: grayAccentColor.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4, // changes position of shadow
                    ),
                  ],
                ),
                child: Card(
                  elevation: 0,
                  color: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "등록하기   20 ",
                            style: TextStyle(
                                fontSize: size.height * 14 / 640,
                                color: primaryColor),
                          ),
                          SvgPicture.asset(
                            "assets/images/littleEyescrim.svg",
                            height: size.height * 16 / 640,
                            width: size.width * 16 / 360,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AddFriendsBtn extends StatelessWidget {
  AddFriendsBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        for (int i = 0; i < 4; i++) {
          if (controller.removeFriend[i] == false.obs) {
            controller.removeFriend[i] = true.obs;
            break;
          }
        }
        controller.increase();
        print(controller.index.value);
      },
      child: Center(
        child: Container(
          width: size.width - (size.width * 2 * 24 / 360),
          height: size.height * 30 / 640,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: grayAccentColor.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4, // changes position of shadow
              ),
            ],
          ),
          child: Card(
            elevation: 0,
            color: backgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_rounded,
                      color: primaryColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DecreaseFriendsBtn extends StatelessWidget {
  DecreaseFriendsBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.decrease();
        print(controller.index.value);
      },
      child: Center(
        child: Container(
          width: size.width - (size.width * 2 * 24 / 360),
          height: size.height * 30 / 640,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: grayAccentColor.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 4, // changes position of shadow
              ),
            ],
          ),
          child: Card(
            elevation: 0,
            color: backgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.remove,
                      color: primaryColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(size.width * 22 / 360, 0, 0, 0),
      child: Container(
        color: backgroundColor,
        width: size.width - (size.width * 22 / 360) * 2,
        height: size.height * 150 / 640,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: size.height * 100 / 640,
                width: size.width * 90 / 360,
                color: backgroundColor,
                child: SvgPicture.asset(
                  "assets/images/applyMeetingProfile.svg",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 20 / 360),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: size.height * 8 / 640),
                    child: Text(
                      user.name,
                      style: TextStyle(
                          fontSize: size.width * 14 / 360,
                          color: grayAccentColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: size.height * 8 / 640),
                    child: Text(user.univ,
                        style: TextStyle(
                            fontSize: size.width * 14 / 360,
                            color: grayAccentColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: size.height * 8 / 640),
                    child: Text(user.major,
                        style: TextStyle(
                            fontSize: size.width * 14 / 360,
                            color: grayAccentColor)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: size.height * 8 / 640),
                    child: Row(
                      children: [
                        Text("${user.tall}cm",
                            style: TextStyle(
                                fontSize: size.width * 14 / 360,
                                color: grayAccentColor)),
                        Padding(
                          padding: EdgeInsets.only(left: size.height * 8 / 640),
                          child: Text("${user.age}세",
                              style: TextStyle(
                                  fontSize: size.width * 14 / 360,
                                  color: grayAccentColor)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _DevideLine extends StatelessWidget {
  const _DevideLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 1,
      color: grayLightColor_more,
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(size.width * 22 / 360, 0, 0, 0),
      child: Container(
        height: 60,
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    controller.index = 0.obs;
                    for (int i = 0; i < 4; i++) {
                      controller.removeFriend[i] = false.obs;
                    }
                    Get.back();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: size.width * 4 / 360),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: primaryColor,
                    ),
                  ),
                ),
                Text(
                  "미팅 등록",
                  style: TextStyle(fontSize: size.width / 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
