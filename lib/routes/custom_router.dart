import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/home.dart';
import 'package:practice/authenticate/wrapper.dart';
import 'package:practice/routes/route_names.dart';
import 'package:practice/ui/drawer/sensor.dart';
import 'package:practice/ui/registeration/signin/login.dart';
import 'package:practice/ui/registeration/signup/register.dart';

import '../ui/registeration/Splash.dart';

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
      // case SensorRoute:
      //   return MaterialPageRoute(builder: (_) => Sensor());



    }
    // return MaterialPageRoute(builder: (_) => NoPageFound());
  }
}
