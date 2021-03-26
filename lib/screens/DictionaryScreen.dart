import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:screening/screens/ResponseItem.dart';

class ResponseScreen extends StatefulWidget {
  @override
  _ResponseScreenState createState() => _ResponseScreenState();
}

class _ResponseScreenState extends State<ResponseScreen> {
  Map dictionary = {
    '34': 'thirty-four',
    '90': 'ninety',
    '91': 'ninety-one',
    '21': 'twenty-one',
    '61': 'sixty-one',
    '9': 'nine',
    '2': 'two',
    '6': 'six',
    '3': 'three',
    '8': 'eight',
    '80': 'eighty',
    '81': 'eighty-one',
    'Ninety-Nine': '99',
    'nine-hundred': '900'
  };

  _ResponseScreenState();

  @override
  Widget build(BuildContext context) {
    var sortedDictionary = Map.fromEntries(dictionary.entries.toList()
      ..sort((e1, e2) => e1.key.compareTo(e2.key)));

    return Scaffold(
      appBar: AppBar(
        title: Text("Dictionary"),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 3),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: Container(
            child: AnimationLimiter(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180,
            ),
            itemCount: sortedDictionary.length,
            itemBuilder: (context, index) {
              //print(dictionaryMap[index].key);

              return AnimationConfiguration.staggeredGrid(
                  position: index,
                  columnCount: 2,
                  duration: const Duration(milliseconds: 700),
                  child: SlideAnimation(
                      verticalOffset: 50.0,
                      child: FadeInAnimation(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16))),
                          color: Colors.white,
                          elevation: 1.0,
                          child: Container(
                            width: 150,
                            child: Column(
                              children: <Widget>[

                                Flexible(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 16),
                                    child: Text(
                                        sortedDictionary.entries
                                            .elementAt(index)
                                            .value,
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black87)),
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 16),
                                    child: Text(
                                        sortedDictionary.entries
                                            .elementAt(index)
                                            .key,
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54)),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      )));
            },
          ),
        )),
      ),
    );
  }
}
