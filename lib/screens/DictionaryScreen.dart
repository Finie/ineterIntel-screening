import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:screening/models/ApiResponse.dart';
import 'package:screening/repository/AppRepository.dart';

class DictionaryScreen extends StatefulWidget {
  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  @override
  Widget build(BuildContext context) {


    return   Scaffold(
      appBar: AppBar( title: Text("Dictionary"),),
      body: FutureBuilder<List<ApiResponse>>(
        future: AppRepository().fetchTodoList(),
        builder: (context,snapshot){

          if(snapshot.hasError){
            showDialog(context: context,
                child: AlertDialog(
                  title: Text("Error"),
                  content: Text(snapshot.error.toString()),
                ));
          }
          else if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(snapshot.data[index].title),
                  subtitle: Text(snapshot.data[index].userId.toString()),
                )
            );

          }

          return Center(
            child: CircularProgressIndicator(),
          );
        },
      )

    );
  }





}
