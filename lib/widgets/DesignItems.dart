import 'package:flutter/material.dart';
import 'package:screening/models/UserModel.dart';

class DesignItems extends StatefulWidget {
  final UserModel params;
  DesignItems({Key key, this.params}) : super(key: key);

  @override
  _DesignItemsState createState() => _DesignItemsState();
}

class _DesignItemsState extends State<DesignItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Container(
              width: 40,
              height: 40,
              child: Icon(widget.params.icon,
                size: 25,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.params.color,
              )),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.params.title,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 16.0,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Text(widget.params.user,
                    maxLines: 1,
                    style: TextStyle(fontSize: 14.0, color: Colors.black26)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
