import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Stock extends StatefulWidget {
  const Stock({Key? key}) : super(key: key);

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(1000, 221, 46, 68),
          title: Text("stock"),
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                  onTap:(){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                  },
                  child: Column(children: [

                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0,4.0,8.0,4.0),
                      child: InkWell(
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute (builder:(context)=>));
                        },

                        child: Card(

                          color: Colors.white70,
                          elevation: 10,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.14,
                            width: MediaQuery.of(context).size.width,

                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.bloodtype,
                                  size: 22,
                                ),
                                SizedBox(
                                  width: 14,
                                ),

                              ],
                            ),
                          ),


                        ),
                      ),
                    ),],)
              );
            }
        )
    );

  }
}
