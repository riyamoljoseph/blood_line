
import 'package:blood_line/ui%20design/Users/donors.dart';
import 'package:blood_line/ui%20design/Users/registration.dart';
import 'package:blood_line/ui%20design/Users/stock.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child: Text(
        'A drawer is an invisible side screen.',
        style: TextStyle(fontSize: 20.0),
      )
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Minimwon"),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home), title: Text("Donor Reg"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Reg()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Stock"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Stock()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("Donor"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Donor()));
              },
            ),
          ],
        ),
      ),
    );
  }
}