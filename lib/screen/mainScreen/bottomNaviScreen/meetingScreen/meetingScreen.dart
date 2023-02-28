import 'package:eye_scrim/contants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'meetingTab/applyMeeting/applyMeetingController.dart';
import 'meetingTab/meetingListScreen.dart';
import 'meetingTab/myMeetingScreen.dart';

final ApplyMeetingController _controller = Get.find();

class MeetingScreen extends StatefulWidget {
  const MeetingScreen({Key? key}) : super(key: key);

  @override
  _MeetingScreenState createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();

    controller = TabController(vsync: this, length: 2);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 200,
              child: TabBar(
                indicatorColor: primaryColor,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.zero,
                controller: controller,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "미팅리스트"),
                  Tab(text: "나의 미팅"),
                ],
              ),
            ),
            SizedBox(
              width: 24,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: backgroundColor),
        child: TabBarView(controller: controller, children: [
          MeetingListScreen(),
          MyMeetingScreen(),
        ]),
      ),
    );
  }
}
