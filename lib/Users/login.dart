import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
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
                        SizedBox(height: 40,),
                        MaterialButton(onPressed: (){},


                        ),
                    ]
                  ),

                ),


                )
              ],
            ),
          )
      ),

    )
    );
  }}
