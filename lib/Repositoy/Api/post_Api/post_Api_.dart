import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram/Repositoy/Api/Api_client.dart';

import 'package:instagram/Repositoy/Model%20class/post%20model.dart';

class postApi {
  ApiClient api = ApiClient();

  Future<postmodel> getpost() async {
    String path =
        'https://instagram-scraper-api2.p.rapidapi.com/v1/posts?username_or_id_or_url=trentarnold66';

    var body = '';

    Response response = await api.invokeAPI(path, "GET", body);
    return postmodel.fromJson(jsonDecode(response.body));
  }
}
