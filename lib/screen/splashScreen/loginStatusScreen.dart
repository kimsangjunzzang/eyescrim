import 'package:eye_scrim/contants/GlobalProfile.dart';
import 'package:eye_scrim/screen/mainScreen/dashboardScreen.dart';
import 'package:eye_scrim/screen/signUpScreen/signUpScreen.dart';
import 'package:eye_scrim/screen/signUpScreen/widget/conditionAgreeWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class LoginStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator(),);
              }
              else if (snapshot.hasData) {
                return DashboardScreen();
           /*    // return MainScreen();
                if(GlobalProfile.loginStatus == false){
                  return ConditionAgree();
                }
                else
                  return DashboardScreen();*/
              }
              else if (snapshot.hasError) {
                return Center(child: Text('Something Went Wrong!'),);
              }
              else {
                return SignInScreen();
              }

            }
        )
    );
  }
}
