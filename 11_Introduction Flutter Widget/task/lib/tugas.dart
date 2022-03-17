import 'dart:async';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  var jam = '';
  void startJam() {
    Timer.periodic(Duration(seconds: 1), (_) {
      var tgl = DateTime.now();
      var formatedjam = DateFormat.Hms().format(tgl);
      setState(() {
        jam = formatedjam;
      });
    });
  }

  @override
  void initState() {
    startJam();
    // ignore: todo
    // TODO: implement initstates
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: const Text('flutter widget'),
        ),
        body: Center(
          child: Text(
            jam,
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
