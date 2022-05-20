import '../model/event_service_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class event_services{

  Future<EventService> get_data() async{
    var client = http.Client();
    var apiService;

    try {
      var url = 'https://parampara-48b01-default-rtdb.firebaseio.com/event.json';
      var response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        apiService = EventService.fromJson(jsonMap);
      }
      return apiService;
    } 
    catch (Exception) {
      return apiService;
    }


  } 

}