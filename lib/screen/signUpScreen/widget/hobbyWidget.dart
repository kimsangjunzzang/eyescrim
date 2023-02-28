
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'studentAuthWidget.dart';

class HobbyInfo extends StatefulWidget {
  @override
  _HobbyInfoState createState() => _HobbyInfoState();
}

class _HobbyInfoState extends State<HobbyInfo> {
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;
  bool option5 = false;
  bool option6 = false;
  bool option7 = false;
  bool option8 = false;
  bool option9 = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          '회원가입',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            color: Colors.grey,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.grey,
            icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        // 자식들을 추가
        children: <Widget>[
          Container(
            height: size.height * (19 / 640),
          ),
          titleSection(size) // titleSection 컨테이너 추가
        ],
      ),
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection(size) {
    return Container(
      // 컨테이너 내부 상하좌우에 32픽셀만큼의 패딩 삽입

      // 자식으로 로우를 추가
      child: Row(
        // 로우에 위젯들(Expanded, Icon, Text)을 자식들로 추가
        children: <Widget>[
          Container(
            width: size.width * (20 / 360),
          ),
          // 첫번째 자식
          Expanded(
            // 첫번째 자식의 자식으로 컬럼 추가
            child: Container(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  // 자식들을 왼쪽정렬로 배치함
                  // 컬럼의 자식들로 컨테이너와 텍스트를 추가

                  children: <Widget>[
                    Container(
                      height: size.height * (19 / 640),
                    ),
                    Row(
                      children: [
                        Container(
                          height: size.height * (8.32 / 640),
                          width: size.width * (8.32 / 360),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                            color: Color(0xff6393E7),
                          ),
                        ),
                        SizedBox(
                          width: size.width * (6.52 / 360),
                        ),
                        Container(
                          height: size.height * (8.32 / 640),
                          width: size.width * (8.32 / 360),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                            color: Color(0xff948CE7),
                          ),
                        ),
                        SizedBox(
                          width: size.width * (6.52 / 360),
                        ),
                        Container(
                          height: size.height * (8.32 / 640),
                          width: size.width * (8.32 / 360),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                            color: Color(0xffD582E8),
                          ),
                        ),
                        SizedBox(
                          width: size.width * (6.52 / 360),
                        ),
                        Container(
                          height: size.height * (8.32 / 640),
                          width: size.width * (8.32 / 360),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                            color: Color(0xffCCCCCC),
                          ),
                        ),
                        SizedBox(
                          width: size.width * (6.52 / 360),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * (18.68 / 640),
                    ),

                    // 컬럼의 첫번째 자식 컨테이너
                    Container(
                      // 컨테이너 내부 하단에 8픽셀만큼 패딩 삽입
                      child: Text(
                        // 컨테이너의 자식으로 텍스트 삽입
                        "관심사",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold // 텍스트 강조 설정
                            ),
                      ),
                    ),
                    Container(
                      height: size.height * (10 / 640),
                    ),
                    // 컬럼의 두번째 자식으로 텍스트 삽입
                    Text(
                      '내 관심사를 설정하면 더 쉽게 대화를 진행할 수 있어요!',
                      style: TextStyle(
                          fontSize: 10, color: Colors.grey[500] // 텍스트의 색상을 설정
                          ),
                    ),
                    Container(
                      height: size.height * (55 / 640),
                    ),

                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            option1 = !option1;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA28BE7)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(29.0)),
                              color: option1 == true?
                              Color(0xffA28BE7): Colors.white,
                            ),
                            height: size.height * (29 / 640),
                            width: size.width * (47 / 360),
                            child: Center(
                              child: Text(
                                "MBTI",
                                style: TextStyle(
                                  color: option1 == true?
                                  Colors.white: Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (12 / 332),
                        ),
                        InkWell(
                          onTap: () {
                            option2 = !option2;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA28BE7)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(29.0)),
                              color: option2 == true?
                              Color(0xffA28BE7): Colors.white,
                            ),
                            height: size.height * (29 / 640),
                            width: size.width * (47 / 360),
                            child: Center(
                              child: Text(
                                "혈액형",
                                style: TextStyle(
                                  color: option2 == true?
                                  Colors.white: Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * (10 / 640),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            option3 = !option3;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA28BE7)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(29.0)),
                              color: option3 == true?
                              Color(0xffA28BE7): Colors.white,
                            ),
                            height: size.height * (29 / 640),
                            width: size.width * (47 / 360),
                            child: Center(
                              child: Text(
                                "영화",
                                style: TextStyle(
                                  color: option3 == true?
                                  Colors.white: Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (12 / 360),
                        ),
                        InkWell(
                          onTap: () {
                            option4 = !option4;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA28BE7)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(29.0)),
                              color: option4 == true?
                              Color(0xffA28BE7): Colors.white,
                            ),
                            height: size.height * (29 / 640),
                            width: size.width * (73 / 360),
                            child: Center(
                              child: Text(
                                "에니메이션",
                                style: TextStyle(
                                  color: option4 == true?
                                  Colors.white: Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (20 / 360),
                        ),
                        InkWell(
                          onTap: () {
                            option5 = !option5;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA28BE7)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(29.0)),
                              color: option5 == true?
                              Color(0xffA28BE7): Colors.white,
                            ),
                            height: size.height * (29 / 640),
                            width: size.width * (47 / 360),
                            child: Center(
                              child: Text(
                                "만화책",
                                style: TextStyle(
                                  color: option5 == true?
                                  Colors.white: Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * (10 / 640),
                    ),

                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            option6 = !option6;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA28BE7)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(29.0)),
                              color: option6 == true?
                              Color(0xffA28BE7): Colors.white,
                            ),
                            height: size.height * (29 / 640),
                            width: size.width * (47 / 360),
                            child: Center(
                              child: Text(
                                "여행",
                                style: TextStyle(
                                  color: option6 == true?
                                  Colors.white: Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (12 / 360),
                        ),
                        InkWell(
                          onTap: () {
                            option7 = !option7;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA28BE7)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(29.0)),
                              color: option7 == true?
                              Color(0xffA28BE7): Colors.white,
                            ),
                            height: size.height * (29 / 640),
                            width: size.width * (47 / 360),
                            child: Center(
                              child: Text(
                                "독서",
                                style: TextStyle(
                                  color: option7 == true?
                                  Colors.white: Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (12 / 360),
                        ),
                        InkWell(
                          onTap: () {
                            option8 = !option8;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffA28BE7)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(29.0)),
                              color: option8 == true?
                              Color(0xffA28BE7): Colors.white,
                            ),
                            height: size.height * (29 / 640),
                            width: size.width * (47 / 360),
                            child: Center(
                              child: Text(
                                "운동",
                                style: TextStyle(
                                  color: option8 == true?
                                  Colors.white: Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: size.height * (230 / 640),
                    ),

                    InkWell(
                      onTap: (){
                        if(option1==true ||option2==true ||option3 == true ||option4 ==true
                        ||option5 ==true||option6 ==true||option7 ==true||option8 ==true){
                          Get.to(() => StudentAuth());
                        /*  Navigator.push(context,
                              MaterialPageRoute(builder:(BuildContext)=>StudentAuth()));*/
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          color:(option1==true ||option2==true ||option3 == true ||option4 ==true
                        ||option5 ==true||option6 ==true||option7 ==true||option8 ==true)?
                          Color(0xffA28BE7): Color(0xfffD0D0D0),
                        ),
                        height: size.height * (40 / 640),
                        width: size.width * (320 / 360),
                        child: Center(
                          child: Text(
                            "다음",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
            // 두번째 자식 아이콘
          )
        ],
      ),
    );
  }
}
