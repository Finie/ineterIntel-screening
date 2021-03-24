import 'package:flutter/material.dart';

class ResponseScreen extends StatefulWidget {
  @override
  _ResponseScreenState createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {


  final String dictionary = "{'34': 'thirty-four', '90': 'ninety', '91': 'ninety-one', '21': 'twenty-one', '61': 'sixty-one', '9': 'nine', '2': 'two', '6': 'six', '3': 'three','8': 'eight', '80': 'eighty', '81': 'eighty-one', 'Ninety-Nine': '99', 'nine-hundred': '900' }";

  _ResponseScreenState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Response"),
      ),
      body: Container(
        child: Text("This is the body"),
      ),
    );
  }
}
