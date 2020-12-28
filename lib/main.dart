import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vokka_plus_vpn/Login.dart';
import 'package:vokka_plus_vpn/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    /*Timer(Duration(seconds: 5), ()=>{
    Navigator.push(context, MaterialPageRoute(builder: (context){
        return Login();
      }))
      }
    );*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash()
    );
  }


}

