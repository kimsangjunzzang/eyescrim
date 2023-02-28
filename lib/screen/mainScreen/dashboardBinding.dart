import 'package:get/instance_manager.dart';

import 'dashboardController.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardScreenController>(() => DashboardScreenController());
  }
}
