import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/Car.dart';



class CarAPI{
  final String base_url = "https://10.0.2.2:7138/cars";
  late Uri test = Uri.parse(base_url);


  Future <List<Car>> getCars() async{
    var response = await http.get(test);
    if(response.statusCode == 200)
    {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((car) => Car.fromJson(car)).toList();
    }
    else{
      throw Exception("Failed");
    }

  }
}