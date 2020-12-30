import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vokka_plus_vpn/Login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
            () async => await Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Login())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo1.png',fit: BoxFit.contain,),
            Text("Powered by",
              style: TextStyle(
                  color: HexColor("#002AA8"),
                  fontSize: 20
              ),
            ),
            Text("GlobalSend Inc",
              style: TextStyle(
                  color: HexColor("#002AA8"),
                  fontSize: 25
              ),
            ),

          ],
        ),
      ),
    );
  }
}
