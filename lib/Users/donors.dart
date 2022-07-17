import 'package:blood_line/Users/chat.dart';
import 'package:blood_line/Users/map.dart';
import 'package:blood_line/Users/requestblood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Donor extends StatefulWidget {
  const Donor({Key? key}) : super(key: key);

  @override
  State<Donor> createState() => _DonorState();

}

class _DonorState extends State<Donor> {

  void checkboxCallback(bool? checkboxState) {

  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar:AppBar(
              title: Text("Donor's"),titleTextStyle: TextStyle(color: Colors.white,fontSize: 16),
            ),
            body:  ListView.builder(
    itemCount: 15,
    itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Name"),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(Icons.message),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat()));},
              color: Color.fromARGB(1000, 221, 46, 68),
            ),
          ),
        ],
      ),
      leading: CircleAvatar(
        child: Text("A+"
        ),
        backgroundColor: Color.fromARGB(1000, 221, 46, 68),
      ),
      trailing: IconButton(
        icon: Icon(Icons.phone),
         onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestBlood()));},
         color: Color.fromARGB(1000, 221, 46, 68),
      ),
    );

    }),
    )
    );


  }
}
