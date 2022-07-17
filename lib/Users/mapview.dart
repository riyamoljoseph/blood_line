// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class MapView extends StatefulWidget {
//   const MapView({Key? key}) : super(key: key);
//
//   @override
//   State<MapView> createState() => _MapViewState();
// }
//
// class _MapViewState extends State<MapView> {
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       margin: const EdgeInsets.all(8.0),
//       height: 180.0,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.all(Radius.circular(15)),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: CircleAvatar(
//                   radius: 30.0,
//                   backgroundColor:
//                   Color.fromARGB(1000, 221, 46, 68),
//                 ),
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                 ],
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left:12.0,right: 12.0),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               RaisedButton(
//                 onPressed: () {
//
//                 },
//                 textColor: Colors.white,
//                 padding: EdgeInsets.only(left: 5.0, right: 5.0),
//                 color: Color.fromARGB(1000, 221, 46, 68),
//                 child: Icon(Icons.phone),
//                 shape: new RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(30.0)),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                 },
//                 textColor: Colors.white,
//                 padding: EdgeInsets.only(left: 5.0, right: 5.0),
//                 color: Color.fromARGB(1000, 221, 46, 68),
//                 child: Icon(Icons.message),
//                 shape: new RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(30.0)),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
// void getCurrentLocation() async {
//   }
//
// void getIcon() async {
//
// }
//
//
//
// @override
//
//
//
//
// Widget mapWidget() {
//   return Stack(
//     children: <Widget>[
//
//       Align(
//         alignment: Alignment.bottomCenter,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: FloatingActionButton.extended(
//             backgroundColor: Color.fromARGB(1000, 221, 46, 68),
//             onPressed: () {
//
//             },
//             icon: Icon(FontAwesomeIcons.burn),
//             label: Text("Request Blood"),
//           ),
//         ),
//       )
//     ],
//   );
// }
