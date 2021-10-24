import 'dart:convert';
import 'package:flutter_elephant/models/elephant.dart';
import 'package:http/http.dart' as http;

class ElephantApi {
  static String get apiUrl => 'https://elephant-api.herokuapp.com';
  static Future<List<Elephant>> getElephant() async {
    var url = Uri.parse('${apiUrl}/elephants');

    final response = await http.get(url, headers: {
      'content-type': 'application/json',
      'accept': 'application/json',
    });

    List<Elephant> _elephants = [];

    var decodedJson = jsonDecode(response.body);

     if (decodedJson != null) {
       for (var i in decodedJson) {
         if(i.length == 12){
            _elephants.add(Elephant.fromJson(i));
         }        
       }
     }
     
    return _elephants;
  }
}
