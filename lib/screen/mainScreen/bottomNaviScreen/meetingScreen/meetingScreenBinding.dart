import 'package:get/instance_manager.dart';

import 'meetingScreenController.dart';

class MeetingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MeetingScreenController>(() => MeetingScreenController());
  }
}
