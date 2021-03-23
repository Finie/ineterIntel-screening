import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.blue));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  changePage(int index) {
    setState(() {
      currentIndex = index;
    });
    print("The current page index is: " + currentIndex.toString());
    // Navigator.push(context, MaterialPageRoute(builder: null));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      //   backgroundColor: Colors.red  ,
      // ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.3,
        backgroundColor: Colors.blue,
        borderRadius: BorderRadius.vertical(top: Radius.circular(1.6)),
        currentIndex: currentIndex,
        hasInk: true,
        inkColor: Colors.black,
        // hasNotch: true,
        //fabLocation: BubbleBottomBarFabLocation.end,
        onTap: changePage,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              title: Text("Info")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.design_services_outlined,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.design_services_outlined,
                color: Colors.white,
              ),
              title: Text("Design")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.restore_page_outlined,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.restore_page_outlined,
                color: Colors.white,
              ),
              title: Text("Response")),
          BubbleBottomBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                Icons.batch_prediction_outlined,
                color: Colors.white,
              ),
              activeIcon: Icon(
                Icons.batch_prediction_outlined,
                color: Colors.white,
              ),
              title: Text("Dictionary"))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
