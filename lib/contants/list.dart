
import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/chatScreen/chatScreen.dart';
import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/homeScreen/homeScreen.dart';
import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/meetingScreen/meetingScreen.dart';
import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/profileScreen/profileScreen.dart';
import 'package:flutter/material.dart';

class GlobalProfile {
  static List<Widget> bottomNavigationPages = <Widget>[
    HomeScreen(),
    MeetingScreen(),
    ChatScreen(),
    ProfileScreen()
  ];
}
