import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: getHome(),
    );
  }
}

class getHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: _getAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            
            Image(image: AssetImage("assets/1.png")),
            TextButton(
              onPressed: () {},
              child: Text(
                "شروع بازی",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Image(image: AssetImage("assets/2.png"))
          ],
        )),
      ),
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
