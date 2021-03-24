import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:screening/models/InputModel.dart';
import 'package:screening/screens/DesignScreen.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> with TickerProviderStateMixin {

  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Info"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              
              Container(
                child: Lottie.asset("assets/lottie/loging_in.json"),
              ),

              Container(
                margin: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 6,
                ),
                child: TextField(
                  controller: nameController,
                  style: TextStyle(
                      fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Name",
                    filled: true,
                    fillColor: Colors.black12,
                    border: new OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(40.0)),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.account_circle_outlined),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 6,
                ),
                child: TextField(
                  controller: emailController,
                  style: TextStyle(
                      fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    filled: true,
                    fillColor: Colors.black12,
                    border: new OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(40.0)),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 6,
                ),
                child: TextField(
                  controller: phoneController,
                  style: TextStyle(
                      fontSize: 14.0, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Phone",
                    filled: true,
                    fillColor: Colors.black12,
                    border: new OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(40.0)),
                        borderSide: BorderSide.none),
                    prefixIcon: Icon(Icons.phone_android),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16.0),
                width: double.infinity,
                height: 60,
                child: Material(



                    child: MaterialButton(
                        elevation: 6.0,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60.0)),
                        child: Text("Submit",
                            style: TextStyle(
                                fontSize: 16.0,
                                //fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        onPressed: () {

                          String email = emailController.text.toString();
                          String name = nameController.text.toString();
                          String phone = phoneController.text.toString();


                          InputModel model = new InputModel.fromJSON({
                            "name":name,
                            "email":email,
                            "phone":phone
                          });

                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => DesignScreen(params: model)));

                          print("Button has been pressed email: "+email+" name: "+name+" phone: "+phone);
                        })),
              )
            ],
          ),
        ));
  }
}
