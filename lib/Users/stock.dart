
import 'package:flutter/material.dart';

class Stocks extends StatefulWidget {
  const Stocks({Key? key}) : super(key: key);

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          title: Text("STOCKS"),titleTextStyle: TextStyle(color: Colors.black,fontSize: 16),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
        child:
        Padding(
    padding: const EdgeInsets.all(7.0),
    child: Column(
    children: [
    Expanded(
    child: ListView.builder(
    shrinkWrap: true,

    itemCount: 20,

    itemBuilder: (BuildContext context,int index){

    return ClipRRect(
    borderRadius: BorderRadius.circular(5),
    child: Column(
    children: [
    Row(
    children: [
    Text("B+"),
    SizedBox(
    width: 5,
    ),
    Expanded(
    child: Divider(
    color: Colors.black,
    ),
    )
    ],

    ),
    Card(
    color: Color(0xffa96a6a),
    child: Row(
    children: [
    Flexible(child: Text("Task will be displayed with details provided by the admin.",
      style: TextStyle(color: Colors.black,fontSize: 20),maxLines: 5,overflow: TextOverflow.fade,)),

    SizedBox(
    width: 5,
    height: 5,
    ),
    ClipRRect(
    borderRadius: BorderRadius.circular(2),
    child: Card(color: Color.fromARGB(1000, 221, 46, 68),
    child: Text("07",style: TextStyle(fontSize: 80,),),

    ),
    )
    ],
    ),
    ),
    ],
    ),
    );
    }
    ),
    ),
    ],
    ),
    ),
        )
    );
  }
}
