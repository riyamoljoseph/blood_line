// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class Requestblood extends StatefulWidget {
//   const Requestblood({Key? key}) : super(key: key);
//
//   @override
//   State<Requestblood> createState() => _RequestbloodState();
// }
//
// class _RequestbloodState extends State<Requestblood> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(1000, 221, 46, 68),
//       appBar: AppBar(
//         elevation: 0.0,
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//         title: Text(
//           "Request Blood",
//           style: TextStyle(
//             fontSize: 50.0,
//             fontFamily: "SouthernAire",
//             color: Colors.white,
//           ),
//         ),
//         leading: IconButton(
//           icon: Icon(
//             FontAwesomeIcons.reply,
//             color: Colors.white,
//           ),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: ClipRRect(
//         borderRadius: new BorderRadius.only(
//             topLeft: const Radius.circular(40.0),
//             topRight: const Radius.circular(40.0)),
//         child: Container(
//           height: 800.0,
//           width: double.infinity,
//           color: Colors.white,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 new Form(
//                   key: formkey,
//                   child: Column(
//                     children: <Widget>[
//                       Container(
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: EdgeInsets.only(top: 20.0),
//                               child: DropdownButton(
//                                 hint: Text(
//                                   'Please choose a Blood Group',
//                                   style: TextStyle(
//                                     color: Color.fromARGB(1000, 221, 46, 68),
//                                   ),
//                                 ),
//                                 iconSize: 40.0,
//
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Text(
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20.0,
//                                 color: Color.fromARGB(1000, 221, 46, 68),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(18.0),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: 'Quantity(L)',
//                             icon: Icon(
//                               FontAwesomeIcons.prescriptionBottle,
//                               color: Color.fromARGB(1000, 221, 46, 68),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Row(
//                           children: <Widget>[
//                             IconButton(
//
//                               icon: Icon(FontAwesomeIcons.calendar),
//                               color: Color.fromARGB(1000, 221, 46, 68),
//                             ),
//                             flag == 0
//                                 ? Text(
//                               "<< Pick up a Due Date",
//                               style: TextStyle(
//                                   color: Colors.black54, fontSize: 15.0),
//                             )
//                                 : Text(formattedDate),
//                           ],
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(18.0),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: 'Phone Number',
//                             icon: Icon(
//                               FontAwesomeIcons.mobile,
//                               color: Color.fromARGB(1000, 221, 46, 68),
//                             ),
//                           ),
//                           validator: (value) => value.isEmpty
//                               ? "Phone Number field can't be empty"
//                               : null,
//                           onSaved: (value) => _phone = value,
//                           maxLength: 10,
//                           keyboardType: TextInputType.number,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 30.0,
//                       ),
//                       RaisedButton(
//                         onPressed: () {
//                           if (!formkey.currentState.validate()) return;
//                           formkey.currentState.save();
//                           final Map<String, dynamic> BloodRequestDetails = {
//                             'uid': currentUser.uid,
//                             'bloodGroup': _selected,
//                             'quantity': _qty,
//                             'dueDate': formattedDate,
//                             'phone': _phone,
//                             'location': new GeoPoint(widget._lat, widget._lng),
//                             'address': _address,
//                           };
//                           addData(BloodRequestDetails).then((result) {
//                             dialogTrigger(context);
//                           }).catchError((e) {
//                             print(e);
//                           });
//                         },
//                         textColor: Colors.white,
//                         padding: EdgeInsets.only(left: 5.0, right: 5.0),
//                         color: Color.fromARGB(1000, 221, 46, 68),
//                         child: Text("SUBMIT"),
//                         shape: new RoundedRectangleBorder(
//                             borderRadius: new BorderRadius.circular(30.0)),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
