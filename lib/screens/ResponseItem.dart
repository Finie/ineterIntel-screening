import 'package:flutter/material.dart';

class ResponseItem extends StatefulWidget {
  final String keyName;
  final String value;


  ResponseItem({Key key, this.keyName, this.value}) : super(key: key);

  @override
  _ResponseItemState createState() => _ResponseItemState();
}

class _ResponseItemState extends State<ResponseItem> {
  @override
  Widget build(BuildContext context) {

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16))),
      color: Colors.white,
      elevation: 1.0,
      child: Container(
        height: 200,
        width: 150,
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}