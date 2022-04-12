import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_bloc/bloc/contact_bloc.dart';
import 'package:fluttera_state_bloc/models/contact.dart';
import 'package:section_21/models/models.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  String name = '';
  String phoneNumber = '';
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create Contact'),
          centerTitle: true,
        ),
        body: BlocListener<ContacBloc, ContactState>(
            listener: (context, state) {
              if (state is ContactLoaded) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Contact ditambahkan')));
              }
            },
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: nameController,
                      onChanged: (String value){
                        phoneNumber = value;
                      },
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: phoneNumberController,
                        onChanged: (String value){
                          phoneNumber = value;
                        },
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        center(
                          child: ElevatedButton(
                            onPressed: (){
                              var contact = 
                                Contact(name: name, phoneNumber: phoneNumber);
                              context 
                                .read<ContactBloc>()
                                .add(AddContact(contact:contact));
                              Navigator.pop(context);
                            },
                            child: const Text('Save'),
                          ),
                        )
            ],
         ),
      ),
    );
  }
}
