import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:screening/screens/DesignScreen.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Info"),
      ),
      body: Container(
        child: Text("This is the Body"),
      ),
    );
  }
}
