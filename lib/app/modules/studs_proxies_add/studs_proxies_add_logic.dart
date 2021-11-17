import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notificaciones_unifront/app/data/models/estudiante_model.dart';
import 'package:notificaciones_unifront/app/data/models/nivel_model.dart';
import 'package:notificaciones_unifront/app/data/models/sub_nivel_model.dart';
import 'package:notificaciones_unifront/app/data/repositorys/db_repository.dart';
import 'package:notificaciones_unifront/app/data/services/auth_service.dart';
import 'package:notificaciones_unifront/app/routes/app_pages.dart';

class StudsProxiesAddLogic extends GetxController {
  String idNivel;
  String idGrade;

  StudsProxiesAddLogic(this.idNivel, this.idGrade);

  final _dbRepository = Get.find<DbRepository>();

  EstudianteModel? _estudianteModel;
  Estudiante? _estudiante;
  Nivele? _nivele;
  SubNivele? _subNivele;

  EstudianteModel? get estudianteModel => _estudianteModel;

  Estudiante? get estudiante => _estudiante;

  Nivele? get nivele => _nivele;

  SubNivele? get subNivele => _subNivele;

  @override
  void onReady() {_getSubNivel();
    _getEstudiantes();
    super.onReady();
  }

  void _getSubNivel() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _nivele = await _dbRepository.getNivel(token: token, idNivel: idNivel);
      _subNivele =
          await _dbRepository.getSubNivel(token: token, idSubNivel: idGrade);
    } else {
      Get.rootDelegate.toNamed(Routes.login);
    }
    update(['title']);
  }

  void _getEstudiantes() async {
    final token = await AuthService.to.getToken();
    if (token != null) {
      _estudianteModel = await _dbRepository.getEstudiantesNoApoderado(
          token: token, idSubNivel: idGrade);
    } else {
      Get.rootDelegate.toNamed(Routes.login);
    }
    update(['students']);
  }

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
                physics: const BouncingScrollPhysics(),
                child: DataTable(columns: const [
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
                    DataCell(Checkbox(value: true, onChanged: (value) => null)),
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
