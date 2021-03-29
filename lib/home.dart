import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/services/auth.dart';

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
        appBar: AppBar(
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
        body: Container(
          // alignment: Alignment.center,
          color: Colors.red,
          child: Column(
            children: [
              Stack(
                  // alignment: Alignment.topCenter,
                  children: [
                    Container(
                      // alignment: Alignment.topCenter,
                      height: 200,
                      color: Colors.white,
                    ),
                  ]),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.deepOrange,
                          child: MaterialButton(
                            child: Text(
                              'dscbdcysdlicsiyld',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                          child: Text(
                            'dscbdcysdlicsiyld',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                          child: Text(
                            'dscbdcysdlicsiyld',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                          child: Text(
                            'dscbdcysdlicsiyld',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                          child: Text(
                            'dscbdcysdlicsiyld',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                          child: Text(
                            'dscbdcysdlicsiyld',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        MaterialButton(
                          child: Text(
                            'dscbdcysdlicsiyld',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}






//
//
//
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//
// class home extends StatefulWidget {
//   @override
//   _homeState createState() => _homeState();
// }
//
// class _homeState extends State<home> {
//   Completer<GoogleMapController> _controller = Completer();
//
//   static const LatLng _center = const LatLng(45.521563, -122.677433);
//
//   final Set<Marker> _markers = {};
//
//   LatLng _lastMapPosition = _center;
//
//   MapType _currentMapType = MapType.normal;
//
//   void _onMapTypeButtonPressed() {
//     setState(() {
//       _currentMapType = _currentMapType == MapType.normal
//           ? MapType.satellite
//           : MapType.normal;
//     });
//   }
//
//   void _onAddMarkerButtonPressed() {
//     setState(() {
//       _markers.add(Marker(
//         // This marker id can be anything that uniquely identifies each marker.
//         markerId: MarkerId(_lastMapPosition.toString()),
//         position: _lastMapPosition,
//         infoWindow: InfoWindow(
//           title: 'Really cool place',
//           snippet: '5 Star Rating',
//         ),
//         icon: BitmapDescriptor.defaultMarker,
//       ));
//     });
//   }
//
//   void _onCameraMove(CameraPosition position) {
//     _lastMapPosition = position.target;
//   }
//
//   void _onMapCreated(GoogleMapController controller) {
//     _controller.complete(controller);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Maps Sample App'),
//           backgroundColor: Colors.green[700],
//         ),
//         body: Stack(
//           children: <Widget>[
//             GoogleMap(
//               onMapCreated: _onMapCreated,
//               initialCameraPosition: CameraPosition(
//                 target: _center,
//                 zoom: 11.0,
//               ),
//               mapType: _currentMapType,
//               markers: _markers,
//               onCameraMove: _onCameraMove,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Align(
//                 alignment: Alignment.topRight,
//                 child: Column(
//                   children: <Widget> [
//                     FloatingActionButton(
//                       onPressed: _onMapTypeButtonPressed,
//                       materialTapTargetSize: MaterialTapTargetSize.padded,
//                       backgroundColor: Colors.green,
//                       child: const Icon(Icons.map, size: 36.0),
//                     ),
//                     SizedBox(height: 16.0),
//                     FloatingActionButton(
//                       onPressed: _onAddMarkerButtonPressed,
//                       materialTapTargetSize: MaterialTapTargetSize.padded,
//                       backgroundColor: Colors.green,
//                       child: const Icon(Icons.add_location, size: 36.0),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }