import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'hobbyWidget.dart';

class MyInfo extends StatefulWidget {
  @override
  _MyInfoState createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  final _NicknameController = TextEditingController();
  final _AgeController = TextEditingController();
  final _HeightController = TextEditingController();
  bool option1 = false;
  bool option2 = false;


  bool _isValid() {
    return ((_NicknameController.text.length >=1&&
        _AgeController.text.length == 2&&
        _HeightController.text.length == 3)&&
        ((option1||option2)==true));
  }
  bool _NicknameValid() {
    return (_NicknameController.text.length >=1);
  }
  bool _AgeValid() {
    return (_AgeController.text.length == 2);
  }
  bool _HeightValid() {
    return (_HeightController.text.length == 3);
  }

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
      body: SingleChildScrollView(
        child: Column(
          // 자식들을 추가
          children: <Widget>[
            Container(
              height: size.height*(29/640),
            ),
            titleSection(size) // titleSection 컨테이너 추가
          ],
        ),
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
                            color: Color(0xffCCCCCC),
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
                        "내 정보",
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
                      '가입 후 변경이 불가해요!',
                      style: TextStyle(
                          fontSize: 10, color: Colors.grey[500] // 텍스트의 색상을 설정
                      ),
                    ),
                    Container(
                      height: size.height * (30 / 640),
                    ),
                    Text(
                      "닉네임",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: size.width * (298 / 340),
                      height: size.height * (10/640),
                    ),

                    Container(
                      width: size.width * (298 / 340),

                      child: TextField(
                        controller: _NicknameController,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 0, vertical: 15),
                          prefixIcon:
                          Padding(
                            padding: const EdgeInsets.only(right:30),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _NicknameValid()? Color(0xffA28BE7):Colors.white,

                                  border: Border.all(
                                    width: 2,
                                    color: _NicknameValid()? Color(0xffA28BE7):Color(0xffCCCCCC),)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child:  Icon(
                                      Icons.check,
                                      size: 15.0,
                                      color:_NicknameValid()? Colors.white:Color(0xffCCCCCC))

                              ),
                            ),
                          ),
                          suffixText: "한글,숫자,공백만 사용 가능합니다",
                          hintStyle: TextStyle(
                            fontSize: 11,
                            color: Color(0xffCCCCCC),
                          ) ,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA28BE7)
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA28BE7)),
                          ),
                        ),
                        autofocus: true,
                        style: TextStyle(color: Color(0xff000000),
                            fontSize: 18
                        ),
                        cursorColor: Color(0xffA28BE7),

                        onChanged: (text) {
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      height: size.height * (10 / 640),
                    ),

                    Text(
                      "나이",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Container(
                      width: size.width * (298 / 340),

                      child: TextField(
                        controller: _AgeController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [WhitelistingTextInputFormatter(RegExp('[0-9]')),],
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 0, vertical: 15),
                          prefixIcon:
                          Padding(
                            padding: const EdgeInsets.only(right:30),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _AgeValid()? Color(0xffA28BE7):Colors.white,

                                  border: Border.all(
                                    width: 2,
                                    color: _AgeValid()? Color(0xffA28BE7):Color(0xffCCCCCC),)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child:  Icon(
                                      Icons.check,
                                      size: 15.0,
                                      color:_AgeValid()? Colors.white:Color(0xffCCCCCC))

                              ),
                            ),
                          ),
                          suffixText: "세",
                          hintStyle: TextStyle(
                            fontSize: 11,
                            color: Color(0xffCCCCCC),
                          ) ,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA28BE7)
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA28BE7)),
                          ),
                        ),
                        autofocus: true,
                        style: TextStyle(color: Color(0xff000000),
                            fontSize: 18
                        ),
                        cursorColor: Color(0xffA28BE7),

                        onChanged: (text) {
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      height: size.height * (10 / 640),
                    ),
                    Text(
                      "키",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff222222),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: size.width * (298 / 340),

                      child: TextField(
                        controller: _HeightController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [WhitelistingTextInputFormatter(RegExp('[0-9]')),],
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 0, vertical: 15),
                          prefixIcon:
                          Padding(
                            padding: const EdgeInsets.only(right:30),
                            child: Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _HeightValid()? Color(0xffA28BE7):Colors.white,

                                  border: Border.all(
                                    width: 2,
                                    color: _HeightValid()? Color(0xffA28BE7):Color(0xffCCCCCC),)
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child:  Icon(
                                      Icons.check,
                                      size: 15.0,
                                      color:_HeightValid()? Colors.white:Color(0xffCCCCCC))

                              ),
                            ),
                          ),
                          suffixText: "cm",
                          hintStyle: TextStyle(
                            fontSize: 11,
                            color: Color(0xffCCCCCC),
                          ) ,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA28BE7)
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffA28BE7)),
                          ),
                        ),
                        autofocus: true,
                        style: TextStyle(color: Color(0xff000000),
                            fontSize: 18
                        ),
                        cursorColor: Color(0xffA28BE7),

                        onChanged: (text) {
                          setState(() {});
                        },
                      ),
                    ),
                    Container(
                      height: size.height * (20 / 640),
                    ),
                    Text(
                      "성별",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: size.height * (10 / 640),
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
                              BorderRadius.all(Radius.circular(23.0)),
                              color: option1 == true ?
                              Color(0xffA28BE7) : Colors.white,
                            ),
                            height: size.height * (27 / 640),
                            width: size.width * (136 / 360),
                            child: Center(
                              child: Text(
                                "여성",
                                style: TextStyle(
                                  color: option1 == true ?
                                  Colors.white : Color(0xff888888),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * (25 / 332),
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
                                BorderRadius.all(Radius.circular(23.0)),
                                color: option2 == true ?
                                Color(0xffA28BE7) : Colors.white,
                              ),
                              height: size.height * (27 / 640),
                              width: size.width * (136 / 360),
                              child: Center(
                                child: Text(
                                  "남성",
                                  style: TextStyle(
                                    color: option2 == true ?
                                    Colors.white : Color(0xff888888),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),

                    Container(
                      height: size.height * (90 / 640),
                    ),
                    InkWell(
                      onTap: () {
                        {
                          if (_isValid()) {
                            Get.to(() => HobbyInfo());
                          /*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext) => HobbyInfo()));*/
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(45.0)),
                          color: _isValid()?
                          Color(0xffA28BE7) : Color(0xfffD0D0D0),
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
    @override
    void dispose() {
      // Clean up the controller when the widget is disposed.
      _NicknameController.dispose();
      _AgeController.dispose();
      _HeightController.dispose();
      super.dispose();
    }

}
