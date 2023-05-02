import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  DrawerHome({super.key});

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        title: const Text("Uso Drawer"),
      ),
      body: const Center(
        child: Text("Hello"),
      ),
      drawer: _getDrawer(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scaffKey.currentState?.openDrawer();
        },
        child: const Icon(Icons.menu),
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: const Text("Edilio Escalona"),
        accountEmail: const Text("edescalona@gmail.com"),
        currentAccountPicture: const FlutterLogo(),
        otherAccountsPictures: const <Widget>[
          FlutterLogo(),
          FlutterLogo(),
          FlutterLogo()
        ],
        onDetailsPressed: () {},
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepOrange, Colors.black],
                end: Alignment.bottomRight)),
      ),
      DrawerHeader(
        decoration: const BoxDecoration(color: Colors.orange),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            FlutterLogo(
              size: 100,
            ),
            Text(
              "Uso de Drawer",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      ListTile(
        title: const Text("Inicio"),
        leading: const Icon(Icons.home),
        onTap: () => showHome(context),
      )
    ]));
  }

  void showHome(BuildContext context) {
    Navigator.pop(context);
  }
}
