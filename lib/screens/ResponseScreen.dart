import 'package:flutter/material.dart';

class ResponseScreen extends StatefulWidget {
  @override
  _ResponseScreenState createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Response"),),
      body: Container(
        child: Text("This is the body"),
      ),
    );
  }
}
