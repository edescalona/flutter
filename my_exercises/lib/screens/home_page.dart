import 'package:flutter/material.dart';

class HomeAppExercise extends StatelessWidget {
  const HomeAppExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Image.network(
              "https://media0.giphy.com/media/4bjIKBOWUnVPICCzJc/giphy.gif?cid=6c09b952e54c95dba5958f59d51a55441dc72f35f6d80897&ep=v1_internal_gifs_gifId&rid=giphy.gif&ct=g",
              height: 150,
              width: 250,
            ),*/            
            Image.asset(
              "assets/images/download.jpeg"
            ),
            const Text("Registra tus ejercicios",
                style: TextStyle(color: /*Colors.blue*/Color(0xff0A6FE8), fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(),
    );
  }
}
