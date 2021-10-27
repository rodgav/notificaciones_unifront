import 'package:get/get.dart';

import 'proxs_new_logic.dart';

class ProxsNewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProxsNewLogic());
  }
}
