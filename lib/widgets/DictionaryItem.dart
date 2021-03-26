import 'package:flutter/material.dart';
import 'package:screening/models/ApiResponse.dart';

class DictionaryItem extends StatefulWidget {
  final ApiResponse item;

  DictionaryItem({Key key, this.item}) : super(key: key);

  @override
  _DictionaryItemState createState() => _DictionaryItemState();
}

class _DictionaryItemState extends State<DictionaryItem> {
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16))),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.all(16.0),
              child: Icon(
                Icons.edit,
                size: 30,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              )),
          Flexible(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text("Title : " + widget.item.title,
                    style: TextStyle(fontSize: 18.0, color: Colors.black87)),
                margin: EdgeInsets.only(top: 8.0),
              ),
              Container(
                color: Colors.black26,
                height: 0.3,
                margin: new EdgeInsets.only(top: 6.0, bottom: 8.0, right: 6.0),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.code_outlined,
                                color: Colors.black54,
                              ),
                              Text("Task Id: " + widget.item.id.toString(),
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.theater_comedy,
                                color: Colors.black54,
                              ),
                              Text(
                                  "Complete " +
                                      widget.item.completed.toString(),
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
