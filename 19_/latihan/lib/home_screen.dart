import 'package:flutter/material.dart';
import 'package:latihan/about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const
            AboutScreen()));
          },
          child: const Text('Go To Page About'),
        ),
      ),
    );
  }
}
