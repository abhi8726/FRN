import 'package:flutter/material.dart';
import 'package:login_ui/registerpage.dart';
import 'package:login_ui/loginpage.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'loginui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'KGFHAPPY',
      ),
      initialRoute: 'loginpage',
      routes: {
        'loginpage': (context) => LoginPage(),
        'registerpage': (context) => RegisterPage()
      },
    );
  }
}
