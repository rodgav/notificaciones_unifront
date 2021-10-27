import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class LoginLogic extends GetxController {
  void toHome() {
    Get.rootDelegate.toNamed(Routes.home);
  }
}
