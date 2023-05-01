import 'package:flutter/material.dart';
import 'package:test1/screens/home_page.dart';
import 'package:test1/screens/second_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: HomePage()
      initialRoute: "/",
      routes: {
        "/":(context) => const HomePage(),
        "/second":(context) => const SecondPage()
      },
    );
  }
}