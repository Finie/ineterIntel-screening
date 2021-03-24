import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screening/screens/DesignScreen.dart';
import 'package:screening/screens/DictionaryScreen.dart';
import 'package:screening/screens/InfoScreen.dart';
import 'package:screening/screens/ResponseScreen.dart';
import 'package:page_transition/page_transition.dart';

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
        accentColor: Color.fromRGBO(236, 243, 249, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

    if (currentIndex == 1) {
      currentIndex = 0;
      return Navigator.push(
          context, MaterialPageRoute(builder: (_) => DesignScreen()));
    } else if (currentIndex == 2) {
      currentIndex = 0;
      return Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeftWithFade,
              child: ResponseScreen()));
    } else if (currentIndex == 3) {
      currentIndex = 0;

      return Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rotate,
              duration: Duration(milliseconds: 700),
              child: DictionaryScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BubbleBottomBar(
        opacity: 0.3,
        elevation: 8,
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
      body: InfoScreen(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
