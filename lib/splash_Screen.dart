import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/first_Page.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/second_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => SecondPage()), (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
             child: Image.asset("assets/splash_logo.png",width: 200,
             height: 200,fit: BoxFit.fill,),
             /* child: Image.network(
                "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
                width: 200,
                height: 200,
              ),*/
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}


