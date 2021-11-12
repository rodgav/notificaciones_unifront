import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProxiesLogic extends GetxController {
  void editProxie(int idProxie) {
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
                    'Editar apoderado',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.close)
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Edite la información del apoderado en este formulario.',
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
                              child: TextFormField(
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
                        child: TextFormField(
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
                          'Editar',
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

  void deleteProxie(int idProxie) {
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
                    'Esta acción eliminará el apoderado definitivamente',
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

  void addProxie() {
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
              const Text(
                'Crear apoderado',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Agregue un nuevo apoderado en el siguiente formulario',
                style: TextStyle(fontSize: 14),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Nombre(s)',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Ingrese el nombre del apoderado',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Apellido(s) ',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Ingrese el apellido del apoderado',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Correo electrónico',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        color: Colors.white,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText:
                                'Ingrese el correo electrónico del apoderado',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                    ],
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
                        onPressed: _cancel,
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
                        onPressed: _add,
                        child: const Text(
                          'Crear',
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

  void _cancel() {
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
                    'Eliminar progreso',
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
                    'Esta acción eliminará su progreso',
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

  void _add() {
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
                children: const [
                  Text(
                    'Crear apoderado',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.close)
                ],
              ),
              const SizedBox(height: 30),
              const Expanded(
                child: Text(
                  '¿Está seguro de que desea crear el apoderado?',
                  style: TextStyle(fontSize: 16),
                ),
              ),
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
                          'No. Regresar',
                          style: TextStyle(
                              color: Color(0xff2E65F3),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 179,
                      height: 48,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xff2E65F3)),
                        onPressed: _success,
                        child: const Text(
                          'Si. Crear apoderado',
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

  void _success() {
    Get.dialog(Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: 480,
          height: 215,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.check, color: Colors.white),
              ),
              const SizedBox(height: 30),
              const Text(
                '¡Creación de apoderado exitoso!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const Expanded(
                child: Text(
                  'Se ha creado exitosamente el nuevo apoderado',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xff2E65F3)),
                  onPressed: () => null,
                  child: const Text(
                    'Aceptar',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
