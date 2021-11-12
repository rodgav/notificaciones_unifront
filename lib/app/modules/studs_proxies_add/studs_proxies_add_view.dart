import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'studs_proxies_add_logic.dart';

class StudsProxiesAddPage extends StatelessWidget {
  final logic = Get.find<StudsProxiesAddLogic>();

  StudsProxiesAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Estudiantes > Preescolar > Grado 1',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      Expanded(
          child: Padding(
              padding: const EdgeInsets.only(top: 60, right: 60, left: 60),
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Establecer apoderados',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Agregue un apoderado a cada estudiante',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 50),
                         const Text(
                            'Estudiantes sin apoderado establecido',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        const SizedBox(height: 20),
                        Center(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: DataTable(columns: const [
                              DataColumn(
                                  label: Text('#',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('MATRICULA',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('APELLIDOS',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('NOMBRES',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                              DataColumn(
                                  label: Text('ACCIONES',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))),
                            ], rows: [
                              DataRow(cells: [
                                DataCell(SizedBox(
                                    width: size.width * 0.1,
                                    child: const Text('1'))),
                                DataCell(SizedBox(
                                    width: size.width * 0.1,
                                    child: const Text('354281'))),
                                DataCell(SizedBox(
                                    width: size.width * 0.1,
                                    child: const Text('García Encino'))),
                                DataCell(SizedBox(
                                    width: size.width * 0.1,
                                    child: const Text('Katia Alejandra'))),
                                DataCell(MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    child: const ImageIcon(
                                      AssetImage(
                                          'assets/icons/person-plus.png'),
                                      color: Colors.green,
                                    ),
                                    onTap: ()=>logic.addProxie(size),
                                  ),
                                )),
                              ]),
                            ]),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ]))))
    ]);
  }
}
