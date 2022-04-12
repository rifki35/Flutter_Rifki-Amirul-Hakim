import 'package:flutter/material.dart';
import 'package:flutter_application_3/person_model.dart';
import 'package:provider/provider.dart';
import 'contact_state.dart';

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({Key? key}) : super(key: key);

  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  PersonModel personModel = PersonModel(name: '', nomorTelepon: '');
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ContactState>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Create Contact')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          TextField(
            onChanged: (value) {
              personModel.name = value;
            },
            decoration: InputDecoration(hintText: 'Nama'),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
              onChanged: (value) {
                personModel.nomorTelepon = value;
              },
              decoration: InputDecoration(hintText: 'Nomor Telepon')),
          SizedBox(
            height: 4,
          ),
          ElevatedButton(
              onPressed: () {
                state.addPerson(personModel: personModel);
                Navigator.pop(context);
              },
              child: Text('Submit'))
        ]),
      ),
    );
  }
}
