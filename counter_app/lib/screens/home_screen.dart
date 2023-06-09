import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 5;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        elevation: 0,
      ),
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Counter clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
            counter++;
        },
      ),
    );
  }
}
