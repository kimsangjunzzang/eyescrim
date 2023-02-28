import 'package:eye_scrim/provider/dashboardScreenProvider.dart';
import 'package:eye_scrim/provider/googleSignInProvider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'profileScreenController.dart';

class ProfileScreen extends GetView<ProfileScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(),
        title: Text(
          'ProfileScreen Page',
          style: TextStyle(
              fontSize:20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          TextButton(onPressed: (){
            final  _signInProvider = Provider.of<GoogleSignInProvider>(context,listen:false);
            final  _dashboardScreenProvider = Provider.of<DashboardScreenProvider>(context,listen:false);
            _signInProvider.logout();
            _dashboardScreenProvider.changeTabIndex(0);
          }, child: Text('Logout', style: TextStyle(color: Colors.black),)),
        ],
      ),
      body: Container(
        child: Center(
            child: Text(
          "ProfileScreen Page",
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}


// import 'package:eyescrim/constants/color.dart';
// import 'package:eyescrim/constants/commonGap.dart';
// import 'package:eyescrim/constants/screenSize.dart';
// import 'package:flutter/material.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       body: Column(
//         children: [
//           Expanded(
//             child: Padding(
//               padding:
//                   const EdgeInsets.fromLTRB(common_xs_gap, 0, common_xs_gap, 0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: bodyBackgroundColor,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
