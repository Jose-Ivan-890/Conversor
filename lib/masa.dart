import 'package:flutter/material.dart';

class Masa extends StatelessWidget{
TextEditingController KGController= TextEditingController();
double resultado,resultado2;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      appBar: AppBar(
        title: Text("Conversor Masa"),
      ),
      body: SingleChildScrollView(
              child: Column( //Colum es como si fuera un VBOX acomoda todo de manera vertical 
          children: <Widget>[  //arreglo de widget sirve para acomodar varias cosas
            Card(
              child: Column(
                children: <Widget>[
                  ListTile( //sirve para mostrar el titulo de la lista
                    leading: Icon(Icons.whatshot),
                    title: Text('Kilogramos a gramos'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'covierte kg --> grs'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado2= double.parse(KGController.text)*1000;
                          return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(content: Text("Resultado: $resultado2"
                          )
                          );
                            }
                          );
                          
                        },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),//es como una tarjeta en el cual hay col
            Card(
              child: Column(
                children: <Widget>[
                  ListTile( //sirve para mostrar el titulo de la lista
                    leading: Icon(Icons.movie),
                    title: Text('Toneladas a Kilogramos'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'covierte T --> Kg'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController.text)*1000;
                          return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(content: Text("Resultado: $resultado"
                          )
                          );
                            }
                          );
                          
                        },
                        )
                      ],
                    ),
                  )
                ],
              ),
              ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile( //sirve para mostrar el titulo de la lista
                    leading: Icon(Icons.nature),
                    title: Text(' gramos a kilogramos'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'covierte grs --> kg'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController.text)/1000;
                          return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(content: Text("Resultado: $resultado"
                          )
                          );
                            }
                          );
                          
                        },
                        )
                      ],
                    ),
                  )
                ],
              ),
              ),
            Card(
              child: Column(
                children: <Widget>[
                  ListTile( //sirve para mostrar el titulo de la lista
                    leading: Icon(Icons.watch_later),
                    title: Text('gramos a miligramos'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'covierte grs --> Mgrs'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController.text)*1000;
                          return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(content: Text("Resultado: $resultado"
                          )
                          );
                            }
                          );
                          
                        },
                        )
                      ],
                    ),
                  )
                ],
              ),)
          ],
        ),
      ),
    );
  }
}