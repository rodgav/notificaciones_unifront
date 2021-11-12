import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class StudsProxiesLogic extends GetxController {
  String idNivel;
  String idGrade;

  StudsProxiesLogic(this.idNivel, this.idGrade);

  void toStudsProxiesAdd(int idState) {
    Get.rootDelegate
        .toNamed(Routes.studsProxiesAdd(idNivel, idGrade, idState.toString()));
  }

  void toStudsProxiesEdit(int idState) {
    Get.rootDelegate
        .toNamed(Routes.studsProxiesEdit(idNivel, idGrade, idState.toString()));
  }
}
