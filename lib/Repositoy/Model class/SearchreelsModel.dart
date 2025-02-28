// To parse this JSON data, do
//
//     final reelModel = reelModelFromJson(jsonString);

import 'dart:convert';

ReelModel reelModelFromJson(String str) => ReelModel.fromJson(json.decode(str));

String reelModelToJson(ReelModel data) => json.encode(data.toJson());

class ReelModel {
    Data data;

    ReelModel({
        required this.data,
    });

    factory ReelModel.fromJson(Map<String, dynamic> json) => ReelModel(
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

    factory AdditionalData.fromJson(Map<String, dynamic> json) => AdditionalData(
    );

    Map<String, dynamic> toJson() => {
    };
}
