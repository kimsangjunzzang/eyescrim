import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'chatScreenController.dart';

class ChatScreen extends GetView<ChatScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          "chat page",
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}



// import 'package:eyescrim/constants/color.dart';
// import 'package:eyescrim/constants/commonGap.dart';
// import 'package:eyescrim/constants/screenSize.dart';
// import 'package:eyescrim/globalWidget/DashBoardLayOut.dart';
// import 'package:flutter/material.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
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
