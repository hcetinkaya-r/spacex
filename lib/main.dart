import 'package:flutter/material.dart';
import 'package:spacex/login/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.red,
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.white,
      ),
      home: LoginScreen(),
    );
  }
}


