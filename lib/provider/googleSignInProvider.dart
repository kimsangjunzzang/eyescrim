import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier{
  final googleSignIn= GoogleSignIn();

  GoogleSignInAccount? _user;
  GoogleSignInAccount get user =>_user!;

  Future googleLogin() async {
    try {
      final googleUser = await googleSignIn.signIn();
      if (googleUser != null) {
        _user = googleUser;

        final googleAuth = await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
      }
      else{
        throw FirebaseAuthException(
          message:  "Sign in aboarded by user",
          code : "Error_ABORDER_BY_USER",
        );
      }

    }catch(e){
      print(e.toString());
    }
    notifyListeners();
  }

  Future logout() async{
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}