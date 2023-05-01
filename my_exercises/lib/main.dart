/* Importaciones propias de Flutter */
import 'package:flutter/material.dart';

/* Importaciones de terceros */

/* Importaciones propias */
import 'package:my_exercises/screens/home_page.dart';
import 'package:my_exercises/screens/exercises_list.dart';
import 'package:my_exercises/screens/home_page_full_widget.dart';

void main() => runApp(const MyAppExercise());

class MyAppExercise extends StatelessWidget {
  const MyAppExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mis Ejercicios",
        theme: ThemeData(
            primarySwatch: Colors.blue, fontFamily: "GloriaHallelujah-Regular"),
        //home: const HomeAppExercise());
        home: ExerciseList());
        //home: const HomeAppExerciseFullWidget());
  }
}
