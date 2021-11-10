import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'proxies_logic.dart';

class ProxiesPage extends StatelessWidget {
  final logic = Get.find<ProxiesLogic>();

  ProxiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Apoderados'),);
  }
}
