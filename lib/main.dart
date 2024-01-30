import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getHome(),
    );
  }
}

class getHome extends StatefulWidget {
  @override
  State<getHome> createState() => _getHomeState();
}

class _getHomeState extends State<getHome> {
  var top=1;

  var button=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: _getAppBar(),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          
          Image(image: AssetImage("assets/$top.png"),
          height: 100,),
          TextButton(
            onPressed: () {
              setState(() {

                top=Random().nextInt(2)+1;
                  button=Random().nextInt(2)+1;
                
              });
            },
            child: Text(
              "شروع بازی",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          Image(image: AssetImage("assets/$button.png"),
          height: 100,)
        ],
      )),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 11, 78, 87),
      elevation: 20,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "قیچی",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text(
            "کاغذ",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text(
            "سنگ",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
