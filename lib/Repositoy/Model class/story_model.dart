// To parse this JSON data, do
//
//     final storyModel = storyModelFromJson(jsonString);

import 'dart:convert';

StoryModel storyModelFromJson(String str) =>
    StoryModel.fromJson(json.decode(str));

String storyModelToJson(StoryModel data) => json.encode(data.toJson());

class StoryModel {
  List<Detail> detail;

  StoryModel({
    required this.detail,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) => StoryModel(
        detail:
            List<Detail>.from(json["detail"].map((x) => Detail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "detail": List<dynamic>.from(detail.map((x) => x.toJson())),
      };
}

class Detail {
  String type;
  List<String> loc;
  String msg;
  String input;

  Detail({
    required this.type,
    required this.loc,
    required this.msg,
    required this.input,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        type: json["type"],
        loc: List<String>.from(json["loc"].map((x) => x)),
        msg: json["msg"],
        input: json["input"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "loc": List<dynamic>.from(loc.map((x) => x)),
        "msg": msg,
        "input": input,
      };
}
