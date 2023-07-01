import 'package:get/get.dart';
import 'package:mobile_fe_ordo/features/dashboard/controller_dashboard.dart';

class BindingDashboard implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ControllerDashboard());
  }
}
