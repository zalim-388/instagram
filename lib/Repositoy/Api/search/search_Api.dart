import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram/Repositoy/Api/Api_client.dart';
import 'package:instagram/Repositoy/Model%20class/search_Model.dart';

class SearchApi {
  ApiClient Api = ApiClient();

  Future<Searchmodel> getsearch() async {
    String path =
        'https://instagram-scraper-api2.p.rapidapi.com/v1.2/search?search_query=zaliiim__';

    var body = '';

    Response response = await Api.invokeAPI(body, 'GET', path);
    return Searchmodel.fromJson(jsonDecode(response.body));
  }
}
