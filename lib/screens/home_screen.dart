import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  //super: Llama al constructor de la clase padre que en este caso es StatelessWidget
  //key: Me sirve para identificar un widget
  const HomeScreen({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {

  //Creamos una variable para no estar cambiando uno por uno el tamaño del texto:

  //Formas de crear variables:
  //TextStyle fontSize30 = TextStyle( fontSize: 30);
  //var fontSize30 = TextStyle( fontSize: 30);
  const  fontSize30 = TextStyle( fontSize: 30);

  int counter =10;

   return Scaffold(

      appBar: AppBar(
        title: Text('HOMESCREEN'),
        elevation: 0,
      
        ),
        
    body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Numero de clicks",style: fontSize30,),
            /*Dos formas de transformar una variable de tipo entero a String */
            //counter.toString() --> es lo mismo que --> '$counter'
            Text( '$counter',style: fontSize30),
          ],
         ),
         ),

         floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
         floatingActionButton:FloatingActionButton(
          //Icon es un widget especialidado para recibir iconos
          child:  Icon(Icons.add),
          onPressed: () {  
            counter++;
            print('Hola mun');
            
          },
          
         )
    );




  }

}