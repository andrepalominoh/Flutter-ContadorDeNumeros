import 'package:flutter/material.dart';
import 'package:flutter_app/screens/counter_screen.dart';
//import 'package:flutter_app/screens/home_screen.dart';


void main(){
  runApp(MyApp()); //new MyApp
}

//Class MyApp es una clase y se convierte en widget cuando se extiende al StatelessWidget
//Todo StatelessWidget tiene un metodo build(construir), el cual recibe 
//como parametro el BuildContext
class MyApp extends StatelessWidget{ //MyApp nuestro primer widget
   const MyApp({Key?key}):super(key: key);// Constructor de mi clase Myapp, lo sabemos porque el cosntructro lleva el mismo nombre que mi clase
  
  @override
  Widget build(BuildContext context) { //Este metodo build regresa un widget 
    return MaterialApp(//MaterialApp nuestro segundo widget

    debugShowCheckedModeBanner: false , //Oculta la cinta de depuración
     // home: HomeScreen() //La clase HomeScreen
      home:CounterScreen()
    );

  
  }
}