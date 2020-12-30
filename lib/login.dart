
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked=false;
  var textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset('assets/images/logo1.png',fit: BoxFit.cover,height: 150,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: 'Please Enter Vokka Plus Username',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:BorderSide(color: HexColor("#6027B0"))
                      )
                    ),
                 controller: textController,
                 /*   onChanged: (value) {
                      textController.text=value;
                    },*/
                  ),
                ),
                CheckboxListTile(
                  title: Text("Remember me"),
                  value: isChecked,
                  activeColor: HexColor("#6027B0"),
                  onChanged: (value) => {
                    setState((){
                      isChecked=value;
                    print(value);
                  })
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    width: double.maxFinite,
                    child: RaisedButton(
                      color: HexColor("#002AA8"),
                      disabledColor: HexColor("#002AA8"),
                      child: Text("Login",style: TextStyle(color: Colors.white),),
                      onPressed: () {
                        setState(() {
                          print(textController.text);
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Text("Privacy Policy"),
                    ),
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
