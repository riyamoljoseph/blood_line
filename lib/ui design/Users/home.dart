
import 'package:blood_line/ui%20design/Users/donors.dart';
import 'package:blood_line/ui%20design/Users/registration.dart';
import 'package:blood_line/ui%20design/Users/requestblood.dart';
import 'package:blood_line/ui%20design/Users/search.dart';
import 'package:blood_line/ui%20design/Users/stock.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
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
      body: Center(

        child:
        FabCircularMenu(alignment: Alignment.center,fabSize: 100, children: [

          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),


            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('A+',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height: 5),

          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('A-',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height:5),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('B+',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height:5),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('B-',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height:5),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('AB+',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height:5),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('AB-',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height:5),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('O+',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height:5),
          TextButton(
            style: TextButton.styleFrom(),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('O-',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height:5),
        ]),
    ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Minimwon"),
              accountEmail: Text("minimwon@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(1000, 221, 46, 68),
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.how_to_reg),
              title: Text("Donor Reg"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Reg()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Stock"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Stock()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Donor"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Donor()));
              },
            ),

            ListTile(
              leading: Icon(Icons.bloodtype_sharp),
              title: Text("Request Blood"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => RequestBlood()));
              },
            ),
          ],
        ),
      ),

    );
  }
}
