import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/meetingScreen/meetingScreenController.dart';
import 'package:eye_scrim/screen/signInScreen/sigininScreenController.dart';
import 'package:get/instance_manager.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInScreenController>(() => SignInScreenController());
  }
}
