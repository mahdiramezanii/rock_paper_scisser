import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget{


  @override 
  Widget build(BuildContext context){

    return MaterialApp(home:getHome() ,);
  }
}


class getHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Center(child: Text("data")),
    );
  }


}