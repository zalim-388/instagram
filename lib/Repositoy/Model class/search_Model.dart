// To parse this JSON data, do
//
//     final searchmodel = searchmodelFromJson(jsonString);

import 'dart:convert';

Searchmodel searchmodelFromJson(String str) => Searchmodel.fromJson(json.decode(str));

String searchmodelToJson(Searchmodel data) => json.encode(data.toJson());

class Searchmodel {
    Data data;
    String paginationToken;

    Searchmodel({
        required this.data,
        required this.paginationToken,
    });

    factory Searchmodel.fromJson(Map<String, dynamic> json) => Searchmodel(
        data: Data.fromJson(json["data"]),
        paginationToken: json["pagination_token"],
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "pagination_token": paginationToken,
    };
}

class Data {
    List<dynamic> hashtags;
    List<dynamic> places;
    List<User> users;

    Data({
        required this.hashtags,
        required this.places,
        required this.users,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        hashtags: List<dynamic>.from(json["hashtags"].map((x) => x)),
        places: List<dynamic>.from(json["places"].map((x) => x)),
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "hashtags": List<dynamic>.from(hashtags.map((x) => x)),
        "places": List<dynamic>.from(places.map((x) => x)),
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
    };
}

class User {
    List<dynamic> accountBadges;
    double fbidV2;
    String fullName;
    bool hasAnonymousProfilePicture;
    String id;
    bool isPrivate;
    bool isVerified;
    int latestReelMedia;
    int position;
    String? profilePicId;
    String profilePicUrl;
    String username;

    User({
        required this.accountBadges,
        required this.fbidV2,
        required this.fullName,
        required this.hasAnonymousProfilePicture,
        required this.id,
        required this.isPrivate,
        required this.isVerified,
        required this.latestReelMedia,
        required this.position,
        this.profilePicId,
        required this.profilePicUrl,
        required this.username,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        accountBadges: List<dynamic>.from(json["account_badges"].map((x) => x)),
        fbidV2: json["fbid_v2"]?.toDouble(),
        fullName: json["full_name"],
        hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
        id: json["id"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
        latestReelMedia: json["latest_reel_media"],
        position: json["position"],
        profilePicId: json["profile_pic_id"],
        profilePicUrl: json["profile_pic_url"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
        "fbid_v2": fbidV2,
        "full_name": fullName,
        "has_anonymous_profile_picture": hasAnonymousProfilePicture,
        "id": id,
        "is_private": isPrivate,
        "is_verified": isVerified,
        "latest_reel_media": latestReelMedia,
        "position": position,
        "profile_pic_id": profilePicId,
        "profile_pic_url": profilePicUrl,
        "username": username,
    };
}
