import 'package:blood_line/Users/donors.dart';
import 'package:blood_line/Users/registration.dart';
import 'package:blood_line/Users/search.dart';
import 'package:blood_line/Users/stock.dart';
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
          SizedBox(height:1),
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
          SizedBox(height:1),
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
          SizedBox(height:1),
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
          SizedBox(height:1),
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
          SizedBox(height:1),
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

          TextButton(
            style: TextButton.styleFrom(),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            child: const Text('O-',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
          SizedBox(height:1),
        ]),
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
              leading: Icon(Icons.home),
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
          ],
        ),
      ),

      // floatingActionButton: FabCircularMenu(
      //     children: [
      //
      //
      //       TextButton(
      //         style: TextButton.styleFrom(
      //           textStyle: const TextStyle(fontSize: 20),
      //         ),
      //         onPressed: null,
      //         child: const Text('A+', style:TextStyle(fontSize: 20,color: Colors.white)),
      //       ),
      //       TextButton(
      //         style: TextButton.styleFrom(
      //           textStyle: const TextStyle(fontSize: 20),
      //         ),
      //         onPressed: null,
      //         child: const Text('A-', style:TextStyle(fontSize: 20,color: Colors.white)),
      //       ),
      //       TextButton(
      //         style: TextButton.styleFrom(
      //           textStyle: const TextStyle(fontSize: 20),
      //         ),
      //         onPressed: null,
      //         child: const Text('B+', style:TextStyle(fontSize: 20,color: Colors.white)),
      //       ),
      //       TextButton(
      //         style: TextButton.styleFrom(
      //           textStyle: const TextStyle(fontSize: 20),
      //         ),
      //         onPressed: null,
      //         child: const Text('B-', style:TextStyle(fontSize: 20,color: Colors.white)),
      //       ),
      //       TextButton(
      //         style: TextButton.styleFrom(
      //           textStyle: const TextStyle(fontSize: 20),
      //         ),
      //         onPressed: null,
      //         child: const Text('AB+', style:TextStyle(fontSize: 20,color: Colors.white)),
      //       ),
      //       TextButton(
      //         style: TextButton.styleFrom(
      //           textStyle: const TextStyle(fontSize: 20),
      //         ),
      //         onPressed: null,
      //         child: const Text('AB-', style:TextStyle(fontSize: 20,color: Colors.white)),
      //       ),
      //       TextButton(
      //         style: TextButton.styleFrom(
      //           textStyle: const TextStyle(fontSize: 20),
      //         ),
      //         onPressed: null,
      //         child: const Text('O+', style:TextStyle(fontSize: 20,color: Colors.white)),
      //       ),
      //       TextButton(
      //         style: TextButton.styleFrom(
      //
      //         ),
      //         onPressed: null,
      //         child: const Text('O-', style:TextStyle(fontSize: 20,color: Colors.white)),
      //       ),
      //
      //
      //
      //
      //     ]
      // )
    );
  }
}
