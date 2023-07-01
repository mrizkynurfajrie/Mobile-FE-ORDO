import 'package:get/get.dart';
import 'package:mobile_fe_ordo/features/main/binding_main.dart';
import 'package:mobile_fe_ordo/features/main/page_main.dart';
import 'package:mobile_fe_ordo/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initialPage,
      page: () => PageMain(),
      binding: BindingMain(),
    ),
  ];
}
