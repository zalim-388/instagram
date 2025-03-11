import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram/Repositoy/Api/Api_client.dart';
import 'package:instagram/Repositoy/Model%20class/profileModel.dart';

class ProfileApi {
  ApiClient api = ApiClient();

  Future<ProfileModel> getinsta() async {
    String path =
        'https://instagram230.p.rapidapi.com/user/details?username=zaliiim__';
    var body = {};

    Response response = await api.invokeAPI(path, 'GET', body);

    return ProfileModel.fromJson(jsonDecode(response.body));
  }
}
