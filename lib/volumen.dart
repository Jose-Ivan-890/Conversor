import 'package:flutter/material.dart';

class Volumen extends StatelessWidget{
  TextEditingController KGController= TextEditingController();
double resultado, resultado2;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Conversor de Volumen"),
      ),
       body: SingleChildScrollView(
                child: Column( //Colum es como si fuera un VBOX acomoda todo de manera vertical 
          children: <Widget>[  //arreglo de widget sirve para acomodar varias cosas
            Card(
              child: Column(
                children: <Widget>[
                  ListTile( //sirve para mostrar el titulo de la lista
                    leading: Icon(Icons.whatshot),
                    title: Text('Litros a mililitros'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'covierte L --> Ml'
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
                    title: Text('Metro cubico a Litro'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'M^3 --> L'
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
                    title: Text('Litro a Onza'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'L --> Onza'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController.text)*33.814;
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
              )
          ],
         ),
       ),
    );
  }

}
