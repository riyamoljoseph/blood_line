import 'package:flutter/material.dart';

class glen extends StatefulWidget {
  const glen({Key? key}) : super(key: key);

  @override
  State<glen> createState() => _glenState();
}

class _glenState extends State<glen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glen page'),
      ), //AppBar
    );
  }
}
