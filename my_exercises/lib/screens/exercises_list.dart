import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {
  ExerciseList({super.key});

  List<String> names = [
    "Edilio",
    "Real Madrid",
    "Guardalavaca",
    "Holguin",
    "Cuba"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listado de ejercicios"),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            final name = names[index];
            /*return Card(
              child: Text(name,style: TextStyle(color: Colors.red[600]),),
            );*/
            return ListTile(
              title: Text(name,style: const TextStyle(fontFamily: "Orbitron"),),
              leading: const Icon(Icons.person_2_rounded),
              onTap: () {
                print(name);
              },
            );
          },
        ));
  }
}
