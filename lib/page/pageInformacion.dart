import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:laboratorio_12/estudiante.dart';

class informacion extends StatelessWidget {
  // se Declara un campo que contenga el objeto estudiante
  final Estudiante estudiantes;

  // En el constructor, se requiere un objeto estudiante
  const informacion({Key? key, required this.estudiantes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Usa el objeto estudiantes para crear nuestra UI
    return Scaffold(
      appBar: AppBar(
        title: Text(estudiantes.nombre),
      ),
      body: ListView(children: <Widget>[
        const SizedBox(
          height: 4,
          width: 4,
        ),
        Text(estudiantes.carrera),
        Text(estudiantes.correo),
        Text(estudiantes.matricula),
        Text(estudiantes.semestre),
        Text(estudiantes.telefono)
      ]),
    );
  }
}
