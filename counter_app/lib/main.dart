/* Importaciones propias de Flutter */
import 'package:flutter/material.dart';

/* Importaciones de terceros */

/* Importaciones propias */
//import 'package:counter_app/screens/home_screen.dart';
import 'package:counter_app/screens/counter_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),    StatelessWidget: Es que los valores dinamicos no se reflejan en la vista
      home: CounterScreen(), //StateFullWidget: Es que los valores dinamicos se reflejan en la vista
    );
  }

}