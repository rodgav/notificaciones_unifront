import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'studs_grades_logic.dart';

class StudsGradesPage extends StatelessWidget {
  final logic = Get.find<StudsGradesLogic>();

  StudsGradesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const tileHeight = 200.0;
    const tileWidth = 300.0;
    const spacing = 20.0;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Estudiantes > Preescolar',
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
                          'Establezca un nuevo apoderado a cada estudiante',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Seleccione el grado en el que desea establecer apoderados',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 50),
                        LayoutBuilder(builder: (context, constaints) {
                          final count = constaints.maxWidth ~/ tileWidth;
                          return GridView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: count,
                                childAspectRatio:tileWidth  / tileHeight,
                                crossAxisSpacing: spacing,
                                mainAxisSpacing: spacing),
                            children: [
                              MouseRegion(cursor:SystemMouseCursors.click,
                                child: GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: const Color(0xff1E4280),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: const Center(
                                        child: Text(
                                          'Grado 1°',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        )),
                                  ),
                                  onTap: ()=> logic.toStudsProxies(123),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffF4C300),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                    child: Text(
                                      'Grado 2°',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff1E4280),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                    child: Text(
                                      'Grado 3°',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffF4C300),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                    child: Text(
                                      'Todos los\ngrados',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    )),
                              ),
                            ],
                          );
                        }),
                        const SizedBox(height: 20),
                      ]))))
    ]);
  }
}
