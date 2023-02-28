import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:flutter/material.dart';

class AppliedMeetingFriends extends StatelessWidget {
  const AppliedMeetingFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 4 / 640),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 4 / 360, right: size.width * 4 / 360),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "aaaa",
                  style: TextStyle(fontSize: size.height * 13 / 640),
                ),
                Text(
                  "aaaa",
                  style: TextStyle(fontSize: size.height * 13 / 640),
                ),
                Text(
                  "aaaa",
                  style: TextStyle(fontSize: size.height * 13 / 640),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 4 / 640),
            child: Container(
              width: size.width * 200 / 360,
              height: 1,
              color: grayAccentColor,
            ),
          )
        ],
      ),
    );
  }
}
