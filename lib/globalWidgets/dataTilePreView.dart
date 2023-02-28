import 'package:eye_scrim/contants/color.dart';
import 'package:eye_scrim/contants/screenSize.dart';
import 'package:flutter/material.dart';

class DataTilePreView extends StatelessWidget {
  DataTilePreView({
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
        fontSize: 12,
      ),
    ),
    Text(
      "(여)",
      style: TextStyle(
        color: blackColor,
        fontSize: 12,
      ),
    ),
  ];
  final int peopleNum;
  List<Text> status = [
    new Text(
      "신청",
      style: TextStyle(
        color: blackColor,
        fontSize: 10,
      ),
    ),
    new Text(
      "마감",
      style: TextStyle(
        color: blackColor,
        fontSize: 10,
      ),
    ),
    new Text(
      "지원 완료",
      style: TextStyle(
        color: blackColor,
        fontSize: 10,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (size.width - (size.width / 15)) / 4,
      child: Card(
        elevation: 0,
        color: grayLightColor_more,
        child: ListTile(
            contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 9 / 360, size.height / 64, 0, 0),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 12, color: grayAccentColor),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        size.width * 9 / 360, size.width * 9 / 360, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          univ,
                          style: TextStyle(fontSize: 12, color: blackColor),
                        ),
                        sex[sexIndex],
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 9 / 360, size.width * 3 / 360, 0, 0),
                  child: Text(
                    '$peopleNum' + '명',
                    style: TextStyle(fontSize: 12, color: blackColor),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.width * 15 / 360),
                    child: Container(
                      width: size.width / 6,
                      height: size.height / 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: backgroundColor),
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child: status[stateIndex],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
