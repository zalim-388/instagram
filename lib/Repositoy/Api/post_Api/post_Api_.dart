import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram/Repositoy/Api/Api_client.dart';

import 'package:instagram/Repositoy/Model%20class/post%20model.dart';

class postApi {
  ApiClient api = ApiClient();

  Future<Postmodel> getpost() async {
    String path =
        'https://instagram230.p.rapidapi.com/user/posts?username=trentarnold66';

    var body = '';

    Response response = await api.invokeAPI(path, "GET", body);
    return Postmodel.fromJson(jsonDecode(response.body));
  }
}
