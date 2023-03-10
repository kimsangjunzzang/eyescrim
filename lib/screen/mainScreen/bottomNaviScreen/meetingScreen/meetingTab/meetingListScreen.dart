import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/commonGap.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:eye_scrim/customDatas/meetingPeople.dart';
import 'package:eye_scrim/routes/appRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'applyMeeting/applyMeetingController.dart';

class MeetingListScreen extends StatelessWidget {
  MeetingListScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ApplyMeetingController controller = Get.find();
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, _index) {
        if (_index == 0 && controller.checkApply.value) return HeaderTile();
        if (_index == 0 && !controller.checkApply.value)
          return AppliedMeeting();
        if (_index == 1) return DivideTile();
        return dataList[_index - 2];
      },
      itemCount: dataList.length + 2,
    );
  }
}

class AppliedMeeting extends StatelessWidget {
  const AppliedMeeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ApplyMeetingController controller = Get.find();
    return Container(
      height: size.height * 76 / 640,
      child: Card(
        elevation: 1.0,
        color: backgroundColor,
        margin: EdgeInsets.fromLTRB(size_12, size_8, size_12, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "λμ λ―Έν ",
                      style: TextStyle(
                          fontSize: size.height * 14 / 640,
                          color: primaryColor),
                    ),
                    Text(
                      "ν­μμ",
                      style: TextStyle(
                          fontSize: size.height * 12 / 640,
                          color: grayAccentColor),
                    )
                  ],
                ),
                Text(
                  "μ€μκ°μΌλ‘ λ―Έν μ μ²­ νν©μ νμΈνμΈμ.",
                  style: TextStyle(
                      fontSize: size.height * 12 / 640, color: grayAccentColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DivideTile extends StatelessWidget {
  const DivideTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MeetingListTab();
  }
}

class MeetingListTab extends StatelessWidget {
  const MeetingListTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: primaryColor,
        height: 40,
        margin: EdgeInsets.fromLTRB(0, size_8, 0, size_8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(width: size_20),
            Container(
              width: 40,
              child: Center(
                child: Text(
                  'λλ€μ',
                  style: TextStyle(fontSize: 14, color: backgroundColor),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'νκ΅ (μ±λ³)',
                      style: TextStyle(fontSize: 14, color: backgroundColor),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 60,
              child: Center(
                child: Text(
                  'μΈμ',
                  style: TextStyle(fontSize: 14, color: backgroundColor),
                ),
              ),
            ),
            Container(
              width: 77,
              child: Center(
                child: Text(
                  'λͺ¨μ§νν©',
                  style: TextStyle(fontSize: 14, color: backgroundColor),
                ),
              ),
            ),
            SizedBox(width: size_20),
          ],
        ));
  }
}

class HeaderTile extends StatelessWidget {
  const HeaderTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
      child: Container(
        width: size.width - (size.width * 2 * 24 / 360),
        height: size.height * 76 / 640,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: grayAccentColor.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 4, // changes position of shadow
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Get.toNamed(AppRoute.ApplyMeeting);
          },
          child: Card(
            elevation: 0,
            color: backgroundColor,
            // margin: EdgeInsets.fromLTRB(size_12, size_8, size_12, 0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset('assets/images/add.svg')),
                    Text(
                      "λ±λ‘νκΈ°",
                      style: TextStyle(
                        fontSize: size.height * 14 / 640,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 4 / 640),
                  child: Text(
                    "λ―Έν λ±λ‘μ ν λ²μ νλλ§ κ°λ₯ν©λλ€",
                    style: TextStyle(
                        fontSize: size.height * 12 / 640,
                        color: grayLightColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
