import 'package:flutter/material.dart';
import 'package:rumahinternet/app/login.dart';
import 'package:rumahinternet/cobacoba/coba.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}