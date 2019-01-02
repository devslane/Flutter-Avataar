import 'package:flutter/material.dart';
import 'package:flutter_avataar/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Avataar",
      home: new Scaffold(
        backgroundColor: Colors.white,
        body: HomePage(),
      ),
    );
  }
}
