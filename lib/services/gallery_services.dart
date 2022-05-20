import '../model/gallery_service_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class gallery_services{

  Future<GalleryService> get_data() async{
    var client = http.Client();
    var apiService;

    try {
      var url = 'https://itmparampara-ed97a-default-rtdb.firebaseio.com/photo.json';
      var response = await client.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);
        print(jsonMap);
        apiService = GalleryService.fromJson(jsonMap);
      }
      return apiService;
    }
    catch (Exception) {
      return apiService;
    }


  }

}