// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(dynamic str) => ProfileModel.fromJson(json.decode(str));

dynamic profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    Data data;
    dynamic status;

    ProfileModel({
        required this.data,
        required this.status,
    });

    factory ProfileModel.fromJson(Map<dynamic, dynamic> json) => ProfileModel(
        data: Data.fromJson(json["data"]),
        status: json["status"],
    );

    Map<dynamic, dynamic> toJson() => {
        "data": data.toJson(),
        "status": status,
    };
}

class Data {
    DataUser user;

    Data({
        required this.user,
    });

    factory Data.fromJson(Map<dynamic, dynamic> json) => Data(
        user: DataUser.fromJson(json["user"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "user": user.toJson(),
    };
}

class DataUser {
    dynamic aiAgentType;
    dynamic biography;
    List<BioLink> bioLinks;
    dynamic fbProfileBiolink;
    BiographyWithEntities biographyWithEntities;
    bool blockedByViewer;
    bool restrictedByViewer;
    bool countryBlock;
    dynamic eimuId;
    dynamic externalUrl;
    dynamic externalUrlLinkshimmed;
    EdgeFollow edgeFollowedBy;
    dynamic fbid;
    bool followedByViewer;
    EdgeFollow edgeFollow;
    bool followsViewer;
    dynamic fullName;
    dynamic groupMetadata;
    bool hasArEffects;
    bool hasClips;
    bool hasGuides;
    bool hasChaining;
    bool hasChannel;
    bool hasBlockedViewer;
    int highlightReelCount;
    bool hasRequestedViewer;
    bool hideLikeAndViewCounts;
    dynamic id;
    bool isBusinessAccount;
    bool isProfessionalAccount;
    bool isSupervisionEnabled;
    bool isGuardianOfViewer;
    bool isSupervisedByViewer;
    bool isSupervisedUser;
    bool isEmbedsDisabled;
    bool isJoinedRecently;
    dynamic guardianId;
    dynamic businessAddressJson;
    dynamic businessContactMethod;
    dynamic businessEmail;
    dynamic businessPhoneNumber;
    dynamic businessCategoryName;
    dynamic overallCategoryName;
    dynamic categoryEnum;
    dynamic categoryName;
    bool isPrivate;
    bool isVerified;
    bool isVerifiedByMv4B;
    bool isRegulatedC18;
    EdgeMutualFollowedBy edgeMutualFollowedBy;
    int pinnedChannelsListCount;
    dynamic profilePicUrl;
    dynamic profilePicUrlHd;
    bool requestedByViewer;
    bool shouldShowCategory;
    bool shouldShowPublicContacts;
    bool showAccountTransparencyDetails;
    dynamic transparencyLabel;
    dynamic transparencyProduct;
    dynamic username;
    dynamic connectedFbPage;
    List<dynamic> pronouns;
    EdgeOwnerToTimelineMedia edgeOwnerToTimelineMedia;

    DataUser({
        required this.aiAgentType,
        required this.biography,
        required this.bioLinks,
        required this.fbProfileBiolink,
        required this.biographyWithEntities,
        required this.blockedByViewer,
        required this.restrictedByViewer,
        required this.countryBlock,
        required this.eimuId,
        required this.externalUrl,
        required this.externalUrlLinkshimmed,
        required this.edgeFollowedBy,
        required this.fbid,
        required this.followedByViewer,
        required this.edgeFollow,
        required this.followsViewer,
        required this.fullName,
        required this.groupMetadata,
        required this.hasArEffects,
        required this.hasClips,
        required this.hasGuides,
        required this.hasChaining,
        required this.hasChannel,
        required this.hasBlockedViewer,
        required this.highlightReelCount,
        required this.hasRequestedViewer,
        required this.hideLikeAndViewCounts,
        required this.id,
        required this.isBusinessAccount,
        required this.isProfessionalAccount,
        required this.isSupervisionEnabled,
        required this.isGuardianOfViewer,
        required this.isSupervisedByViewer,
        required this.isSupervisedUser,
        required this.isEmbedsDisabled,
        required this.isJoinedRecently,
        required this.guardianId,
        required this.businessAddressJson,
        required this.businessContactMethod,
        required this.businessEmail,
        required this.businessPhoneNumber,
        required this.businessCategoryName,
        required this.overallCategoryName,
        required this.categoryEnum,
        required this.categoryName,
        required this.isPrivate,
        required this.isVerified,
        required this.isVerifiedByMv4B,
        required this.isRegulatedC18,
        required this.edgeMutualFollowedBy,
        required this.pinnedChannelsListCount,
        required this.profilePicUrl,
        required this.profilePicUrlHd,
        required this.requestedByViewer,
        required this.shouldShowCategory,
        required this.shouldShowPublicContacts,
        required this.showAccountTransparencyDetails,
        required this.transparencyLabel,
        required this.transparencyProduct,
        required this.username,
        required this.connectedFbPage,
        required this.pronouns,
        required this.edgeOwnerToTimelineMedia,
    });

    factory DataUser.fromJson(Map<dynamic, dynamic> json) => DataUser(
        aiAgentType: json["ai_agent_type"],
        biography: json["biography"],
        bioLinks: List<BioLink>.from(json["bio_links"].map((x) => BioLink.fromJson(x))),
        fbProfileBiolink: json["fb_profile_biolink"],
        biographyWithEntities: BiographyWithEntities.fromJson(json["biography_with_entities"]),
        blockedByViewer: json["blocked_by_viewer"],
        restrictedByViewer: json["restricted_by_viewer"],
        countryBlock: json["country_block"],
        eimuId: json["eimu_id"],
        externalUrl: json["external_url"],
        externalUrlLinkshimmed: json["external_url_linkshimmed"],
        edgeFollowedBy: EdgeFollow.fromJson(json["edge_followed_by"]),
        fbid: json["fbid"],
        followedByViewer: json["followed_by_viewer"],
        edgeFollow: EdgeFollow.fromJson(json["edge_follow"]),
        followsViewer: json["follows_viewer"],
        fullName: json["full_name"],
        groupMetadata: json["group_metadata"],
        hasArEffects: json["has_ar_effects"],
        hasClips: json["has_clips"],
        hasGuides: json["has_guides"],
        hasChaining: json["has_chaining"],
        hasChannel: json["has_channel"],
        hasBlockedViewer: json["has_blocked_viewer"],
        highlightReelCount: json["highlight_reel_count"],
        hasRequestedViewer: json["has_requested_viewer"],
        hideLikeAndViewCounts: json["hide_like_and_view_counts"],
        id: json["id"],
        isBusinessAccount: json["is_business_account"],
        isProfessionalAccount: json["is_professional_account"],
        isSupervisionEnabled: json["is_supervision_enabled"],
        isGuardianOfViewer: json["is_guardian_of_viewer"],
        isSupervisedByViewer: json["is_supervised_by_viewer"],
        isSupervisedUser: json["is_supervised_user"],
        isEmbedsDisabled: json["is_embeds_disabled"],
        isJoinedRecently: json["is_joined_recently"],
        guardianId: json["guardian_id"],
        businessAddressJson: json["business_address_json"],
        businessContactMethod: json["business_contact_method"],
        businessEmail: json["business_email"],
        businessPhoneNumber: json["business_phone_number"],
        businessCategoryName: json["business_category_name"],
        overallCategoryName: json["overall_category_name"],
        categoryEnum: json["category_enum"],
        categoryName: json["category_name"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
        isVerifiedByMv4B: json["is_verified_by_mv4b"],
        isRegulatedC18: json["is_regulated_c18"],
        edgeMutualFollowedBy: EdgeMutualFollowedBy.fromJson(json["edge_mutual_followed_by"]),
        pinnedChannelsListCount: json["pinned_channels_list_count"],
        profilePicUrl: json["profile_pic_url"],
        profilePicUrlHd: json["profile_pic_url_hd"],
        requestedByViewer: json["requested_by_viewer"],
        shouldShowCategory: json["should_show_category"],
        shouldShowPublicContacts: json["should_show_public_contacts"],
        showAccountTransparencyDetails: json["show_account_transparency_details"],
        transparencyLabel: json["transparency_label"],
        transparencyProduct: json["transparency_product"],
        username: json["username"],
        connectedFbPage: json["connected_fb_page"],
        pronouns: List<dynamic>.from(json["pronouns"].map((x) => x)),
        edgeOwnerToTimelineMedia: EdgeOwnerToTimelineMedia.fromJson(json["edge_owner_to_timeline_media"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "ai_agent_type": aiAgentType,
        "biography": biography,
        "bio_links": List<dynamic>.from(bioLinks.map((x) => x.toJson())),
        "fb_profile_biolink": fbProfileBiolink,
        "biography_with_entities": biographyWithEntities.toJson(),
        "blocked_by_viewer": blockedByViewer,
        "restricted_by_viewer": restrictedByViewer,
        "country_block": countryBlock,
        "eimu_id": eimuId,
        "external_url": externalUrl,
        "external_url_linkshimmed": externalUrlLinkshimmed,
        "edge_followed_by": edgeFollowedBy.toJson(),
        "fbid": fbid,
        "followed_by_viewer": followedByViewer,
        "edge_follow": edgeFollow.toJson(),
        "follows_viewer": followsViewer,
        "full_name": fullName,
        "group_metadata": groupMetadata,
        "has_ar_effects": hasArEffects,
        "has_clips": hasClips,
        "has_guides": hasGuides,
        "has_chaining": hasChaining,
        "has_channel": hasChannel,
        "has_blocked_viewer": hasBlockedViewer,
        "highlight_reel_count": highlightReelCount,
        "has_requested_viewer": hasRequestedViewer,
        "hide_like_and_view_counts": hideLikeAndViewCounts,
        "id": id,
        "is_business_account": isBusinessAccount,
        "is_professional_account": isProfessionalAccount,
        "is_supervision_enabled": isSupervisionEnabled,
        "is_guardian_of_viewer": isGuardianOfViewer,
        "is_supervised_by_viewer": isSupervisedByViewer,
        "is_supervised_user": isSupervisedUser,
        "is_embeds_disabled": isEmbedsDisabled,
        "is_joined_recently": isJoinedRecently,
        "guardian_id": guardianId,
        "business_address_json": businessAddressJson,
        "business_contact_method": businessContactMethod,
        "business_email": businessEmail,
        "business_phone_number": businessPhoneNumber,
        "business_category_name": businessCategoryName,
        "overall_category_name": overallCategoryName,
        "category_enum": categoryEnum,
        "category_name": categoryName,
        "is_private": isPrivate,
        "is_verified": isVerified,
        "is_verified_by_mv4b": isVerifiedByMv4B,
        "is_regulated_c18": isRegulatedC18,
        "edge_mutual_followed_by": edgeMutualFollowedBy.toJson(),
        "pinned_channels_list_count": pinnedChannelsListCount,
        "profile_pic_url": profilePicUrl,
        "profile_pic_url_hd": profilePicUrlHd,
        "requested_by_viewer": requestedByViewer,
        "should_show_category": shouldShowCategory,
        "should_show_public_contacts": shouldShowPublicContacts,
        "show_account_transparency_details": showAccountTransparencyDetails,
        "transparency_label": transparencyLabel,
        "transparency_product": transparencyProduct,
        "username": username,
        "connected_fb_page": connectedFbPage,
        "pronouns": List<dynamic>.from(pronouns.map((x) => x)),
        "edge_owner_to_timeline_media": edgeOwnerToTimelineMedia.toJson(),
    };
}

class BioLink {
    dynamic title;
    dynamic lynxUrl;
    dynamic url;
    dynamic linkType;

    BioLink({
        required this.title,
        required this.lynxUrl,
        required this.url,
        required this.linkType,
    });

    factory BioLink.fromJson(Map<dynamic, dynamic> json) => BioLink(
        title: json["title"],
        lynxUrl: json["lynx_url"],
        url: json["url"],
        linkType: json["link_type"],
    );

    Map<dynamic, dynamic> toJson() => {
        "title": title,
        "lynx_url": lynxUrl,
        "url": url,
        "link_type": linkType,
    };
}

class BiographyWithEntities {
    dynamic rawText;
    List<Entity> entities;

    BiographyWithEntities({
        required this.rawText,
        required this.entities,
    });

    factory BiographyWithEntities.fromJson(Map<dynamic, dynamic> json) => BiographyWithEntities(
        rawText: json["raw_text"],
        entities: List<Entity>.from(json["entities"].map((x) => Entity.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "raw_text": rawText,
        "entities": List<dynamic>.from(entities.map((x) => x.toJson())),
    };
}

class Entity {
    EntityUser user;
    dynamic hashtag;

    Entity({
        required this.user,
        required this.hashtag,
    });

    factory Entity.fromJson(Map<dynamic, dynamic> json) => Entity(
        user: EntityUser.fromJson(json["user"]),
        hashtag: json["hashtag"],
    );

    Map<dynamic, dynamic> toJson() => {
        "user": user.toJson(),
        "hashtag": hashtag,
    };
}

class EntityUser {
    dynamic username;

    EntityUser({
        required this.username,
    });

    factory EntityUser.fromJson(Map<dynamic, dynamic> json) => EntityUser(
        username: json["username"],
    );

    Map<dynamic, dynamic> toJson() => {
        "username": username,
    };
}

class EdgeFollow {
    int count;

    EdgeFollow({
        required this.count,
    });

    factory EdgeFollow.fromJson(Map<dynamic, dynamic> json) => EdgeFollow(
        count: json["count"],
    );

    Map<dynamic, dynamic> toJson() => {
        "count": count,
    };
}

class EdgeMutualFollowedBy {
    int count;
    List<dynamic> edges;

    EdgeMutualFollowedBy({
        required this.count,
        required this.edges,
    });

    factory EdgeMutualFollowedBy.fromJson(Map<dynamic, dynamic> json) => EdgeMutualFollowedBy(
        count: json["count"],
        edges: List<dynamic>.from(json["edges"].map((x) => x)),
    );

    Map<dynamic, dynamic> toJson() => {
        "count": count,
        "edges": List<dynamic>.from(edges.map((x) => x)),
    };
}

class EdgeOwnerToTimelineMedia {
    int count;
    PageInfo pageInfo;
    List<dynamic> edges;

    EdgeOwnerToTimelineMedia({
        required this.count,
        required this.pageInfo,
        required this.edges,
    });

    factory EdgeOwnerToTimelineMedia.fromJson(Map<dynamic, dynamic> json) => EdgeOwnerToTimelineMedia(
        count: json["count"],
        pageInfo: PageInfo.fromJson(json["page_info"]),
        edges: List<dynamic>.from(json["edges"].map((x) => x)),
    );

    Map<dynamic, dynamic> toJson() => {
        "count": count,
        "page_info": pageInfo.toJson(),
        "edges": List<dynamic>.from(edges.map((x) => x)),
    };
}

class PageInfo {
    bool hasNextPage;
    dynamic endCursor;

    PageInfo({
        required this.hasNextPage,
        required this.endCursor,
    });

    factory PageInfo.fromJson(Map<dynamic, dynamic> json) => PageInfo(
        hasNextPage: json["has_next_page"],
        endCursor: json["end_cursor"],
    );

    Map<dynamic, dynamic> toJson() => {
        "has_next_page": hasNextPage,
        "end_cursor": endCursor,
    };
}
