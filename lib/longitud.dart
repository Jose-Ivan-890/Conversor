import 'package:flutter/material.dart';

class Longitud extends StatelessWidget{
  TextEditingController KGController= TextEditingController();
double resultado;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      appBar: AppBar(
        title: Text("Conversor Longitud"),
      ),

      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  ListTile( //sirve para mostrar el titulo de la lista
                    leading: Icon(Icons.motorcycle),
                    title: Text('Metros a centimetros'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(

                      border: OutlineInputBorder(),
                      helperText: 'covierte Mts --> cm'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController.text)*100;
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
                    leading: Icon(Icons.whatshot),
                    title: Text('Kilometros a metros'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'covierte km --> mts'
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
                    leading: Icon(Icons.mouse),
                    title: Text('Kilometros a centimetros'),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      helperText: 'covierte km --> cm'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController.text)*100000;
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
          ],),
      ),
    );
  }

}