import 'package:flutter/material.dart';
import 'package:laboratorio_12/estudiante.dart';
import 'package:laboratorio_12/page/pageInformacion.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Estudiante> estudiante = [
    Estudiante("Sergio lopez gonzalez", "167174", "Ingenieria en sistemas",
        "semestre 12", "646579845", "al167174@ite.edu.mx"),
    Estudiante("Juan Perez Gallardo", "167178", "Ingenieria industrial",
        "semestre 11", "646579845", "al167674@ite.edu.mx"),
    Estudiante("Cinthia Lopez Lopez", "167175", "Ingenieria en mecatronica",
        "semestre 8", "646579845", "al167175@ite.edu.mx"),
    Estudiante("Daniel Perez Gallardo", "167173", "Ingenieria industrial",
        " semestre 9", "646579845", "al167675@ite.edu.mx"),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Nombre de estudiantes'),
          ),
          body: ListView.builder(
              itemCount: estudiante.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(estudiante[index].nombre),
                  leading: const Icon(Icons.school),
                  trailing: const Icon(Icons.arrow_forward_sharp),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            informacion(estudiantes: estudiante[index]),
                      ),
                    );
                  },
                );
              })),
    );
  }
}
