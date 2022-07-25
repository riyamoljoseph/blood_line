import 'package:blood_line/Users/chat.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:blood_line/Users/requestblood.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Donor extends StatefulWidget {
  const Donor({Key? key}) : super(key: key);

  @override
  State<Donor> createState() => _DonorState();

}

class _DonorState extends State<Donor> {
  final TextEditingController _numberCtrl = TextEditingController();
  void checkboxCallback(bool? checkboxState) {

  }
  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "9072843160";
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar:AppBar(
              backgroundColor: Color.fromARGB(1000, 221, 46, 68),
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
         onPressed: () async {
           FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
         },
         color: Color.fromARGB(1000, 221, 46, 68),
      ),
    );

    }),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            color: Color(0xffffffff),
            child: Container(
              height: MediaQuery.of(context).size.height*0.070,
            ),
          ),
          floatingActionButton:
          FloatingActionButton(child: Icon(Icons.bloodtype_outlined),backgroundColor: Color.fromARGB(1000, 221, 46, 68),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>RequestBlood()));}),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    )
    );


  }
}
