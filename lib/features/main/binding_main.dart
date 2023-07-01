import 'package:get/get.dart';
import 'package:mobile_fe_ordo/features/dashboard/controller_dashboard.dart';
import 'package:mobile_fe_ordo/features/main/controller_main.dart';

class BindingMain implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerMain());
    Get.put(ControllerDashboard());
  }
}
