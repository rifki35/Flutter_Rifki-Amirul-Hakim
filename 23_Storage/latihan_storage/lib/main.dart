import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:latihan_storage/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = '';
  String email = '';
  @override
  Void initState(){
    super.initState();
    initData();
  }
  void initData()async{
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString('name')!=null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile(),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
    
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
      
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              onChanged: (value){
                name = value;
              },
              decoration: InputDecoration(labelText: 'Name' ),
            ),
            SizedBox(
              height: 8,
            ),
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: ()async{
                  final pref.setString('email',email);
                  final pref.setString('name',name);
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Profile(),));
                },
              ),
            )
            
        
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
