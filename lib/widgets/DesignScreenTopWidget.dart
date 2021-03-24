import 'package:flutter/material.dart';

class DesignScreenTopWidget extends StatefulWidget {
  final String name;

  DesignScreenTopWidget({Key key, this.name}) : super(key: key);

  @override
  _DesignScreenTopWidgetState createState() => _DesignScreenTopWidgetState();
}

class _DesignScreenTopWidgetState extends State<DesignScreenTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(36.0),
            bottomRight: Radius.circular(36.0)),
        color: Colors.blue,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Container(
              margin: new EdgeInsets.all(16.0),
              height: 80,
              width: 80,
              child: ClipRRect(
                child: Image.asset('assets/images/dp_default.png'),
              ),
            ),
          ),
          Container(
              margin: new EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.name,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text("Your Occupation",
                      maxLines: 1,
                      style: TextStyle(fontSize: 16.0, color: Colors.white70))
                ],
              ))
        ],
      ),
    );
  }
}