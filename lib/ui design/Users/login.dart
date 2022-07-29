
import 'package:blood_line/bloc/loginbloc.dart';
import 'package:blood_line/helper/sharedpreferences.dart';
import 'package:blood_line/ui%20design/Users/firstregistration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  var token=null;
  void initState() {
    super.initState();

  }
  initFunc() async{
    token=await TempStorage.getToken();

  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              // height: MediaQuery.of(context).size.height,
              //   width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.73,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    child: Image.asset("assets/blood.png", height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.73,)),
                Padding(
                  padding: const EdgeInsets.only(left: 55, right: 55),
                  child: Container(
                    child: Column(
                      children: [

                        SizedBox(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * 0.1,
                        ),
                        Text(
                          "LOGIN",
                          style: GoogleFonts.lato(textStyle: Theme
                              .of(context)
                              .textTheme
                              .headline4,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            color: Colors.black,
                            // backgroundColor: Color(0xfffad249)
                          ),
                        ),

                        SizedBox(height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.35,),

                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.9,
                          child: TextField(
                            controller: phoneController,
                            style: TextStyle(color: Colors.black),
                            decoration: new InputDecoration(
                              label: Text('Username'),
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.email),
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1.2),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                gapPadding: 4.0,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1.2),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                gapPadding: 4.0,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1.2),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15.0)),
                                gapPadding: 4.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.9,
                            child: TextField(
                              controller: passwordController,
                              style: TextStyle(color: Colors.black),
                              decoration: new InputDecoration(
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.password),
                                ),
                                label: Text('Password'),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1.2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                  gapPadding: 10.0,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1.2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                  gapPadding: 10.0,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1.2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15.0)),
                                  gapPadding: 10.0,
                                ),
                              ),
                            ),

                          ),
                        ),
                        Row(
                          children:[
                            SizedBox(width: 180,height: 15,),
                            Text('forgot password ?',style:TextStyle(color: Colors.black,fontSize: 7
                                ,
                                fontFamily:"fontS"
                            ),),
                          ],),
                        SizedBox(height: 30,),
                  Container(
                    height: MediaQuery.of(context).size.height*0.05,
                    child:MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),

                        ),
                        onPressed: () {
                          BlocProvider.of<AuthBloc>(context).add(CheckOTP(
                            phonenumber: phoneController.text,
                            password: passwordController.text, ));
                        },
                        color:Color.fromARGB(1000, 221, 46, 68),
                        child:BlocConsumer<AuthBloc, AuthState>(
                          builder: (context, state) {

                            return Text(
                              "Log in",
                              style: TextStyle(fontSize: 14),
                            );


                            },
                        listener: (context, state) {
                            if( state is OtpChecked){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                            }
                            else if(state is OtpError){
                                  Fluttertoast.showToast(
                                    msg: state.error,
                              );}
                            }
                    )

                  )
                  )
                  ]
                  )

                ),


                ),

              Row(
          children: <Widget>[
          const Text('Does not have account?'),
          TextButton(
            child: const Text(
              'Register>>',
              style: TextStyle(fontSize: 13),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
            },
          )
          ]
      )
              ],
            ),
          )
      ),

    )
    );
  }}
