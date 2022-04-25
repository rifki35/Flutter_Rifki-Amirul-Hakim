import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management_2/models/task_manager.dart';
import 'screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TaskManager(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Management',
        home: TaskScreen(),
      ),
    );
  }
}
