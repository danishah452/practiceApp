import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/home.dart';
import 'file:///C:/projects/practice/lib/signup/register.dart';
import 'package:practice/authenticate/wrapper.dart';
import 'package:practice/routes/route_names.dart';
import 'package:practice/signin/login.dart';

import '../Splash.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name){
      case splashRoute:
        return MaterialPageRoute(builder: (_) => splash());
      case LoginRoute:
        return MaterialPageRoute(builder: (_) => login());
      case WrapperRoute:
        return MaterialPageRoute(builder: (_) => Wrapper());
      case homeRoute:
        return MaterialPageRoute(builder: (_) => home());
      case RegisterRoute:
        return MaterialPageRoute(builder: (_) => Register());


    }
    // return MaterialPageRoute(builder: (_) => NoPageFound());
  }
}
