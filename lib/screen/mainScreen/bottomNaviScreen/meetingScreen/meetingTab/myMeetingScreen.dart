import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/commonGap.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:eye_scrim/customDatas/appliedUsers.dart';
import 'package:eye_scrim/customDatas/meetingPeople.dart';
import 'package:flutter/material.dart';

class MyMeetingScreen extends StatelessWidget {
  MyMeetingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(size_28, size_28, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '신청받은 미팅',
                    style: TextStyle(
                        fontSize: size.height * 13 / 640, color: primaryColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(size_24, 4, 0, 0),
              child: Container(
                height: size.height * 200 / 640,
                child: ListView.builder(
                  itemCount: dataListPreview.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return AppliedMeetingData[index];
                  },
                ),
              ),
            ),
          ],
        ),
        Container()
      ],
    );
  }
}
