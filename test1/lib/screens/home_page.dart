import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test1/screens/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController _nameTextController;

  late TextEditingController _lastNameTextController;

  String? nameValue;

  String? lastnameValue;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  /*const TextField(
                decoration: InputDecoration(labelText: "Nombre"),
                controller: _nameTextController,
              ),
              const TextField(
                decoration: InputDecoration(labelText: "Apellido"),
                controller: _lastNameTextController,
              ),*/

                  TextFormField(
                    controller: _nameTextController,
                    decoration: const InputDecoration(labelText: "Nombre"),
                    onSaved: (newValue) {
                      nameValue = newValue;
                    },
                    validator: (value) {
                      if (value == "") {
                        return "Este campo es obligatorio.";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _lastNameTextController,
                    decoration: const InputDecoration(labelText: "Apellido"),
                    onSaved: (newValue) {
                      lastnameValue = newValue;
                    },
                    validator: (value) {
                      if (value == "") {
                        return "Este campo es obligatorio.";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Número de teléfono"),
                    keyboardType: TextInputType.phone,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Correo electrónico"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Edad"),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: "Url"),
                    keyboardType: TextInputType.url,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue)),
                      child: const Icon(Icons.add)),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      _showSecondPage(context);
                    },
                    child: const Text('Second Page'),
                  ),
                ],
              )),
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController = TextEditingController();
    _lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    _nameTextController.dispose();
    _lastNameTextController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void _showSecondPage(BuildContext context) {
    /*final route = MaterialPageRoute(builder: (BuildContext context){
      return const SecondPage(name: "Edilio Escalona Almira");
    });
    Navigator.of(context).push(route);*/

    /*Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(
            _nameTextController.text, _lastNameTextController.text));*/
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      Navigator.of(context).pushNamed("/second",
          arguments: SecondPageArguments(nameValue!, lastnameValue!));
    }
  }
}
