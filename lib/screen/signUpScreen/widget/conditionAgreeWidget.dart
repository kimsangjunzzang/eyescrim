import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'schoolInfoScreen.dart';

class ConditionAgree extends StatefulWidget {
  @override
  _ConditionAgreeState createState() => _ConditionAgreeState();
}

class _ConditionAgreeState extends State<ConditionAgree> {
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;
  bool selected = false;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0, //앱바 줄 사라짐
        backgroundColor: Colors.white,
        title: Text(
          '이용약관동의',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
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
      // 컨테이너 내부 상하좌우에 32픽셀만큼의 패딩 삽입
      // 자식으로 로우를 추가
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // 로우에 위젯들(Expanded, Icon, Text)을 자식들로 추가
        children: <Widget>[
          SizedBox(
            width: size.width * (20 / 360),
          ),

          // 첫번째 자식
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // 자식들을 왼쪽정렬로 배치함
            // 컬럼의 자식들로 컨테이너와 텍스트를 추가
            children: <Widget>[
              Container(
                height: size.height * (44 / 640),
              ),
              // 컬럼의 첫번째 자식 컨테이너
              Container(
                // 컨테이너 내부 하단에 8픽셀만큼 패딩 삽입
                child: Text(
                  // 컨테이너의 자식으로 텍스트 삽입
                  "eyescrim 이용 약관에 동의해주세요.",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold // 텍스트 강조 설정
                      ),
                ),
              ),
              // 컬럼의 두번째 자식으로 텍스트 삽입
              Container(
                child: Text(
                  '서비스 사용을 위한 약관에 동의해주세요',
                  style: TextStyle(
                      fontSize: 13, color: Colors.grey[500] // 텍스트의 색상을 설정
                      ),
                ),
              ),
              Container(
                height: size.height * (77 / 640),
              ),
              InkWell(
                onTap: () {
                  option1 = !option1;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffA28BE7)),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: ((option1 == true)||(option2&&option3&&option4)==true)
                        ? Color(0xffEDE7FF)
                        : Colors.white,
                  ),
                  height: size.height * (34 / 640),
                  width: size.width * (320 / 360),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * (12 / 332),
                      ),
                      Text(
                        "전체 동의",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: size.width * (219 / 332),
                      ),

                      if ((option1 == false)&&((option2&&option3&&option4)==false))
                        Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,

                            border: Border.all(
                              width: 2,
                              color: Color(0xffCCCCCC),)
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child:  Icon(
                                Icons.check,
                                size: 15.0,
                                color:Color(0xffCCCCCC) )

                        ),
                      ),
                      if ((option1 == true)||(option2&&option3&&option4)==true)
                        Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:  Color(0xffA28BE7),

                          border: Border.all(
                              width: 2,
                              color:Color(0xffA28BE7)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(
                                Icons.check,
                                size: 15.0,
                                color:Colors.white
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: 10,
              ),

              InkWell(
                onTap: () {
                  option2 = !option2;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffA28BE7)),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: (option1 == true) || (option2 == true)
                        ? Color(0xffEDE7FF)
                        : Colors.white,
                  ),
                  height: size.height * (34 / 640),
                  width: size.width * (320 / 360),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * (12 / 332),
                      ),
                      Text(
                        "서비스 이용약관",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        width: size.width * (191 / 332),
                      ),
                      if (option2 == false&&option1==false) Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,

                            border: Border.all(
                              width: 2,
                              color: Color(0xffCCCCCC),)
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(
                                Icons.check,
                                size: 15.0,
                                color:Color(0xffCCCCCC) )
                        ),
                      ),
                      if (option2 == true||option1==true) Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:  Color(0xffA28BE7),

                          border: Border.all(
                              width: 2,
                              color:Color(0xffA28BE7)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(
                                Icons.check,
                                size: 15.0,
                                color:Colors.white)
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                height: 10,
              ),

              InkWell(
                onTap: () {
                  option3 = !option3;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffA28BE7)),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: (option1 == true) || (option3 == true)
                        ? Color(0xffEDE7FF)
                        : Colors.white,
                  ),
                  height: size.height * (34 / 640),
                  width: size.width * (320 / 360),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * (12 / 332),
                      ),
                      Text(
                        "개인정보 처리 방침",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: size.width * (185 / 332),
                      ),
                      if (option3 == false&&option1 ==false) Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,

                            border: Border.all(
                              width: 2,
                              color: Color(0xffCCCCCC),)
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(
                                Icons.check,
                                size: 15.0,
                                color:Color(0xffCCCCCC) )

                        ),
                      ),
                      if (option3 == true||option1 ==true) Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:  Color(0xffA28BE7),

                            border: Border.all(
                              width: 2,
                              color:Color(0xffA28BE7)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(
                                Icons.check,
                                size: 15.0,
                                color:Colors.white)

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  option4 = !option4;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffA28BE7)),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: (option1 == true) || (option4 == true)
                        ? Color(0xffEDE7FF)
                        : Colors.white,
                  ),
                  height: size.height * (34 / 640),
                  width: size.width * (320 / 360),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * (12 / 332),
                      ),
                      Text(
                        "마케팅 정보 수신에 대한 동의(선택)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: size.width * (120 / 332),
                      ),
                      if (option4 == false&&option1 ==false) Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,

                            border: Border.all(
                              width: 2,
                              color: Color(0xffCCCCCC),)
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child:Icon(
                                Icons.check,
                                size: 15.0,
                                color:Color(0xffCCCCCC) )

                        ),
                      ),
                      if (option4 == true||option1 ==true) Container(
                        height: 20,
                        width: 20,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:  Color(0xffA28BE7),

                          border: Border.all(
                              width: 2,
                              color:Color(0xffA28BE7)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(
                                Icons.check,
                                size: 15.0,
                                color:Colors.white)

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: //179,
                100
              ),/*
              InkWell(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  height: 30,
                  width: 30,

                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selected ? Color(0xffA28BE7) : Colors.white,

                      border: Border.all(
                          width: 2,
                          color: selected ? Color(0xffA28BE7) : Color(0xffCCCCCC),)
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: selected ? Icon(
                        Icons.check,
                        size: 14.0,
                        color: selected ? Colors.white :Colors.black )
                       : Container()
                  ),
                ),

              ),*/



              Container(
              width: 14,
              height: 90,
              ),
              InkWell(
                onTap: () {
                  if ((option1 == true) ||
                      (option2 == true && option3 == true && option4 == true)) {
                    Get.to(() => SchoolInfo());
                   /* Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => SchoolInfo()));*/
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(45.0)),
                    color: ((option1 == true) ||
                            (option2 == true &&
                                option3 == true &&
                                option4 == true))
                        ? Color(0xffA28BE7)
                        : Color(0xfffD0D0D0),
                  ),

                  height: size.height * (40/640),
                  width: size.width * (320/360),
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
            ],
          ),
          // 두번째 자식 아이콘
        ],
      ),
    );
  }

}
