import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('History Pengeluaran'),),
      body: Container(
        padding: EdgeInsets.all(12),
      ),
    );
  }
}