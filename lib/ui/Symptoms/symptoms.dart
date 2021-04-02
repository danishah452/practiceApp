import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/images.dart';

import 'Symptomsjson.dart';

class Symptom extends StatefulWidget {
  @override
  _SymptomState createState() => _SymptomState();
}

class _SymptomState extends State<Symptom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Symptoms',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
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
              Title(),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: symList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                            child: Card(
                              color: Colors.yellow,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                              child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 50,
                                      backgroundImage: AssetImage(pics[index]['img']),
                                      ),
                                  ),
                                   Text(symList[index].name, style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(symList[index].description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              ),
                            ],
                              ),
                            ),
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
      'Early Symptoms of Parkinson',
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.red),
    ),
            )));
  }
}
