// To parse this JSON data, do
//
//     final storyModel = storyModelFromJson(jsonString);

import 'dart:convert';

StoryModel storyModelFromJson(String str) =>
    StoryModel.fromJson(json.decode(str));

String storyModelToJson(StoryModel data) => json.encode(data.toJson());

class StoryModel {
  Data data;

  StoryModel({
    required this.data,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) => StoryModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  AdditionalData additionalData;
  int count;
  List<dynamic> items;

  Data({
    required this.additionalData,
    required this.count,
    required this.items,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        additionalData: AdditionalData.fromJson(json["additional_data"]),
        count: json["count"],
        items: List<dynamic>.from(json["items"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "additional_data": additionalData.toJson(),
        "count": count,
        "items": List<dynamic>.from(items.map((x) => x)),
      };
}

class AdditionalData {
  AdditionalData();

  factory AdditionalData.fromJson(Map<String, dynamic> json) =>
      AdditionalData();

  Map<String, dynamic> toJson() => {};
}
