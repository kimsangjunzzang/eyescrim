import 'dart:io';
import 'package:eye_scrim/contants/GlobalProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'completeWidget.dart';

class StudentAuth extends StatefulWidget {
  @override
  _StudentAuthState createState() => _StudentAuthState();
}
class _StudentAuthState extends State<StudentAuth> {

  PickedFile? _image;

  bool _next(){
    return _image!=null;
  }
  Future getImageFromCam() async{
    var image = await ImagePicker.platform.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future getImageFromGallery() async{
    var image = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future BottomSheetMoreScreen(
      BuildContext context, double screenWidth, double screenHeight) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            color: Colors.transparent,
            width: screenWidth,
            height: screenHeight * (173 / 640),
            child: Column(
              children: [
                Container(
                  width: screenWidth * (336 / 360),
                  height: screenHeight * (97 / 640),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(1.5, 1.5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      FlatButton(
                        onPressed: () {
                          getImageFromGallery();
                          Navigator.pop(context);
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * (8.6667 / 640),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.image,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: screenWidth * (2 / 360),
                                ),
                                Container(
                                  height: screenHeight * (30 / 640),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: screenHeight * (2 / 640)),
                                    child: Center(
                                      child: Text(
                                        "갤러리",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: screenWidth * (16 / 360),
                                            color: Color(0xff222222)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * (8.6667 / 640),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        height: 1,
                        color: Color(0xfffafafa),
                      ),
                      FlatButton(
                        onPressed: () {
                          getImageFromCam();
                          Navigator.pop(context);
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: screenHeight * (8.6667 / 640),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                Icon(
                                  Icons.photo_camera,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: screenWidth * (2 / 360),
                                ),
                                Container(
                                  height: screenHeight * (30 / 640),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: screenHeight * (2 / 640)),
                                    child: Center(
                                      child: Text(
                                        "카메라",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: screenWidth * (16 / 360),
                                            color: Color(0xff222222)),
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * (8.6667 / 640),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        height: 1,
                        color: Color(0xfffafafa),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * (8 / 640),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: screenWidth * (336 / 360),
                    height: screenHeight * (48 / 640),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(1.5, 1.5),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "취소",
                        style: TextStyle(
                            fontSize: screenWidth * (16 / 360),
                            color: Color(0xff222222)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * (20 / 640),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          Container(
            height: size.height*(29/640),
          ),
          titleSection(size),
        ],
      ),
    );
  }

  // 컨테이터 위젯 구현
  Widget titleSection(size) {
    return Container(
      child: Row(children: <Widget>[
        Container(
          width: size.width * (20 / 360),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 8.32,
                        width: size.width * (8.32 / 360),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.transparent
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(

                                  4.0)
                          ),
                          color: Color(0xff6393E7),
                        ),
                      ),
                      SizedBox(
                        width: size.width * (6.52/ 360),
                      ),
                      Container(
                        height: 8.32,
                        width: size.width * (8.32 / 360),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.transparent
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(

                                  4.0)
                          ),
                          color: Color(0xff948CE7),
                        ),

                      ),
                      SizedBox(
                        width: size.width * (6.52/ 360),
                      ),
                      Container(
                        height: 8.32,
                        width: size.width * (8.32 / 360),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.transparent
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(

                                  4.0)
                          ),
                          color: Color(0xffD582E8),
                        ),
                      ),
                      SizedBox(
                        width: size.width * (6.52/ 360),
                      ),
                      Container(
                        height: 8.32,
                        width: size.width * (8.32 / 360),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.transparent
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(

                                  4.0)
                          ),
                          color: Color(0xffFF7CE8),
                        ),
                      ),
                      SizedBox(
                        width: size.width * (6.52/ 360),
                      ),
                    ],
                  ),
                  Container(
                    height: 18.68 ,
                  ),

                ],
              ),
              Container(
                height: size.height * (18.68 / 640),
              ),
              Container(
                child: Text(
                  // 컨테이너의 자식으로 텍스트 삽입
                  "학생증 인증해주세요.",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold // 텍스트 강조 설정
                      ),
                ),
              ),
              Container(
                height: size.height * (10 / 640),
              ),
              Text(
                '클릭해서 학생증 이미지를 업로드 해주세요',
                style: TextStyle(
                    fontSize: 10, color: Color(0xff888888) // 텍스트의 색상을 설정
                    ),
              ),
              Container(
                height: size.height * (49/ 640),
              ),

                 Container(
                   height: size.height * (180/ 640),
                   width: size.width * (336/ 380),
                   child: FloatingActionButton(
                     elevation: 0,
                    onPressed:(){BottomSheetMoreScreen(context,MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);} ,
                    tooltip:'Pick Image',
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      child: Center(
                        child: _image == null
                            ?Container(
                          child: Icon(Icons.add,
                          size: 40,
                          color: Color(0xffA28BE7)),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color(0xffEEEEEE)),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.white
                          ),
                          alignment: Alignment.center,
                          width: size.width *(336/380),
                          height: size.height * (180/ 640),
                        )
                            :
                        Container(
                          child: Image.file(File(_image!.path,),
                            fit: BoxFit.fitWidth,
                           ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color(0xffEEEEEE)),
                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.white
                          ),
                          alignment: Alignment.center,
                          width: size.width *(336/380),
                          height: size.height * (180/ 640),
                        )


                      ),
                    ),
                ),
                 ),

              Container(
                height: size.height * (160 / 640),
              ),

              InkWell(
                onTap: () {
                  {
                    if (_image != null) {
                     /* Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext) => CompleteScreen()));*/
                    }
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(45.0)),
                    color: _next() ? Color(0xffA28BE7) : Color(0xfffD0D0D0),
                  ),
                  height: size.height * (40 / 640),
                  width: size.width * (320 / 360),
                  child: Center(
                    child: Text(
                      "인증하기",
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
        ),
      ]),
    );
  }

}
