import 'package:blood_line/bloc/loginbloc.dart';
import 'package:blood_line/bloc/registrationbloc.dart';
import 'package:blood_line/ui%20design/Users/userregistration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      return MultiBlocProvider(providers:[
        BlocProvider<AuthBloc>(create: (context) => AuthBloc()),
        BlocProvider<RegBloc>(create: (context) => RegBloc()),

      ],

          child:

        MaterialApp(
        title: 'Bloodline',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,

        ),
        home:userreg(),
        )
      );
    }
  }

