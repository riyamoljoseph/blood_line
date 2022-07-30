
import 'package:blood_line/ui%20design/Users/home.dart';
import 'package:flutter/material.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();

}

class _RegState extends State<Reg> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          backgroundColor: Color.fromARGB(1000, 221, 46, 68),
          title: Text("REGISTRATION"),titleTextStyle: TextStyle(color: Colors.black,fontSize: 16),
            actions: [
        Theme(
        data: Theme.of(context).copyWith(
            textTheme: TextTheme().apply(bodyColor: Colors.black),
            dividerColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black)), //3 dots color
      child: PopupMenuButton<int>(
          color: Colors.black, //full body or pop window color
          itemBuilder: (context) => [
          PopupMenuItem<int>(
          value: 0, child: Text("Bloodbanks/hospitals ")),
            PopupMenuItem<int>(value: 1, child: Text("Request blood")
            ),
         ]
      )
    )
    ]

        ),
        body: SingleChildScrollView(
            child:Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1,
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color(0xfffdfbfb),
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Name',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'blood group',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Age',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Quantity',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'City',
                            ),
                          ),
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height*0.05,
                            child:MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),

                              ),
                              child: Text("Register as Donor"),
                              color: Color.fromARGB(1000, 221, 46, 68),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                              },


                            )
                        )

                      ],
                    )
                )
            )
        )
    );




  }
}


