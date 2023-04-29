import 'package:flutter/material.dart';

class HomeAppExercise extends StatelessWidget {
  const HomeAppExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text("Registra tus ejercicios",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  backgroundColor: Colors.white)),
        ));
  }
}
