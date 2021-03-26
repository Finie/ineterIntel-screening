import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:screening/models/ApiResponse.dart';
import 'package:screening/repository/AppRepository.dart';
import 'package:screening/widgets/DictionaryItem.dart';

class DictionaryScreen extends StatefulWidget {
  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Response"),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 3),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          child: FutureBuilder<List<ApiResponse>>(
            future: AppRepository().fetchTodoList(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                showDialog(
                    context: context,
                    child: AlertDialog(
                      title: Text("Error"),
                      content: Text(snapshot.error.toString()),
                    ));
              } else if (snapshot.hasData) {
                return AnimationLimiter(
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 300),
                            child: SlideAnimation(
                              horizontalOffset: 50.0,
                              child: FadeInAnimation(
                                child: Container(
                                  margin: EdgeInsets.only(left: 16, right: 16),
                                  child: DictionaryItem(
                                      item: snapshot.data[index]),
                                ),
                              ),
                            ),
                          );
                        }));
              }

              return Center(
                child: CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue)),
              );
            },
          ),
        ));
  }
}

// return
//
