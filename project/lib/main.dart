import 'package:flutter/material.dart';
import 'package:login/dashboard_page.dart';
import 'package:login/screen/auth/auth_state.dart';
import 'package:login/screen/auth/login_page.dart';
import 'package:login/screen/auth/splash_screen.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';

void main() => runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => AuthState())],
    child: MyApp()));

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    DashboardPage.tag: (context) => DashboardPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: SplashScreen(),
      routes: routes,
    );
  }
}
