/* Importaciones propias de Flutter */
import 'package:flutter/material.dart';

/* Importaciones de terceros */

/* Importaciones propias */
import 'package:my_exercises/screens/home_page.dart';
import 'package:my_exercises/screens/exercises_list.dart';

void main() => runApp(const MyAppExercise());

class MyAppExercise extends StatelessWidget {
  const MyAppExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mis Ejercicios",
        theme: ThemeData(primarySwatch: Colors.blue),
        //home: const HomeAppExercise());
        home: ExerciseList());
  }
}
