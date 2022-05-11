import 'package:flutter/material.dart';

class Form extends StatefulWidget {
  const Form({ Key? key }) : super(key: key);

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Column(children: [
        TextField(
          decoration: InputDecoration(labelText: 'Kode Produk'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Nama Produk'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Harga Produk'),
        ),
        RaisedButton(child: Text('Simpan'), onPressed: (){
          
        },)
      ],),
      
    );
  }
}