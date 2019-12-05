import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MenuLateral();
  }
  
}

class MenuLateral extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MenuLateralState();
    
  }

}

class MenuLateralState extends State<MenuLateral>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor :)'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
       child: Image.asset("images/navidad0.jpg"),
          ),
          drawer:  Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange
                  ),
                  accountName: Text ('Ivansin :3'),
                  accountEmail: Text('jose-ivan-890@hotmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('http://i.pravatar.cc/300'),
                  ),
                  ),
                  ListTile(
                    title: Text('Masa'),
                    trailing: Icon(Icons.all_inclusive),
                    onTap: (){
                      Navigator.pop(context);// este comando sirve para que se vuelva al inicio retrae la pantalla de opciones
                      Navigator.pushNamed(context, '/masa');

                    },
                    ),
                     ListTile(
                    title: Text('Volumen'),
                    trailing: Icon(Icons.all_inclusive),
                    onTap: (){
                      Navigator.pushNamed(context,'/vol');
                    },
                    ),
                     ListTile(
                    title: Text('Temperatura'),
                    trailing: Icon(Icons.all_inclusive),
                    onTap: (){
                      Navigator.pushNamed(context, '/temp');
                    },
                    ),
                     ListTile(
                    title: Text('Longitud'),
                    trailing: Icon(Icons.all_inclusive),
                    onTap: (){
                      Navigator.pushNamed(context, '/long');
                    },
                    )
              ],
              ),
              ),
      
    );
  }
  }
