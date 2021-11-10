import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'studs_nivels_logic.dart';

class StudsNivelsPage extends StatelessWidget {
  final logic = Get.find<StudsNivelsLogic>();

  StudsNivelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Estudiantes Niveles'),);
  }
}
