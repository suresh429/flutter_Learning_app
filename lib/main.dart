import 'package:flutter/material.dart';
import 'package:flutter_app/second_page.dart';
import 'package:flutter_app/splash_Screen.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Suresh Project" ,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: SecondPage(),
    );
  }
}

