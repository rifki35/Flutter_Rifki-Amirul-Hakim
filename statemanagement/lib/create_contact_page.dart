import 'package:flutter/material.dart';

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({Key? key}) : super(key: key);

  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Contact')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          TextField(
            onChanged: (value) {},
            decoration: InputDecoration(hintText: 'Nama'),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
              onChanged: (value) {},
              decoration: InputDecoration(hintText: 'Nomor Telpon')),
          SizedBox(
            height: 4,
          ),
          ElevatedButton(onPressed: (() {}), child: Text('Submit'))
        ]),
      ),
    );
  }
}
