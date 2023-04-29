import 'package:flutter/material.dart';


void main() => runApp(const MyAppExercise());


class MyAppExercise extends StatelessWidget{
  const MyAppExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mis Ejercicios",
      home: HomeAppExercise()
    );
  }
}


class HomeAppExercise extends StatelessWidget{
  const HomeAppExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text("Registra aqui tus ejercicios",style: TextStyle(color: Colors.blue),)
    );
  }

}
