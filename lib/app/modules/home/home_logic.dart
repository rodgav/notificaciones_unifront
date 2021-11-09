import 'package:get/get.dart';

class HomeLogic extends GetxController {
  String _selectDrawer = 'Inicio';

  String get selectDrawer => _selectDrawer;

  void onSelectDrawer(String select) {
    _selectDrawer = select;
    update(['drawer']);
  }
}
