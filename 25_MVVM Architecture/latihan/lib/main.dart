import 'package:flutter/material.dart';
import 'package:latihan/screen/contact/contact_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactViewModel(),
        ),
      ],
      child: const MaterialApp(
        home: ContactScreen(),
      ),
    ),
  );
}
