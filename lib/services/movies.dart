import '../model/event_service_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/movie.dart';

class gall_service{

  Future<Movie> get_data() async{
    var client = http.Client();
    var apiService;

    try {
      var url = 'https://itmparampara-ed97a-default-rtdb.firebaseio.com/gallery2.json';
      var response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        apiService = Movie.fromJson(jsonMap);
      }
      return apiService;
    } 
    catch (Exception) {
      print("Failed to get data");
      return apiService;
    }


  } 

}