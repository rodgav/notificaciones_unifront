import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudsProxiesEditLogic extends GetxController {
  void delete() {
    Get.dialog(Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 520,
          height: 256,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.2),
                          shape: BoxShape.circle),
                      padding: const EdgeInsets.all(10),
                      child: const ImageIcon(
                        AssetImage('assets/icons/trash.png'),
                        color: Colors.red,
                      )),
                  const SizedBox(width: 10),
                  const Text(
                    'Eliminar apoderado',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Expanded(child: SizedBox()),
                  const Icon(Icons.close)
                ],
              ),
              const SizedBox(height: 30),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '¿Está seguro de que desea continuar?',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Esta acción eliminará el apoderado del estudiante definitivamente',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontStyle: FontStyle.italic),
                  ),
                ],
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
                          'No. Cancelar',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 125,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () => null,
                        child: const Text(
                          'Si. Continuar',
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

  void search() {
    Get.dialog(Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 725,
          height: 444,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Consultar apoderado',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.close)
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Información correspondiente al apoderado del estudiante.',
                style: TextStyle(fontSize: 14),
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 306,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Apellido(s)',
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  color: Colors.white,
                                  child: TextFormField(
                                    enabled: false,
                                    decoration: InputDecoration(
                                      hintText: 'Sanchez Vazquez',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(6)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 306,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Nombre(s)',
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(height: 5),
                                Container(
                                  color: Colors.white,
                                  child: TextFormField(enabled: false,
                                    decoration: InputDecoration(
                                      hintText: 'Ixchel Alejandra',
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(6)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Correo electrónico',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            color: Colors.white,
                            child: TextFormField(enabled: false,
                              decoration: InputDecoration(
                                hintText: 'ixchel.sanchez@uabc.edu.mx',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6)),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 125,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xff2E65F3)),
                    onPressed: () => null,
                    child: const Text(
                      'Cerrar ventana',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void editProxie(Size size) {
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
                    'Modificar apoderado',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.close)
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'En la siguiente tabla, seleccione el nuevo apoderado para el estudiante.',
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
                          'Modificar',
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
