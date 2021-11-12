import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class StudsNivelsLogic extends GetxController {
  void toStudsGrads(int idNivel) {
    Get.rootDelegate.toNamed(Routes.studsGrades(idNivel.toString()));
  }
}
