import 'package:flutter/material.dart';

class SimpleDialogPage extends StatelessWidget {
  const SimpleDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Show SimpleDialog"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () => showSimpleDialog(context),
              child: const Text("Simple Dialog")),
          ElevatedButton(
              onPressed: () => showAlertDialog(context),
              child: const Text("Alert Dialog")),
        ],
      )),
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text("Seleccione"),
          children: [
            ListTile(
              title: const Text("Eliminar"),
              leading: const Icon(Icons.delete),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Editar"),
              leading: const Icon(Icons.edit),
              onTap: () {
                Navigator.pop(context);
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )
          ],
        );
      },
      barrierDismissible:
          false, //Esto es para deshabilitar la parte de atrás del SimpleDialog
    );
  }

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Eliminar"),
          content: const Text("Desea eliminar el elemento?"),
          actions: [
            OutlinedButton(onPressed: () {Navigator.pop(context);}, child: const Text("No")),
            OutlinedButton(onPressed: () {Navigator.pop(context);}, child: const Text("Si"))
          ],
        );
      },
      barrierDismissible:
          true, //Esto es para deshabilitar la parte de atrás del SimpleDialog
    );
  }
}
