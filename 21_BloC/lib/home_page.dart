import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_bloc/bloc/contact_bloc.dart';
import 'package:flutter_state_bloc/create_contact.dart';
import 'package:flutter_state_bloc/models/contact.dart';
import 'package:section_21/models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact'),centerTitle: true),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) {
          if(state is ContactLoading){
            return const CircularProgressIndicator();
          }
          if (state is ContactLoaded){
            return Listview.builder(
              itemCount: state.contact.length,
              
            )
          }
          
        }),)
      
    );
  }
}