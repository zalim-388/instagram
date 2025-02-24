import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram/Repositoy/Api/Api_client.dart';
import 'package:instagram/Repositoy/Model%20class/SearchreelsModel.dart';

class SearchreelApi {
  ApiClient api = ApiClient();

  Future<ReelModel> getsearchreel() async {
    String path =
        'https://instagram-scraper-api2.p.rapidapi.com/v1/search_reels?search_query=trentarnold66';

    var body = '';

    Response response = await api.invokeAPI(path, "GET", body);
    return ReelModel.fromJson(jsonDecode(response.body));
  }
}
