import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostScreen extends StatefulWidget{
  String gambar;
  Color getColor;
  String caption;
  DateTime getDate;
  PostScreen(
    {Key? key,
    required this.gambar, required this.getDate,
    required this.getColor,
    required this.caption})
    :super(key: key);
    @override
    State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenPost extends State<PostScreen> {
  @override
  Widget build (BuildContext content){
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: const <widget>[
            ListTile(
              leading: Icon(Icons.create),
              title: Text("Create New Post"),
            ),
            ListTile(
              leading: Icon(icon.preview),
              title: Text("Preview Post"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        tittle: Text("Post Preview"),
      ),
      body: Column(
        children: [
          ClipRRect(
            child: image.file(
              File(widget.gambar),
              width: 600,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          colorSelection(),
          TextSelection()
        ],
      ),
    );
  }

Widget colorSelection(){
  return Container(
    padding: EdgeInsets.all(10),
    child:Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  'published: $(DateFormate('dd-MM-yyy')
                ),
              )
            ],
          ),
        )
      ],
    )
  )
}