import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'myInfoWidget.dart';

class SchoolInfo extends StatefulWidget {
  @override
  _SchoolInfoState createState() => _SchoolInfoState();
}
 class School{
  String name;
  School({required this.name});
}
class Subject{
  String name;
  Subject({required this.name});
}

class _SchoolInfoState extends State<SchoolInfo> {
  List<School> school = [
    School(name: '서울대학교'),
    School(name: '연세대학교'),
    School(name: '고려대학교'),
    School(name: '서강대학교'),
    School(name: '성균관대학교'),
    School(name: '한양대학교'),
    School(name: '중앙대학교')
  ];

  List<Subject> subject = [
    Subject(name: '경영학과'),
    Subject(name: '경제학과'),
    Subject(name: '국어국문학과'),
    Subject(name: '컴퓨터공학과'),
    Subject(name: '기계공학과'),
    Subject(name: '화학과'),
    Subject(name: '생명공학과')
  ];

  String selectedSchool = "" ;
  String selectedClass = "";

  int? _selected;
  int? __selected;


  final _idTextEditController = TextEditingController();
  final _passwordTextEditController = TextEditingController();

  bool _isValid() {
    return (_selected!=null&&
        __selected!=null);
  }

  bool _SchoolValid() {
    return (selectedSchool == ""?true:false);
  }

  bool _ClassValid() {
    return (selectedClass == ""?true:false);
  }

  void showAlertDialog(BuildContext context) async {

    String result = await showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("학교를 선택해주세요",

          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          actions: <Widget>[
            FlatButton(
              child: const Text('CANCEL'),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              textColor: Color(0xffA28BE7),
              onPressed: () {
                Navigator.of(context).pop();
                //widget.onCancel();
              },
            ),
            FlatButton(
              child: const Text('OK'),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              textColor: Color(0xffA28BE7),
              onPressed: () {
                Navigator.of(context).pop();
                //widget.onOk();
              },
            ),
          ],
          content: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Divider(),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.4,
                    ),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: school.length,
                        itemBuilder: (BuildContext context, int index) {
                          return RadioListTile(
                              title: Text(school[index].name),
                              value: index,
                              groupValue: _selected,
                              onChanged: (value) {
                                setState(() {
                                  _selected = index;
                                  selectedSchool= school[index].name;
                                });
                              });
                        }),
                  ),
                  Divider(),

                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void showAlertDialogSubject(BuildContext context) async {

    String result = await showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("학과를 선택해주세요",

          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          actions: <Widget>[
            FlatButton(
              child: const Text('CANCEL'),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              textColor: Color(0xffA28BE7),
              onPressed: () {
                Navigator.of(context).pop();
                //widget.onCancel();
              },
            ),
            FlatButton(
              child: const Text('OK'),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              textColor: Color(0xffA28BE7),
              onPressed: () {
                Navigator.of(context).pop();
                //widget.onOk();
              },
            ),
          ],
          content: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Divider(),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.4,
                    ),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: subject.length,
                        itemBuilder: (BuildContext context, int index) {
                          return RadioListTile(
                              title: Text(subject[index].name),
                              value: index,
                              groupValue: __selected,
                              onChanged: (value) {
                                setState(() {
                                  __selected = index;
                                  selectedClass = subject[index].name;

                                });
                              });
                        }),
                  ),
                  Divider(),

                ],
              ),
            ),
          ),
        );
      },
    );
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // 자식들을 추가
          children: <Widget>[
            Container(
              color: Colors.white,
              height: size.height * (29 / 640),
            ),

            Container(
              width: 20,
            ),
            titleSection(size) // titleSection 컨테이너 추가
          ],
        ),
      ),
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection(size) {
    var _chosenValue;
    return Container(
      color: Colors.white,
      // 자식으로 로우를 추가
      child: Row(
        // 로우에 위젯들(Expanded, Icon, Text)을 자식들로 추가
        children: <Widget>[
          Container(
            width: size.width * (20 / 360),
          ),

          // 첫번째 자식
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // 자식들을 왼쪽정렬로 배치함
            // 컬럼의 자식들로 컨테이너와 텍스트를 추가
            children: <Widget>[
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
              Container(
                height: 18.68,
              ),

              // 컬럼의 첫번째 자식 컨테이너
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
              Container(
                height: 12,
              ),
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

              Container(
                height: 5,
              ),

              Text(
                '검색 시 나오지 않는 학교는 어플 이용이 불가해요.',
                style: TextStyle(
                    fontSize: 9, color: Colors.grey[500] // 텍스트의 색상을 설정
                    ),
              ),
              Container(
                height: 86,
              ),


              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _SchoolValid()

                            ? Colors.white
                            : Color(0xffA28BE7),
                        border: Border.all(
                          width: 2,
                          color:_SchoolValid()
                              ? Color(0xffCCCCCC)
                              : Color(0xffA28BE7),
                        )),
                    child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(Icons.check,
                            size: 15.0,
                            color: _SchoolValid()
                                ? Color(0xffCCCCCC)
                                : Colors.white)),
                  ),

                  Container(
                    width: size.width * (280 / 340),
                    height: size.height * (16 / 640),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Color(0xffA28BE7),
                            )
                        )
                    ),

                    child: RaisedButton(
                      elevation: 0,
                      color: Colors.white,
                      child:_SchoolValid()?
                      Text(
                        "학교 선택해주세요",
                        style:  TextStyle(
                          fontSize: 11,
                          color: Color(0xffCCCCCC),// 텍스트 강조 설정
                        ),)
                          : Text(
                        selectedSchool,
                        style:  TextStyle(
                          fontSize: 11,
                          color: Color(0xffCCCCCC),// 텍스트 강조 설정
                        ),),

                      onPressed: () {
                        showAlertDialog(context);
                      },
                    ),
                  ),
                ],
              ),

              Container(
                height: size.height * (35 / 640),
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _ClassValid()
                            ? Colors.white
                        : Color(0xffA28BE7),
                        border: Border.all(
                          width: 2,
                          color:_ClassValid()
                              ? Color(0xffCCCCCC)
                              : Color(0xffA28BE7),
                        )),
                    child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Icon(Icons.check,
                            size: 15.0,
                            color: _ClassValid()
                                ? Color(0xffCCCCCC)
                                : Colors.white)),
                  ),

                  Container(
                    width: size.width * (280 / 340),
                    height: size.height * (16 / 640),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                              color: Color(0xffA28BE7),
                            )
                        )
                    ),

                    child: RaisedButton(
                      elevation: 0,
                      color: Colors.white,
                      child:_ClassValid()?
                      Text(
                        "학과 선택해주세요",
                        style:  TextStyle(
                          fontSize: 11,
                          color: Color(0xffCCCCCC),// 텍스트 강조 설정
                        ),)
                          : Text(
                        selectedClass,
                        style:  TextStyle(
                          fontSize: 11,
                          color: Color(0xffCCCCCC),// 텍스트 강조 설정
                        ),),

                      onPressed: () {
                        showAlertDialogSubject(context);
                      },
                    ),
                  ),
                ],
              ),
              Container(
                height: 255,
              ),
              InkWell(
                onTap: () {
                  {
                    if (_isValid()) {
                      Get.to(() =>  MyInfo());
                   /*   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext) => MyInfo()));*/
                    }
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(45.0)),
                    color: _isValid() ? Color(0xffA28BE7) : Color(0xfffD0D0D0),
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
            ],
          ),

          // 두번째 자식 아이콘
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _idTextEditController.dispose();
    _passwordTextEditController.dispose();
    super.dispose();
  }
}
