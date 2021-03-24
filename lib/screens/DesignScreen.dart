import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screening/models/InputModel.dart';
import 'package:screening/models/UserModel.dart';
import 'package:screening/widgets/DesignItems.dart';
import 'package:screening/widgets/DesignScreenTopWidget.dart';

class DesignScreen extends StatefulWidget {
  final InputModel params;

  DesignScreen({Key key, this.params}) : super(key: key);

  @override
  _DesignScreenState createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  @override
  Widget build(BuildContext context) {
    UserModel model = UserModel.fromJSON({
      "user": widget.params.name,
      "icon": Icons.account_circle,
      "color": Colors.blue,
      "title": "Username"
    });

    UserModel model1 = UserModel.fromJSON({
      "user": widget.params.email,
      "icon": Icons.email,
      "color": Colors.pink,
      "title": "Email"
    });

    UserModel model2 = UserModel.fromJSON({
      "user": widget.params.phone,
      "icon": Icons.phone_android_outlined,
      "color": Colors.indigo,
      "title": "Phone"
    });

    return Scaffold(
        appBar: AppBar(
          title: Text("Design"),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              new DesignScreenTopWidget(),

              Container(
                margin: new EdgeInsets.only(
                  left: 16.0,
                  right: 36.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Text("Details",
                          maxLines: 1,
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black)),
                    )),
                    Expanded(
                      child: Container(
                          height: 80,
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 40,
                              height: 40,
                              child: Icon(
                                Icons.account_box,
                                size: 25,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black26,
                              ))),
                    ),
                  ],
                ),
              ),

              // third ui layout

              Container(
                color: Colors.black26,
                height: 1,
                margin: new EdgeInsets.only(left: 8, right: 8),
              ),

              new DesignItems(params: model),
              new DesignItems(params: model1),
              new DesignItems(params: model2),

              Container(
                margin: EdgeInsets.only(top: 6, left: 16),
                alignment: Alignment.centerLeft,
                child: Text("Activities",
                    maxLines: 1,
                    style: TextStyle(fontSize: 20.0, color: Colors.black)),
              )
            ],
          ),
        ));
  }
}
