import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:practica_1/longitud.dart';
import 'package:practica_1/temperatura.dart';
import 'package:practica_1/masa.dart';
import 'package:practica_1/dashboard.dart';
import 'package:practica_1/volumen.dart';


void main() => runApp(

MaterialApp(
  routes:{
 '/masa' : (context)=> Masa(),
  '/vol' : (context)=> Volumen(),
  '/temp' : (context)=> Temperatura(),
  '/long' : (context)=> Longitud()
  
  },
  home: Conversor(),
)
);



class Conversor extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConversorState();
  }}

  class ConversorState extends State<Conversor>{
  @override
  Widget build(BuildContext context) {
    // Retornamos la construccion completa de Widget
    return SplashScreen(
      seconds: 5,
    navigateAfterSeconds: Dashboard(),
    title: Text("Bienvenidos.....",
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    )),
    image: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFJLjTcfo34Ymn1zP7U80LC9lFhWyRlMkoPBa7JEytKVjMGvBC&s"),
    gradientBackground: LinearGradient(
      colors: [Colors.white, Colors.orange],
      begin: Alignment.center,
      end: Alignment.bottomCenter
      ),
    );
  }

  }