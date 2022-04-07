import 'package:flutter/material.dart';
import 'package:latihan/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: HomeScreen(),
    );
  }
}
