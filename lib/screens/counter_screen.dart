import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  //super: Llama al constructor de la clase padre que en este caso es StatelessWidget
  //key: Me sirve para identificar un widget
  const CounterScreen({Key?key}):super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  //Propiedades 
  int counter =10;

  @override
  Widget build(BuildContext context) {

  //Creamos una variable para no estar cambiando uno por uno el tamaño del texto:

  //Formas de crear variables:
  //TextStyle fontSize30 = TextStyle( fontSize: 30);
  //var fontSize30 = TextStyle( fontSize: 30);
  const  fontSize30 = TextStyle( fontSize: 30);



   return Scaffold(

      appBar: AppBar(
        title: Text('COUNTERSCREEN'),
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

          //Funcion que viene interna en el state(solo seleccionar y aparecera en la parte de arriba)
          //Esta funcion solo lo puedo llamar dentro de un StatefulWidget
          //El setState notifica que hubo un cambio en el estado 
          // Y por consecuencia tiene que volver a  va redibujarse 
             setState(() {
              //Podriamos colocar el counter ++; en esta parte sin problematic
              //counter++
             });
          /*setState*/
          //Cuando nosotros ejecutamos  el setState volvemos a llamar al  Widget build(BuildContext context),
          //es decir se vuelve a reconstruir o redibujar desde ese punto .

          //Es por eso que el   int counter =10; , se le pone fuera del Widget build(BuildContext context) ,
          // porque esto < int counter = 10> solo se ejecuta una vez .
            
          },
          
         )
    );




  }
}