import 'package:flutter/material.dart';
import 'package:ftp2/pages/pgallery.dart';
import 'package:ftp2/pages/pmeteo.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "/gallery":(context)=>PageGallery(),
        "/meteo":(context)=>PageMeteo(),
      },
      home:Scaffold(
        drawer: PageDrawer (),
        appBar: AppBar(
          title: Text('Home'),

        ),
        body: Center(
          child:Text('Home')
        ),
      )


    );

  } }

class PageDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          DrawerHeader(decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white,Colors.deepOrange])
          ),
            child: CircleAvatar(
            backgroundImage: AssetImage("assets/logo.png"),
              radius:50 ,
          ),),
          ListTile(
            title:Text('Home') ,
            leading: Icon(Icons.home),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "/gallery");
            },
          ),

          ListTile(
            title:Text('Meteo') ,
            leading: Icon(Icons.shield_moon),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.pushNamed(context, "/meteo");
            },
          )
        ],
      )

    );  }
}
