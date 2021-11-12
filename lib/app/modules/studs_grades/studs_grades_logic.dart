import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class StudsGradesLogic extends GetxController {
  String idNivel;

  StudsGradesLogic(this.idNivel);

  void toStudsProxies(int idGrade) {
    Get.rootDelegate.toNamed(Routes.studsProxies(idNivel, idGrade.toString()));
  }
}
