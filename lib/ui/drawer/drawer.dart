import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:practice/ui/registeration/signin/login.dart';

import '../../home.dart';

Drawer buildDrawer(BuildContext context) {
  return new Drawer(

    elevation: 20,
    child: Container(
      color: Colors.black,
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            //   child: new CircleAvatar(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20  ),
              child: Row(
                children: [

                  Icon(Icons.admin_panel_settings, color: Colors.red, size: 40),
                       Text(
                        'Parkinson',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        textAlign: TextAlign.center,
                      ),


                ],
              ),
            ),
            margin: EdgeInsets.only(top: 80),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
            height: 1,
          ),
          new Container(
            color: Colors.black,
            child: new Column(
              children: [
                InkWell(
                    child: ListTile(
                      leading: Icon(Icons.ac_unit, color: Colors.orange),

                      title: Text(
                        'home',
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => home()),
                      );
                    }),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height: 1,
                ),
                InkWell(
                    child: ListTile(
                      leading: Icon(Icons.ac_unit, color: Colors.orange),

                      title: Text(
                        'Record Symptoms',
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => home()),
                      );
                    }),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height: 1,
                ),
                InkWell(
                    child: ListTile(
                      leading: Icon(Icons.ac_unit, color: Colors.orange),
                      title: Text(
                        'Voice Recording',
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                    }),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height: 1,
                ),
                InkWell(
                    child: ListTile(
                      leading: Icon(Icons.ac_unit, color: Colors.orange),
                      title: Text(
                        'Review Question',
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => home()),
                      );
                    }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Current Inventory',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => CurrentInventory()),
                //       );
                //     }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Tables',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => Tables()),
                //       );
                //     }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Close Register',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => CloseRegister()),
                //       );
                //     }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Reports',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => Reports()),
                //       );
                //     }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Customer',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => Customer()),
                //       );
                //     }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Users',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => Users()),
                //       );
                //     }),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height: 1,
                ),
                InkWell(
                    child: ListTile(
                      leading: Icon(Icons.ac_unit, color: Colors.orange),
                      title: Text(
                        'Setting',
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => home()),
                      );
                    }),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height: 1,
                ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Backup',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => Backup()),
                //       );
                //     }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Upgrade',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => Upgrade()),
                //       );
                //     }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                // InkWell(
                //     child: ListTile(
                //       leading: Icon(Icons.ac_unit, color: Colors.orange),
                //       title: Text(
                //         'Cloud Pin',
                //         style: TextStyle(color: Colors.white, fontSize: 21),
                //       ),
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(builder: (context) => CloudPin()),
                //       );
                //     }),
                // Divider(
                //   color: Colors.black87,
                //   thickness: 0.5,
                //   height: 1,
                // ),
                InkWell(
                  child: ListTile(
                    leading: Icon(Icons.ac_unit, color: Colors.orange),
                    title: Text(
                      'LogOut',
                      style: TextStyle(color: Colors.white, fontSize: 21),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>   login()));
                  },
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.5,
                  height: 5,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
