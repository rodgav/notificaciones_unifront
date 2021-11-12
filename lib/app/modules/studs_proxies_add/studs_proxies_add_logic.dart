import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudsProxiesAddLogic extends GetxController {
  String idNivel;
  String idGrade;
  String idState;

  StudsProxiesAddLogic(this.idNivel, this.idGrade, this.idState);

  void addProxie(Size size) {
    Get.dialog(Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 749,
          height: size.height - 40,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Agregar apoderado',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.close)
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'En la siguiente tabla, seleccione un nuevo apoderado para el estudiante.',
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 30),
              Container(
                color: Colors.white,
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: MouseRegion(
                      child: GestureDetector(
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: ImageIcon(
                              AssetImage('assets/icons/search.png'),
                              color: Colors.black,
                              size: 15,
                            ),
                          ),
                          onTap: () => null),
                    ),
                    hintText: 'Buscar apoderado',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                  child: SingleChildScrollView(
                physics:const BouncingScrollPhysics(),
                child: DataTable(columns:const [
                  DataColumn(label: Text('#')),
                  DataColumn(label: Text('ApellidoS')),
                  DataColumn(label: Text('Nombre(s)')),
                  DataColumn(label: Text('CORREO ELECTRONICO')),
                  DataColumn(label: Text('Accion')),
                ], rows: [
                  DataRow(cells: [
                    const DataCell(Text('1')),
                    const DataCell(Text('García Encino')),
                    const DataCell(Text('Katia Alejandra')),
                    const DataCell(Text('katialejandra0@outlook.com')),
                    DataCell(Checkbox(value: true, onChanged: (value)=>null)),
                  ])
                ]),
              )),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 125,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        onPressed: () => null,
                        child: const Text(
                          'Cancelar',
                          style: TextStyle(
                              color: Color(0xff2E65F3),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 125,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xff2E65F3)),
                        onPressed: () => null,
                        child: const Text(
                          'Agregar',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
