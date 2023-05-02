import 'package:flutter/material.dart';
import 'package:test1/screens/animations.dart';
import 'package:test1/screens/drawer_page.dart';
import 'package:test1/screens/home_page.dart';
import 'package:test1/screens/image_picker.dart';
import 'package:test1/screens/second_page.dart';
import 'package:test1/screens/simple_dialog.dart';

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
        "/second":(context) => const SecondPage(),
        "/drawer_page": (context)=> DrawerHome(),
        "/simple_dialog": (context)=> const SimpleDialogPage(),
        "/animations": (context)=> const AnimationPage(),
        "/image_picker": (context)=> const ImagePickerPage(),
        
      },
    );
  }
}