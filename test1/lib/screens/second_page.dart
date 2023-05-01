import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SecondPageArguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second page"),
      ),
      body: Center(
        child: Text(args.name + args.lastname),
      ),
    );
  }
}

class SecondPageArguments {
  final String name;
  final String lastname;
  SecondPageArguments(this.name,this.lastname);
}
