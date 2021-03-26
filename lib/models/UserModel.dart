import 'package:flutter/cupertino.dart';

class UserModel {
  Color color;
  IconData icon;
  String title;
  String user;

  UserModel.fromJSON(Map<String, dynamic> parsedJson) {
    this.color = parsedJson['color'];
    this.icon = parsedJson['icon'];
    this.title = parsedJson['title'];
    this.user = parsedJson['user'];
  }
}