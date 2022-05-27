import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return HomePageState();
  }

}

  class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text("Car Rental",
      style:  TextStyle(
        color:Colors.blue,
        fontSize:50,
      ),
      ),
      ),
      );

  }
  }

