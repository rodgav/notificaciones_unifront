import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class NotifNivelsLogic extends GetxController {
  void toNotifGrads(int idNivel) {
    Get.rootDelegate.toNamed(Routes.notifGrades(idNivel.toString()));
  }
}
