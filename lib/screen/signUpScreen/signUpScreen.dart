import 'package:eye_scrim/provider/googleSignInProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: screenHeight*(110/640),),
              SvgPicture.asset(
                "assets/images/SplashIcon.svg",
                width: screenWidth * (150/360),
                height: screenWidth * (234/360),
              ),
              SizedBox(height: screenHeight*(110/640),),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary:  Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),

                icon: FaIcon(FontAwesomeIcons.google),
                label : Text('Sign In With Google'),
                onPressed: (){
                  final provider = Provider.of<GoogleSignInProvider>(context,listen:false);
                  provider.googleLogin();
                },
              ),
              SizedBox(height: screenHeight*(14/640),),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary:  Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),

                icon: FaIcon(FontAwesomeIcons.apple),
                label : Text('Sign In With Apple'),
                onPressed: (){
                  final provider = Provider.of<GoogleSignInProvider>(context,listen:false);
                  provider.googleLogin();
                },
              ),
            ],
          ),
        )
    );
  }
}
