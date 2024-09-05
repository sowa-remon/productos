import 'package:flutter/material.dart';
import 'package:productos/pages/home_page.dart';
import 'package:productos/pages/login_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'login',
      routes: {
        'login':(context) => LoginPage(),
        'home': (context) => HomePage(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.pinkAccent,
      ),
    );
  }
}