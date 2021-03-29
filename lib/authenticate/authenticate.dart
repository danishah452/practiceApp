import 'package:flutter/material.dart';
import 'file:///C:/projects/practice/lib/signup/register.dart';
import 'package:practice/signin/login.dart';

class Authenticate extends StatefulWidget {

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn =! showSignIn

    );
  }
  @override
  Widget build(BuildContext context) {
   if (showSignIn){
     return login(toggleView: toggleView);
   }else{
     return Register();
   }
  }
}
