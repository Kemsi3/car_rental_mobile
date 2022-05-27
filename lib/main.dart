import 'dart:io';

import 'package:flutter/material.dart';

import 'Pages/NavPages/main_page.dart';




void main() {
  runApp(const MyApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}


class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    GlobalKey _bottomNavigationKey = GlobalKey();

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Car Rental"),
          ),
          body:MainPage(),

        )
    );
  }
}







