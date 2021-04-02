// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/languages/localization/localization_constants.dart';
import 'package:practice/responsive/screen_size_helper.dart';
import 'package:practice/routes/route_names.dart';
import 'package:practice/services/auth.dart';
import 'package:practice/ui/Symptoms/symptoms.dart';
import 'package:practice/ui/drawer/drawer.dart';
import 'package:practice/ui/drawer/sensor.dart';

import 'images.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        drawer: buildDrawer(context),
        appBar: AppBar(
          title: Center(
              child: Text(
            getTranslated(context, 'home_appbar'),
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () async {
                await _auth.signOut();
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body: SafeArea(
          left: false,
          right: false,
          top: false,
          child: Expanded(
            flex: 4,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                // Heading(),
            Container(
              child: Center(
                child: Text(
                  getTranslated(context, 'home_title'),
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                ),
              ),
            ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(mylist.length, (index) {
                      return Container(
                        width: 340,
                        height: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                                image: AssetImage(mylist[index]['img']),
                                fit: BoxFit.cover)),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Buttons(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  crossAxisCount: 2,
                  childAspectRatio: 3.2,
                  crossAxisSpacing: 7.5,
                  mainAxisSpacing: 7.0,
                  children: [
                    MaterialButton(
                      color: Colors.blue.shade900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SensorClass()),
                        );
                      },
                      child: Center(
                          child: Text(
                            getTranslated(context, 'sensor_btn'),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                    ),
                    MaterialButton(
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                            getTranslated(context, 'record_btn'),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                    ),
                    MaterialButton(
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                            getTranslated(context, 'review_btn'),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                    ),
                    MaterialButton(
                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Symptom()),
                        );
                      },
                      child: Center(
                          child: Text(
                            getTranslated(context,'symptoms'),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                    ),
                  ],
                ),
              ),
            ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


