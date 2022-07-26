
import 'package:blood_line/ui design//Users/stock.dart';
import 'package:flutter/material.dart';



class RequestBlood extends StatefulWidget {
  @override
  _RequestBloodState createState() => _RequestBloodState();
}

class _RequestBloodState extends State<RequestBlood> {
  // String dropdownvalue = 'Item 1';
  //
  // // List of items in our dropdown menu
  // var items = [
  //   'Item 1',
  //   'Item 2',
  //   'Item 3',
  //   'Item 4',
  //   'Item 5',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 221, 46, 68),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Request Blood",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: "SouthernAire",
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon:  Icon(Icons.reply,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ClipRRect(
        borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(40.0),
            topRight: const Radius.circular(40.0)),
        child: Container(
          height: 800.0,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                   Column(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            // Container(
                            //   padding: EdgeInsets.only(top: 20.0),
                            //   child: DropdownButton(
                            //
                            //     // Initial Value
                            //     value: dropdownvalue,
                            //
                            //     // Down Arrow Icon
                            //     icon: const Icon(Icons.keyboard_arrow_down),
                            //
                            //     // Array list of items
                            //     items: items.map((String items) {
                            //       return DropdownMenuItem(
                            //         value: items,
                            //         child: Text(items),
                            //       );
                            //     }).toList(),
                            //     // After selecting the desired option,it will
                            //     // change button value to selected value
                            //     onChanged: (String? newValue) {
                            //       setState(() {
                            //         dropdownvalue = newValue!;
                            //       });
                            //     },
                            //   ),
                            // ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              '',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Color.fromARGB(1000, 221, 46, 68),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Quantity(L)',
                            icon: Icon(
                              Icons.arrow_back,
                              color: Color.fromARGB(1000, 221, 46, 68),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            IconButton(
                              onPressed: (){} ,
                              icon: Icon(
                                  Icons.calendar_month_outlined),
                              color: Color.fromARGB(1000, 221, 46, 68),
                            ),
                                Text(
                              "<< Pick up a Due Date",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15.0),
                            )

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            icon: Icon(Icons.mobile_friendly_outlined,
                              color: Color.fromARGB(1000, 221, 46, 68),
                            ),
                          ),

                          keyboardType: TextInputType.number,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      RaisedButton(
                        textColor: Colors.white,
                        padding: EdgeInsets.only(left: 5.0, right: 5.0),
                        color: Color.fromARGB(1000, 221, 46, 68),
                        child: Text("SUBMIT"),

                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Stock()));
                        },
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0)),
                      ),
                    ],
                  ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
