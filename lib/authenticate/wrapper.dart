import 'package:flutter/material.dart';
import 'package:practice/home.dart';
import 'package:practice/authenticate/authenticate.dart';
import 'package:practice/models/user.dart';
import 'package:provider/provider.dart';

import 'package:flutter/cupertino.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return home();
    }
  }
}
