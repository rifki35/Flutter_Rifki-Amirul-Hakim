import 'package:flutter/material.dart';
import 'package:latihan/model/api/contact_api.dart';
import 'package:latihan/screen/contact/contact_view_model.dart';
import 'package:mockito/annotations.dart';
import 'package:provider/provider.dart';

import 'screen/contact/contact_screen.dart';

@GenerateMocks([ContactAPI])
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactViewModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactScreen(),
      ),
    ),
  );
}
