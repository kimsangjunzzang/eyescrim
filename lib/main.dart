
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'contants/color.dart';
import 'provider/dashboardScreenProvider.dart';
import 'provider/googleSignInProvider.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_messaging/firebase_messaging.dart';

import 'routes/appRoute.dart';
import 'routes/appScreens.dart';
import 'screen/mainScreen/bottomNaviScreen/meetingScreen/meetingTab/applyMeeting/applyMeetingController.dart';
import 'screen/splashScreen/splashScreen.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

Future<void>  main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await firebase_core.Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    badge: true,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GoogleSignInProvider>(
          create: (_) => new GoogleSignInProvider(),
        ),
         ChangeNotifierProvider<DashboardScreenProvider>(
          create: (_) => new DashboardScreenProvider(),
        ),

      ],
      child: GetMaterialApp(
        color: backgroundColor,
        theme: ThemeData(fontFamily: 'BMJUA_KR'),
        title: "Getx App",
        initialBinding: BindingsBuilder(() {
          Get.put(ApplyMeetingController());
        }),
        //initialRoute: AppRoute.SPLASH,
        getPages: AppScreens.list,
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
