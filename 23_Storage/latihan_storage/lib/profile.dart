import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initstate(){
    super.initState();
    initData();
  }

String name = '';
String email = '';
Void initData()async{
  var pref = await SharedPreferences.getInstance();
  name = pref.getString('name')?? '';
  email = pref.getString('email')?? '';
  setState(() {});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text('Selamat Datang : $name'),
          SizedBox(
            height: 20,
          ),
          Text('Email Anda : $email'),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: ()async{
                var pref = await SharedPreferences.getInstance();
                pref.clear();
                Navigator.pop(context);
              },
              child: Text('Logout')
            ),
          )
        ],
      ),
      
    );
  }
}