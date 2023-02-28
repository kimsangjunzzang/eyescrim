import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CompleteScreen extends StatefulWidget {
  @override
  _CompleteScreenState createState() => _CompleteScreenState();
}

class _CompleteScreenState extends State<CompleteScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        // 컬럼으로 교체
        // 자식들을
        children: <Widget>[
          titleSection(size) // titleSection 컨테이너 추가
        ],
      ),
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection(var size) {
    return Container(
      color: Color(0xff2D2D2D),
      // 컨테이너 내부 상하좌우에 32픽셀만큼의 패딩 삽입
      // 자식으로 로우를 추가
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // 로우에 위젯들(Expanded, Icon, Text)을 자식들로 추가
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: size.height * (280 / 640),
                      width: size.width * (335 / 360),
                      color: Color(0xff2D2D2D),
                    ),
                    Container(
                      height: size.height * (280 / 640),
                      width: size.width * (1 / 360),
                      color: Colors.white,
                    ),
                    Container(
                      height: size.height * (280 / 640),
                      width: size.width * (24 / 360),
                      color: Color(0xff2D2D2D),
                    ),
                  ],
                ),
                // 컬럼의 첫번째 자식 컨테이너

                Row(
                  children: [
                    Container(
                      width: size.width * (106 / 360),
                    ),
                    Container(
                      height: size.height * (39 / 640),
                      width: size.width * (149 / 360),
                      color: Color(0xff2D2D2D),
                      // 컨테이너 내부 하단에 8픽셀만큼 패딩 삽입
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              // 컨테이너의 자식으로 텍스트 삽입
                              "인증을 기다려주세요",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold // 텍스트 강조 설정
                                  ),
                            ),
                            Text(
                              // 컨테이너의 자식으로 텍스트 삽입
                              "지금 검토하는 중입니다.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold // 텍스트 강조 설정
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * (80 / 360),
                      height: size.height * (39 / 640),
                    ),
                    Container(
                      width: size.width * (1 / 360),
                      height: size.height * (39 / 640),
                      color: Colors.white,
                    ),
                    Container(
                      width: size.width * (24 / 360),
                      height: size.height * (39 / 640),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * (180 / 640),
                      width: size.width * (335 / 360),
                      color: Color(0xff2D2D2D),
                    ),
                    Container(
                      height: size.height * (180 / 640),
                      width: size.width * (1 / 360),
                      color: Colors.white,
                    ),
                    Container(
                      height: size.height * (180 / 640),
                      width: size.width * (24 / 360),
                      color: Color(0xff2D2D2D),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * (39 / 640),
                      width: size.width * (330 / 360),
                      color: Color(0xff2D2D2D),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white),
                      height: size.height * (39 / 640),
                      width: size.width * (11 / 360),
                      child: Center(),
                    ),
                  ],
                ),
                Container(
                  height: size.height * (102 / 640),
                  width: size.width * (360 / 360),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
