import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
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
      home: const MyHomePage(Title: 'Flutter Demo Home Page'),
      
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  bool  = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            setState(() {
          isBig = !isBig;
        });
      },
      child: AnimatedContainer(
        height: isBig ? 200 : 100,
        width: isBig ? 200 : 100,
        duration: Duration(seconds: 1),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
          'https://akcdn.detik.net.id/visual/2014/11/28/ad79fd4e-87b7-4805-adf7-4b973ba2d6d6_169.jpg?w=650'),
          radius: 100),
        ),
        ),
      ),
      ),
      
    );
  }
}