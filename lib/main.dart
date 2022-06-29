import 'package:blood_line/Users/login.dart';
import 'package:flutter/material.dart';
void main() => runApp( const AppHome());

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  void initState() {
    super.initState();
  }
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Bloodline',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,

        ),
        home:Loginpage(),
      );
    }
  }

