import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.cyan.shade300, Colors.cyan.shade800])),
            child: Image.asset(
              "assets/images/res_partner_4-image.png",
              color: Colors.white,
              height: 200,
            ),
          ),
          Center(
            child: Card(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 260),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: "Usuario"),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration:
                          const InputDecoration(labelText: "Contraseña"),
                      obscureText: true,
                    ),
                    TextButton(
                        onPressed: () {}, child: const Text("Inciar sesión"))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
