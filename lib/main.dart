import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: Column(
            children: [
              Image.asset('assets/images/logo1.png'),
              Text("Powered by",
                style: TextStyle(
                    color: HexColor("#002AA8"),
                    fontSize: 20
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

