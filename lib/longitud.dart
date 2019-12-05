import 'package:flutter/material.dart';

class Longitud extends StatelessWidget{
  TextEditingController KG= TextEditingController();
   TextEditingController KG2= TextEditingController();
    TextEditingController KG3= TextEditingController();
     TextEditingController KG4= TextEditingController();
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
                    controller: KG,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.supervised_user_circle),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      helperText: 'covierte Mts --> cm'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KG.text)*100;
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
                    controller: KG2,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.sync),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                      
                      helperText: 'covierte km --> mts'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KG2.text)*1000;
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
                    controller: KG3,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.tab),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                     
                      helperText: 'covierte km --> cm'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KG3.text)*100000;
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