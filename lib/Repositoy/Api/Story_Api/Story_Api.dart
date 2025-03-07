import 'dart:convert';

import 'package:http/http.dart';
import 'package:instagram/Repositoy/Api/Api_client.dart';
import 'package:instagram/Repositoy/Model%20class/story_model.dart';

class StoryApi {
  ApiClient Api = ApiClient();

  Future<StoryModel> getStory() async {
    String path =
        'https://instagram230.p.rapidapi.com/user/stories?user_id=zaliiim__';

    var body = '';

    Response response = await Api.invokeAPI(body, "GET", path);

    return StoryModel.fromJson(jsonDecode((response.body)));
  }
}
