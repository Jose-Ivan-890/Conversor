import 'package:flutter/material.dart' show BuildContext, StatelessWidget, Widget;
import 'package:flutter/material.dart';

class Temperatura extends StatelessWidget{
  TextEditingController KGController= TextEditingController();
  TextEditingController KGController2= TextEditingController();
  TextEditingController KGController3= TextEditingController();
double resultado,op;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false ,
      appBar: AppBar(
        title: Text("Conversor de Temperatura"),
      ),
      body: SingleChildScrollView(
              child: (
          Column(
            children: <Widget>[
                Card(
              child: Column(
                children: <Widget>[
                  ListTile( //sirve para mostrar el titulo de la lista
                    leading: Icon(Icons.motorcycle),
                    title: Text(' Fahrenheit a Celsius '),
                  ),
                  TextField(
                    controller: KGController,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      fillColor: Colors.green[50],
                      filled: true,
                      border: OutlineInputBorder(),
                      helperText: 'F° --> C°'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController.text)*100;
                          op=(resultado-32)*(5/9);
                          return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(content: Text("Resultado: $op"
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
                    title: Text('Celsius a Fahrenheit'),
                  ),
                  TextField(
                    controller: KGController2,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      fillColor: Colors.lightBlue[50],
                      filled: true,
                      border: OutlineInputBorder(),
                      helperText: 'C°  --> f°'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController2.text);
                          op= (resultado*(9/5))+32;
                          return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(content: Text("Resultado: ($op"
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
                    title: Text('Kelvin a Fahrenheit'),
                  ),
                  TextField(
                    controller: KGController3,
                    keyboardType: TextInputType.number,// aparece un teclado numerico
                    decoration: InputDecoration(
                      fillColor: Colors.red[50],
                      filled: true,
                      border: OutlineInputBorder(),
                      helperText: 'K° --> F°'
                    ),
                  ),
                  ButtonTheme.bar(
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(child: Text('Convertir'),
                        onPressed: (){
                          resultado= double.parse(KGController3.text);
                          op=(resultado-273.15)*(9/5)+32;
                          return showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(content: Text("Resultado: $op"
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
            ],)
        ),
      ),
    );
  }
}


