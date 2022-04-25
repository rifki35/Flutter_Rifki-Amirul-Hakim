import 'dart:ffi';

import 'package:flutter/material.dart';

void main (){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

 TextEditingController controllerNamaLengkap= TextEditingController();
  TextEditingController controllerNomorTelpon= TextEditingController();
   TextEditingController controllerNama= TextEditingController();
  void kirimdata(){
    AlertDialog alertDialog = new AlertDialog(
      content: Container(
        height: 200,
        child: Column(children: <widget>[
          Text('Nama Lengkap: ${controllerNama,text} '),
          Text('Nama Lengkap: ${controllerNomorTelpon,text} '),
          TextButton(onPressed: ()=> Navigator.pop(context), 
          child: Text('Kembali'))
        ]),
      ),
    );
    showDialog(context: context,child: alertDialog);
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text('Formulir'),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
        padding: new EdgeInsets.all(10),
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: controllerNama,
              decoration: new InputDecoration(
                hintText: 'Nama Lengkap',
                labelText: 'Nama Lengkap',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(20)
                )
              ),
            ),
            SizedBox(height: 20,),
        new TextField(
          controller: controllerNomorTelpon,
              decoration: new InputDecoration(
                hintText: 'Nomor Telpon',
                labelText: 'Nomor Telpon',
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(20)
                )
              ),
            ),
  TextButton(onPressed: (){_kirimdata}, child: 
  Text('Submit'),
  )
          ],
        ),

      ),
      
    );
  }
}