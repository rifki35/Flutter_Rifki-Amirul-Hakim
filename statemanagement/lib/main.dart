import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_3/contact_state.dart';
import 'package:flutter_application_3/create_contact_page.dart';



void main() {
  runApp(
    MultiProvider(providers:[
      ChangeNotifierProvider(
        create: (context)=>ContactState(),
      )
    ],child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactPage()
      );
  }
}
class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact')),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical:10, horizontal: 20),
        child: ListView.builder(itemBuilder: ((context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama : Rifki',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 4,
              ),
              Text('Nomor Telpon: 092746637'),
              SizedBox(
                height: 10,
              )
          ],
        ),
        itemcount: 10
    ),
    FloatingActionButton: FloatingActionButton(
      onPressed: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => CreateContactPage()));
      },
      child: Icon(Icons.add)),
    };
  }
}
