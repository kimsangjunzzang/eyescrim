
import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/meetingScreen/meetingScreen.dart';
import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/meetingScreen/meetingScreenBinding.dart';
import 'package:eye_scrim/screen/mainScreen/bottomNaviScreen/meetingScreen/meetingTab/applyMeeting/applyMeeting.dart';
import 'package:eye_scrim/screen/mainScreen/dashboardBinding.dart';
import 'package:eye_scrim/screen/mainScreen/dashboardScreen.dart';
import 'package:eye_scrim/screen/signInScreen/meetingScreenBinding.dart';
import 'package:eye_scrim/screen/splashScreen/splashScreen.dart';
import 'package:get/get.dart';
import 'appRoute.dart';

class AppScreens {
  static var list = [
    GetPage(
      name: AppRoute.SPLASH,
      page: () => SplashScreen(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoute.HOME,
      page: () => DashboardScreen(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoute.MeetingList,
      page: () => MeetingScreen(),
      binding: MeetingBinding(),
    ),
    GetPage(
      name: AppRoute.ApplyMeeting,
      page: () => ApplyMeeting(),
      binding: MeetingBinding(),
    )
  ];
}
