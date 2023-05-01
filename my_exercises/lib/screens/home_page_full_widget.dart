import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeAppExerciseFullWidget extends StatefulWidget {
  const HomeAppExerciseFullWidget({super.key});

  @override
  State<HomeAppExerciseFullWidget> createState() =>
      _HomeAppExerciseFullWidgetState();
}

class _HomeAppExerciseFullWidgetState extends State<HomeAppExerciseFullWidget> {
  String name = "Edilio";
  double progressValue = 0;
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 50),
            ),
            LinearProgressIndicator(
              value: progressValue,
            ),
            Switch(
                value: switchValue,
                onChanged: (value) {
                  switchValue = value;
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeNames,
        child: const Icon(Icons.refresh),
      ),
    );
  }

  void changeNames() {
    if (name == "Edilio") {
      name = "Listley";
    } else {
      name = "Edilio";
    }
    progressValue += 0.01;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      changeNames();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
