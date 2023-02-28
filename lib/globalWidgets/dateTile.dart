import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:flutter/material.dart';

class DataTiles extends StatelessWidget {
  DataTiles({
    Key? key,
    required this.name,
    required this.univ,
    required this.peopleNum,
    required this.sexIndex,
    required this.stateIndex,
  }) : super(key: key);
  final String univ;
  final String name;
  final int sexIndex;
  final int stateIndex;
  List<Text> sex = [
    Text(
      "(남)",
      style: TextStyle(
        color: blackColor,
        fontSize: 14,
      ),
    ),
    Text(
      "(여)",
      style: TextStyle(
        color: blackColor,
        fontSize: 14,
      ),
    ),
  ];
  final int peopleNum;
  List<Text> status = [
    new Text(
      "신청",
      style: TextStyle(
        color: backgroundColor,
        fontSize: 14,
      ),
    ),
    new Text(
      "마감",
      style: TextStyle(
        color: backgroundColor,
        fontSize: 14,
      ),
    ),
    new Text(
      "지원 완료",
      style: TextStyle(
        color: backgroundColor,
        fontSize: 14,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      color: backgroundColor,
      child: Column(
        children: [
          ListTile(
              title: Row(
            children: [
              Container(
                width: 40,
                child: Text(
                  name,
                  style: TextStyle(fontSize: 14, color: grayAccentColor),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        univ,
                        style: TextStyle(fontSize: 14, color: blackColor),
                      ),
                      sex[sexIndex],
                    ],
                  ),
                ),
              ),
              Container(
                width: 60,
                child: Center(
                  child: Text(
                    '$peopleNum' + '명',
                    style: TextStyle(fontSize: 14, color: blackColor),
                  ),
                ),
              ),
              Container(
                width: 77,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: stateIndex != 0
                      ? stateIndex != 1
                          ? gradient1Color
                          : grayLightColor
                      : primaryColor,
                ),
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: status[stateIndex],
                  ),
                ),
              )
            ],
          )),
          Container(
            height: 1,
            width: size.width,
            color: grayLightColor,
          )
        ],
      ),
    );
  }
}
