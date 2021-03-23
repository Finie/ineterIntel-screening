import 'package:flutter/material.dart';

class DesignScreen extends StatefulWidget {
  @override
  _DesignScreenState createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Design"),),
      body: Container(
        child: Text("This is the body"),
      ),
    );
  }
}
