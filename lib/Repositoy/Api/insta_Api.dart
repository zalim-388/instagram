import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram/Repositoy/Api/Api_client.dart';
import 'package:instagram/Repositoy/Model%20class/insta_Model.dart';

// class InstaApi {
//   ApiClient _apiClient = ApiClient();

//   Future<List<InstaModel>> getinsta() async {
//     String path =
//         'https://instagram-scraper-api2.p.rapidapi.com/v1/info?username_or_id_or_url=mrbeast';
//     var body = {};
// Response responce = await _apiClient.invokeAPI(path, 'GET', body);

//     List<dynamic> jsonresponse = jsonDecode(responce.body);
//     return jsonresponse.map((instaa) => InstaModel.fromJson(instaa)).toList();
//   }
// }

class InstaApi {
  ApiClient apiClient = ApiClient();

  Future<InstaModel> getinsta() async {
    String path =
        'https://instagram-scraper-api2.p.rapidapi.com/v1/info?username_or_id_or_url=mrbeast';
    var body = {};

    Response response = await apiClient.invokeAPI(path, 'GET', body);
    return InstaModel.fromJson(jsonDecode(response.body));
  }
}
