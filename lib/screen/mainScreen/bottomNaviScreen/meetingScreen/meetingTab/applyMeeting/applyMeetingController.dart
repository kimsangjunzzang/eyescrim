import 'package:get/get.dart';

class ApplyMeetingController extends GetxController {
  RxInt index = 0.obs;
  RxBool checkApply = true.obs;
  RxInt meetingValue = 0.obs;
  List<RxBool> removeFriend = [false.obs, false.obs, false.obs, false.obs];

  void increase() {
    if (index < 4) {
      index++;
    }
  }

  void decrease() {
    if (index > 0) {
      index--;
    }
  }

  void apply() {
    checkApply = false.obs;
  }
}
