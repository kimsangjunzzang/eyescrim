import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/commonGap.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:eye_scrim/customDatas/hostInfo.dart';
import 'package:eye_scrim/customDatas/meetingPeople.dart';
import 'package:eye_scrim/provider/dashboardScreenProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
//import 'package:slide_countdown_clock/slide_countdown_clock.dart';

import '../../dashboardController.dart';

HostInfo user = new HostInfo();

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Duration _duration = Duration(seconds: 10000);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          AppBar(),
          _DevideLine(),
          MainBody(duration: _duration),
        ],
      ),
    ));
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

class MainBody extends StatelessWidget {
  const MainBody({
    Key? key,
    required Duration duration,
  })  : _duration = duration,
        super(key: key);

  final Duration _duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height - 300,
      child: ListView(
        children: [
          Container(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                FreeDateTimer(duration: _duration),
                ProfileInfo(),
                MeetingPreview(),
                FreeCornAndDate()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FreeCornAndDate extends StatelessWidget {
  const FreeCornAndDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/images/freeCorn.svg",
              )),
          InkWell(
              onTap: () {}, child: SvgPicture.asset("assets/images/goDate.svg"))
        ],
      ),
    );
  }
}

class MeetingPreview extends StatelessWidget {
  const MeetingPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DashboardScreenProvider>(context,listen:false);
    return Container(
      width: size.width,
      height: size.height * 163 / 640,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * 12 / 360,
                size.width * 16 / 360,
                size.width * 12 / 360,
                size.width * 16 / 360),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '실시간 미팅',
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                  onTap: () {
                   provider.changeTabIndex(1);
                    print(1);
                  },
                  child: Text(
                    '더보기 >',
                    style: TextStyle(fontSize: 11, color: primaryColor),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width * 12 / 360, 0,
                size.width * 12 / 360, size.width * 16 / 360),
            child: Container(
              height: size.height * 19 / 128,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return dataListPreview[index];
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      height: size.height * 5 / 32,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: size.width * 11 / 128,
                  backgroundColor: backgroundColor,
                  child: SvgPicture.asset("assets/images/selectedUserInfo.svg"),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width / 20, size.width / 20, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: size.width / 25),
                        child: Text(
                          user.name,
                          style: TextStyle(
                              color: backgroundColor,
                              fontSize: size.width * 18 / 360),
                        ),
                      ),
                      Text(
                        '${user.univ} ${user.major}',
                        style: TextStyle(
                            color: backgroundColor,
                            fontSize: size.width * 13 / 360),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          '${user.tall}cm / ${user.age}세',
                          style: TextStyle(
                              color: backgroundColor,
                              fontSize: size.width * 13 / 360),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            children: [
                              for (var hobby in user.hobby)
                                Text(
                                  "[${hobby}] ",
                                  style: TextStyle(
                                      color: backgroundColor,
                                      fontSize: size.width * 11 / 360),
                                )
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.fromLTRB(0, 0, size.width / 20, size.height / 14),
              child: InkWell(
                onTap: () {
                  print(1);
                },
                child: Text(
                  "수정",
                  style: TextStyle(
                      color: backgroundColor, fontSize: size.width * 13 / 360),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 60 / 640,
      color: backgroundColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: size_24,
                ),
                SvgPicture.asset(
                  "assets/images/selectedEyescrimTextImage.svg",
                  height: size.height * 20 / 640,
                  width: size.width / 10,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "111",
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  icon: SvgPicture.asset(
                    "assets/images/eyescrimLinearIcon.svg",
                    height: size.height * 25 / 640,
                    width: size.width * 25 / 320,
                  ),
                  onPressed: () {},
                ),
                SizedBox(width: 24)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FreeDateTimer extends StatelessWidget {
  const FreeDateTimer({
    Key? key,
    required Duration duration,
  })  : _duration = duration,
        super(key: key);

  final Duration _duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height / 10,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 16,
              ),
              Text(
                "무료 소개팅까지",
                style:
                    TextStyle(fontSize: size.width / 16, color: primaryColor),
              ),
            ],
          ),
 /*         Row(
            children: [
              SlideCountdownClock(
                duration: _duration,
                textStyle: TextStyle(fontSize: size.width / 14),
                slideDirection: SlideDirection.Up,
                separator: ':',
              ),
              SizedBox(
                width: 16,
              ),
            ],
          )*/
        ],
      ),
    );
  }
}
