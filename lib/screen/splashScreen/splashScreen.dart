import 'dart:async';
import 'package:eye_scrim/Controllers/fb_messaging.dart';
import 'package:eye_scrim/screen/signUpScreen/widget/conditionAgreeWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'loginStatusScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    NotificationController.instance.takeFCMTokenWhenAppLaunch();
    NotificationController.instance.initLocalNotification();

    Timer(Duration(milliseconds: 1500), () {
      Get.to(() => LoginStatusScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    final String imageLogo = 'assets/images/Group.svg';
    final String letterLogo = 'assets/images/eye scrim.svg';

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor:1.0),
        child: new Scaffold(
          backgroundColor: Colors.white,
          body: new Container(
            height : MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: screenHeight * 0.384375),
                Container(
                  child: SvgPicture.asset(
                    imageLogo,
                    width: screenWidth * 0.516666,
                    height: screenHeight * 0.17,
                  ),
                ),

                Expanded(child: SizedBox()),
                Align(
                  child: Text("© 2021",
                      style: TextStyle(
                        fontSize: 9,
                        color: Color(0xffCCCCCC)
                      )
                  ),
                ),
                Container(
                  child: SvgPicture.asset(
                    letterLogo,
                    width: 84,
                    height: 17,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.0625,),
              ],
            ),

          ),
        ),
      ),
    );
  }
}