import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/Rent.dart';



class RentAPI{

  String loggedUserID = "/86AF8CA7-9BC2-470C-A6D6-5606EC3880D2";
  String base_url = "https://10.0.2.2:7138/rents";
  late String rentsByUser_url = base_url + loggedUserID;

  late Uri test = Uri.parse(rentsByUser_url);


  Future <List<Rent>> getRents() async{
    var response = await http.get(test);
    if(response.statusCode == 200)
    {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((rent) => Rent.fromJson(rent)).toList();
    }
    else{
      throw Exception("Failed");
    }

  }
}