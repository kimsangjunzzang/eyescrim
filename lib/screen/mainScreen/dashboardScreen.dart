import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/provider/dashboardScreenProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'bottomNaviScreen/chatScreen/chatScreen.dart';
import 'bottomNaviScreen/homeScreen/homeScreen.dart';
import 'bottomNaviScreen/meetingScreen/meetingScreen.dart';
import 'bottomNaviScreen/profileScreen/profileScreen.dart';
import 'dashboardController.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<BottomNavigationBarItem> btmNavItems = [
    BottomNavigationBarItem(
        activeIcon: SvgPicture.asset('assets/images/selectedHome.svg',
            height: 36, width: 36),
        icon: SvgPicture.asset(
          'assets/images/home.svg',
          height: 20,
          width: 20,
        ),
        label: '홈'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/images/meetingBoard.svg',
          height: 20,
          width: 20,
        ),
        activeIcon: SvgPicture.asset('assets/images/selectedMeetingBoard.svg',
            height: 36, width: 36),
        label: '홈'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/images/chattingBoard.svg',
          height: 20,
          width: 20,
        ),
        activeIcon: SvgPicture.asset('assets/images/selectedChattingBoard.svg',
            height: 36, width: 36),
        label: '홈'),
    BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/images/userInfo.svg',
          height: 20,
          width: 20,
        ),
        activeIcon: SvgPicture.asset('assets/images/selectedUserInfo.svg',
            height: 36, width: 36),
        label: '홈'),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardScreenProvider>(context,listen:false);

      return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: IndexedStack(
            index: provider.tabIndex,
            children: [
              HomeScreen(),
              MeetingScreen(),
              ChatScreen(),
              ProfileScreen()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          backgroundColor: backgroundColor,
          unselectedItemColor: Colors.grey,
          currentIndex: provider.tabIndex,
          onTap:(index) async{
            provider.changeTabIndex(index);
            setState(() {

            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: btmNavItems,
        ),
      );

  }
}
