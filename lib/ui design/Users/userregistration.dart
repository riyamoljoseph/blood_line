import 'package:blood_line/bloc/registrationbloc.dart';
import 'package:blood_line/ui%20design/Users/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class userreg extends StatefulWidget {
  const userreg({Key? key}) : super(key: key);

  @override
  State<userreg> createState() => _userregState();
}
class _userregState extends State<userreg> {
  var name =TextEditingController();
  var city =TextEditingController();
  var gender=TextEditingController();
  var password =TextEditingController();
  var phonenumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
            backgroundColor: Color.fromARGB(1000, 221, 46, 68),
            title: Text("REGISTRATION"),titleTextStyle: TextStyle(color: Colors.black,fontSize: 25),
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
                            controller: name,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'NAME',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: phonenumber,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'PHONE NUMBER',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: password,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'PASSWORD',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: gender,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'GENDER',
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: TextField(
                            controller: city,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'CITY',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            height: MediaQuery.of(context).size.height*0.05,
                            width: MediaQuery.of(context).size.width*0.75,
                            child:MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),

                              ),
                              onPressed: () {
                                BlocProvider.of<RegBloc>(context).add(CheckREG
                                  (phonenumber: phonenumber.text,
                                    password: password.text,
                                    name: name.text,
                                    city: city.text,
                                    gender: gender.text));
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                              },
                                color: Color.fromARGB(1000, 221, 46, 68),
                                height: 50,
                                minWidth: MediaQuery.of(context).size.width,
                                child: BlocConsumer<RegBloc, RegState>(
                                  builder: (context, state) {
                                    if (state is CheckingReg) {
                                      return Container(
                                        height: 22,
                                        child: CircularProgressIndicator(),
                                      );
                                    } else {
                                      return Text(
                                        "REGISTER",
                                        style: TextStyle(fontSize: 14),
                                      );
                                    }
                                  },
                                  listener: (context,state){
                                    if(state is RegChecked)
                                      {
                                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Loginpage()));
                                        Fluttertoast.showToast(msg: "Successfull,pls login to continue");
                                      }
                                    else if(state is RegError) {
                                      Fluttertoast.showToast(msg: state.error);
                                    }

                            }
                            )
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



