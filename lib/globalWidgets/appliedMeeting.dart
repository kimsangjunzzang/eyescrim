import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:eye_scrim/customDatas/appliedUserFriends.dart';
import 'package:flutter/material.dart';

class AppliedMeeting extends StatelessWidget {
  AppliedMeeting({
    Key? key,
    required this.major,
    required this.univ,
    required this.sex,
  }) : super(key: key);
  final String major;
  final String univ;
  final String sex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(size.width * 18 / 360),
      child: Container(
        width: size.width * 255 / 360,
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
        child: Card(
          elevation: 0,
          color: backgroundColor,
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 15 / 360,
                      top: size.width * 15 / 360,
                      bottom: size.width * 20 / 360),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${univ} ",
                            style: TextStyle(fontSize: size.height * 13 / 640),
                          ),
                          Text(
                            "(${sex})",
                            style: TextStyle(fontSize: size.height * 13 / 640),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width * 10 / 360),
                        child: Text(
                          "${major}",
                          style: TextStyle(fontSize: size.height * 13 / 640),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    height: size.height * 75 / 640,
                    width: size.width * 220 / 360,
                    child: Card(
                        elevation: 0,
                        color: grayLightColor_more,
                        child: ListView.builder(
                          itemCount: aMF.length,
                          itemBuilder: (context, index) {
                            return aMF[index];
                          },
                        ))),
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 8 / 640,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Container(
                            height: size.height * 27 / 640,
                            width: size.width * 95 / 360,
                            decoration: BoxDecoration(
                              color: primaryColor,
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
                            child: Card(
                              elevation: 0,
                              color: primaryColor,
                              child: Center(
                                child: Text(
                                  "수락",
                                  style: TextStyle(
                                      fontSize: size.height * 17 / 640,
                                      color: backgroundColor),
                                ),
                              ),
                            )),
                      ),
                      InkWell(
                        child: Container(
                            height: size.height * 27 / 640,
                            width: size.width * 95 / 360,
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
                            child: Card(
                              elevation: 0,
                              color: backgroundColor,
                              child: Center(
                                child: Text(
                                  "거절",
                                  style: TextStyle(
                                      fontSize: size.height * 17 / 640),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
