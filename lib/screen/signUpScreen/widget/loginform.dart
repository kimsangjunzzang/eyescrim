import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myInfoWidget.dart';

class LoginFormWidget extends StatefulWidget {
  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _idTextEditController = TextEditingController();
  final _passwordTextEditController = TextEditingController();

  bool _isValid() {
    return (_idTextEditController.text.length >= 4 &&
        _passwordTextEditController.text.length >= 4);
  }

  void _login() {
    InkWell(
        onTap: () {
      {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext) => MyInfo()));
      }
    }
    );
    // 로그인 하기
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*var _signupButton = CupertinoButton(
        child: Text("회원가입하기", style: TextStyle( fontSize: 16,
            color:Colors.white)),
        padding: EdgeInsets.all(5),
        color: Colors.white,
        onPressed: _signup
    );
 */

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          '회원가입',
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
        children: <Widget>[
          titleSection(size) // titleSection 컨테이너 추가
        ],
      ),
    );
  }

  Widget titleSection(size) {
    return Container(
        child: Row(
      children: <Widget>[
        Container(
          width: size.width * (20 / 360),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: size.height * (19 / 640)),
                Row(
                  children: [
                    Container(
                      height: 8.32,
                      width: size.width * (8.32 / 360),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        color: Color(0xff6393E7),
                      ),
                    ),
                    SizedBox(
                      width: size.width * (6.52 / 360),
                    ),
                    Container(
                      height: 8.32,
                      width: size.width * (8.32 / 360),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        color: Color(0xffCCCCCC),
                      ),
                    ),
                    SizedBox(
                      width: size.width * (6.52 / 360),
                    ),
                    Container(
                      height: 8.32,
                      width: size.width * (8.32 / 360),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        color: Color(0xffCCCCCC),
                      ),
                    ),
                    SizedBox(
                      width: size.width * (6.52 / 360),
                    ),
                    Container(
                      height: 8.32,
                      width: size.width * (8.32 / 360),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        color: Color(0xffCCCCCC),
                      ),
                    ),
                    SizedBox(
                      width: size.width * (6.52 / 360),
                    ),
                  ],
                ),
                Container(height: size.height * (18.68 / 640)),
                Container(
                  // 컨테이너 내부 하단에 8픽셀만큼 패딩 삽입
                  child: Text(
                    // 컨테이너의 자식으로 텍스트 삽입
                    "학교 정보를 입력해주세요.",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold // 텍스트 강조 설정
                        ),
                  ),
                ),
                Container(height: size.height * (12 / 640)),
                // 컬럼의 두번째 자식으로 텍스트 삽입
                Row(
                  children: [
                    Text(
                      '학교와 학과 선택은 ',
                      style: TextStyle(
                          fontSize: 9, color: Colors.grey[500] // 텍스트의 색상을 설정
                          ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "변경 불가",
                        style: TextStyle(
                            fontSize: 9,
                            color: Color(0xffDF3939),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '하오니 신중하게 선택해주세요. ',
                      style: TextStyle(
                          fontSize: 9, color: Colors.grey[500] // 텍스트의 색상을 설정
                          ),
                    ),
                  ],
                ),
                Container(height: size.height * (5 / 640)),
                Text(
                  '검색 시 나오지 않는 학교는 어플 이용이 불가해요.',
                  style: TextStyle(
                      fontSize: 9, color: Colors.grey[500] // 텍스트의 색상을 설정
                      ),
                ),
                Container(height: size.height * (90 / 640)),

                /*Container(
                  width: size.width * (300/ 340),
                  height: size.height * (10/ 640),
                  child: TextField(
                    controller: _idTextEditController,
                    style: TextStyle(fontSize: 11),
                    onChanged: (text) {
                      setState(() {});
                    },
                  ),
                ),

                 */
                Container(
                  width: size.width * (298 / 340),
                  child: TextField(
                    controller: _idTextEditController,
                    onChanged: (text) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.check_circle_outlined),
                      suffixText: "학교를 선택해주세요",
                      hintStyle: TextStyle(
                        fontSize: 11,
                        color: Color(0xffCCCCCC),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffA28BE7)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffA28BE7)),
                      ),
                    ),
                    autofocus: true,
                    style: TextStyle(color: Color(0xff000000), fontSize: 18),
                    cursorColor: Color(0xffA28BE7),
                  ),
                ),

                Container(
                  width: size.width * (298 / 340),
                  child: TextField(
                    controller: _passwordTextEditController,
                    onChanged: (text) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.check_circle_outlined),
                      suffixText: "학과 선택해주세요",
                      hintStyle: TextStyle(
                        fontSize: 11,
                        color: Color(0xffCCCCCC),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffA28BE7)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffA28BE7)),
                      ),
                    ),
                    autofocus: true,
                    style: TextStyle(color: Color(0xff000000), fontSize: 18),
                    cursorColor: Color(0xffA28BE7),
                  ),
                ),
                Container(
                  height: size.height * (200 / 640),
                ),


                   CupertinoButton(
                      child: Text("다음",
                          style: TextStyle(fontSize: 16)
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      onPressed: _isValid() ? _login : null,
                   ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _idTextEditController.dispose();
    _passwordTextEditController.dispose();
    super.dispose();
  }
}
