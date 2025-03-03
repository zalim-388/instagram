// To parse this JSON data, do
//
//     final reelModel = reelModelFromJson(jsondynamic);

import 'dart:convert';

ReelModel reelModelFromJson(dynamic str) =>
    ReelModel.fromJson(json.decode(str));

dynamic reelModelToJson(ReelModel data) => json.encode(data.toJson());

class ReelModel {
  Data data;

  ReelModel({
    required this.data,
  });

  factory ReelModel.fromJson(Map<dynamic, dynamic> json) => ReelModel(
        data: Data.fromJson(json["data"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  dynamic count;
  List<Item> items;

  Data({
    required this.count,
    required this.items,
  });

  factory Data.fromJson(Map<dynamic, dynamic> json) => Data(
        count: json["count"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<dynamic, dynamic> toJson() => {
        "count": count,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  bool areRemixesCrosspostable;
  List<dynamic> avatarStickers;
  dynamic boostUnavailableIdentifier;
  dynamic boostUnavailableReason;
  dynamic boostUnavailableReasonV2;
  bool canReply;
  bool canReshare;
  bool canSave;
  Caption caption;
  bool captionIsEdited;
  ClipsMetadata clipsMetadata;
  List<dynamic> clipsTabPinnedUserIds;
  bool coauthorProducerCanSeeOrganicInsights;
  List<UserElement> coauthorProducers;
  dynamic code;
  dynamic commentCount;
  CommentInformTreatment commentInformTreatment;
  List<dynamic> creatorViewerInsights;
  CrosspostMetadata crosspostMetadata;
  dynamic deletedReason;
  dynamic deviceTimestamp;
  dynamic fbAggregatedCommentCount;
  dynamic fbAggregatedLikeCount;
  FbUserTags fbUserTags;
  dynamic fbid;
  dynamic filterType;
  FundraiserTag fundraiserTag;
  GenAiDetectionMethod genAiDetectionMethod;
  bool hasAudio;
  bool hasHighRiskGenAiInformTreatment;
  bool hasLiked;
  bool hasPrivatelyLiked;
  dynamic hasSharedToFb;
  bool hasViewsFetching;
  dynamic id;
  bool igMediaSharingDisabled;
  dynamic igPlayCount;
  dynamic igbioProduct;
  ImageVersions imageVersions;
  IntegrityReviewDecision integrityReviewDecision;
  InventorySource inventorySource;
  List<dynamic> invitedCoauthorProducers;
  bool isArtistPick;
  bool isCommentsGifComposerEnabled;
  bool isCutoutStickerAllowed;
  dynamic isDashEligible;
  bool isEligibleContentForPostRollAd;
  bool isEligibleForMediaNoteRecsNux;
  bool isEligibleForMetaAiShare;
  bool isInProfileGrid;
  bool isOpenToPublicSubmission;
  bool isOrganicProductTaggingEligible;
  bool isPaidPartnership;
  bool isPinned;
  bool isPostLiveClipsMedia;
  bool isQuietPost;
  bool isReshareOfTextPostAppMediaInIg;
  bool isReuseAllowed;
  bool isSocialUfiDisabled;
  bool isTaggedMediaSharedToViewerProfileGrid;
  bool isThirdPartyDownloadsEligible;
  bool isVideo;
  double? lat;
  bool likeAndViewCountsDisabled;
  dynamic likeCount;
  double? lng;
  Location? location;
  MediaCroppingInfo mediaCroppingInfo;
  MediaFormat mediaFormat;
  MediaName mediaName;
  MediaNotes mediaNotes;
  dynamic mediaType;
  List<dynamic> metaAiSuggestedPrompts;
  dynamic musicMetadata;
  dynamic numberOfQualities;
  bool openCarouselShowFollowButton;
  dynamic originalHeight;
  dynamic originalWidth;
  dynamic playCount;
  List<dynamic> productSuggestions;
  ProductType productType;
  dynamic shareCount;
  bool shareCountDisabled;
  SharingFrictionInfo sharingFrictionInfo;
  dynamic shopRoutingUserId;
  bool shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
  List<dynamic> socialContext;
  List<dynamic> sponsorTags;
  bool subscribeCtaVisible;
  List<TaggedUser> taggedUsers;
  dynamic takenAt;
  DateTime takenAtDate;
  dynamic takenAtTs;
  dynamic thumbnailUrl;
  List<dynamic> timelinePinnedUserIds;
  List<dynamic> topLikers;
  PurpleUser user;
  dynamic videoCodec;
  double videoDuration;
  List<dynamic> videoStickerLocales;
  dynamic videoUrl;
  List<VideoVersion> videoVersions;
  dynamic viewStateItemType;
  dynamic videoSubtitlesLocale;
  CollabFollowButtonInfo? collabFollowButtonInfo;
  dynamic commerceIntegrityReviewDecision;
  bool? shouldOpenCollabBottomsheetOnFacepileTap;
  double? videoSubtitlesConfidence;
  dynamic videoSubtitlesUri;
  dynamic fbLikeCount;
  dynamic fbPlayCount;

  Item({
    required this.areRemixesCrosspostable,
    required this.avatarStickers,
    required this.boostUnavailableIdentifier,
    required this.boostUnavailableReason,
    required this.boostUnavailableReasonV2,
    required this.canReply,
    required this.canReshare,
    required this.canSave,
    required this.caption,
    required this.captionIsEdited,
    required this.clipsMetadata,
    required this.clipsTabPinnedUserIds,
    required this.coauthorProducerCanSeeOrganicInsights,
    required this.coauthorProducers,
    required this.code,
    required this.commentCount,
    required this.commentInformTreatment,
    required this.creatorViewerInsights,
    required this.crosspostMetadata,
    required this.deletedReason,
    required this.deviceTimestamp,
    required this.fbAggregatedCommentCount,
    required this.fbAggregatedLikeCount,
    required this.fbUserTags,
    required this.fbid,
    required this.filterType,
    required this.fundraiserTag,
    required this.genAiDetectionMethod,
    required this.hasAudio,
    required this.hasHighRiskGenAiInformTreatment,
    required this.hasLiked,
    required this.hasPrivatelyLiked,
    required this.hasSharedToFb,
    required this.hasViewsFetching,
    required this.id,
    required this.igMediaSharingDisabled,
    required this.igPlayCount,
    required this.igbioProduct,
    required this.imageVersions,
    required this.integrityReviewDecision,
    required this.inventorySource,
    required this.invitedCoauthorProducers,
    required this.isArtistPick,
    required this.isCommentsGifComposerEnabled,
    required this.isCutoutStickerAllowed,
    required this.isDashEligible,
    required this.isEligibleContentForPostRollAd,
    required this.isEligibleForMediaNoteRecsNux,
    required this.isEligibleForMetaAiShare,
    required this.isInProfileGrid,
    required this.isOpenToPublicSubmission,
    required this.isOrganicProductTaggingEligible,
    required this.isPaidPartnership,
    required this.isPinned,
    required this.isPostLiveClipsMedia,
    required this.isQuietPost,
    required this.isReshareOfTextPostAppMediaInIg,
    required this.isReuseAllowed,
    required this.isSocialUfiDisabled,
    required this.isTaggedMediaSharedToViewerProfileGrid,
    required this.isThirdPartyDownloadsEligible,
    required this.isVideo,
    this.lat,
    required this.likeAndViewCountsDisabled,
    required this.likeCount,
    this.lng,
    required this.location,
    required this.mediaCroppingInfo,
    required this.mediaFormat,
    required this.mediaName,
    required this.mediaNotes,
    required this.mediaType,
    required this.metaAiSuggestedPrompts,
    required this.musicMetadata,
    required this.numberOfQualities,
    required this.openCarouselShowFollowButton,
    required this.originalHeight,
    required this.originalWidth,
    required this.playCount,
    required this.productSuggestions,
    required this.productType,
    this.shareCount,
    required this.shareCountDisabled,
    required this.sharingFrictionInfo,
    required this.shopRoutingUserId,
    required this.shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
    required this.socialContext,
    required this.sponsorTags,
    required this.subscribeCtaVisible,
    required this.taggedUsers,
    required this.takenAt,
    required this.takenAtDate,
    required this.takenAtTs,
    required this.thumbnailUrl,
    required this.timelinePinnedUserIds,
    required this.topLikers,
    required this.user,
    required this.videoCodec,
    required this.videoDuration,
    required this.videoStickerLocales,
    required this.videoUrl,
    required this.videoVersions,
    required this.viewStateItemType,
    this.videoSubtitlesLocale,
    this.collabFollowButtonInfo,
    this.commerceIntegrityReviewDecision,
    this.shouldOpenCollabBottomsheetOnFacepileTap,
    this.videoSubtitlesConfidence,
    this.videoSubtitlesUri,
    this.fbLikeCount,
    this.fbPlayCount,
  });

  factory Item.fromJson(Map<dynamic, dynamic> json) => Item(
        areRemixesCrosspostable: json["are_remixes_crosspostable"],
        avatarStickers:
            List<dynamic>.from(json["avatar_stickers"].map((x) => x)),
        boostUnavailableIdentifier: json["boost_unavailable_identifier"],
        boostUnavailableReason: json["boost_unavailable_reason"],
        boostUnavailableReasonV2: json["boost_unavailable_reason_v2"],
        canReply: json["can_reply"],
        canReshare: json["can_reshare"],
        canSave: json["can_save"],
        caption: Caption.fromJson(json["caption"]),
        captionIsEdited: json["caption_is_edited"],
        clipsMetadata: ClipsMetadata.fromJson(json["clips_metadata"]),
        clipsTabPinnedUserIds:
            List<dynamic>.from(json["clips_tab_pinned_user_ids"].map((x) => x)),
        coauthorProducerCanSeeOrganicInsights:
            json["coauthor_producer_can_see_organic_insights"],
        coauthorProducers: List<UserElement>.from(
            json["coauthor_producers"].map((x) => UserElement.fromJson(x))),
        code: json["code"],
        commentCount: json["comment_count"],
        commentInformTreatment:
            CommentInformTreatment.fromJson(json["comment_inform_treatment"]),
        creatorViewerInsights:
            List<dynamic>.from(json["creator_viewer_insights"].map((x) => x)),
        crosspostMetadata:
            CrosspostMetadata.fromJson(json["crosspost_metadata"]),
        deletedReason: json["deleted_reason"],
        deviceTimestamp: json["device_timestamp"],
        fbAggregatedCommentCount: json["fb_aggregated_comment_count"],
        fbAggregatedLikeCount: json["fb_aggregated_like_count"],
        fbUserTags: FbUserTags.fromJson(json["fb_user_tags"]),
        fbid: json["fbid"],
        filterType: json["filter_type"],
        fundraiserTag: FundraiserTag.fromJson(json["fundraiser_tag"]),
        genAiDetectionMethod:
            GenAiDetectionMethod.fromJson(json["gen_ai_detection_method"]),
        hasAudio: json["has_audio"],
        hasHighRiskGenAiInformTreatment:
            json["has_high_risk_gen_ai_inform_treatment"],
        hasLiked: json["has_liked"],
        hasPrivatelyLiked: json["has_privately_liked"],
        hasSharedToFb: json["has_shared_to_fb"],
        hasViewsFetching: json["has_views_fetching"],
        id: json["id"],
        igMediaSharingDisabled: json["ig_media_sharing_disabled"],
        igPlayCount: json["ig_play_count"],
        igbioProduct: json["igbio_product"],
        imageVersions: ImageVersions.fromJson(json["image_versions"]),
        integrityReviewDecision: integrityReviewDecisionValues
            .map[json["integrity_review_decision"]]!,
        inventorySource: inventorySourceValues.map[json["inventory_source"]]!,
        invitedCoauthorProducers: List<dynamic>.from(
            json["invited_coauthor_producers"].map((x) => x)),
        isArtistPick: json["is_artist_pick"],
        isCommentsGifComposerEnabled: json["is_comments_gif_composer_enabled"],
        isCutoutStickerAllowed: json["is_cutout_sticker_allowed"],
        isDashEligible: json["is_dash_eligible"],
        isEligibleContentForPostRollAd:
            json["is_eligible_content_for_post_roll_ad"],
        isEligibleForMediaNoteRecsNux:
            json["is_eligible_for_media_note_recs_nux"],
        isEligibleForMetaAiShare: json["is_eligible_for_meta_ai_share"],
        isInProfileGrid: json["is_in_profile_grid"],
        isOpenToPublicSubmission: json["is_open_to_public_submission"],
        isOrganicProductTaggingEligible:
            json["is_organic_product_tagging_eligible"],
        isPaidPartnership: json["is_paid_partnership"],
        isPinned: json["is_pinned"],
        isPostLiveClipsMedia: json["is_post_live_clips_media"],
        isQuietPost: json["is_quiet_post"],
        isReshareOfTextPostAppMediaInIg:
            json["is_reshare_of_text_post_app_media_in_ig"],
        isReuseAllowed: json["is_reuse_allowed"],
        isSocialUfiDisabled: json["is_social_ufi_disabled"],
        isTaggedMediaSharedToViewerProfileGrid:
            json["is_tagged_media_shared_to_viewer_profile_grid"],
        isThirdPartyDownloadsEligible:
            json["is_third_party_downloads_eligible"],
        isVideo: json["is_video"],
        lat: json["lat"]?.toDouble(),
        likeAndViewCountsDisabled: json["like_and_view_counts_disabled"],
        likeCount: json["like_count"],
        lng: json["lng"]?.toDouble(),
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        mediaCroppingInfo:
            MediaCroppingInfo.fromJson(json["media_cropping_info"]),
        mediaFormat: mediaFormatValues.map[json["media_format"]]!,
        mediaName: mediaNameValues.map[json["media_name"]]!,
        mediaNotes: MediaNotes.fromJson(json["media_notes"]),
        mediaType: json["media_type"],
        metaAiSuggestedPrompts:
            List<dynamic>.from(json["meta_ai_suggested_prompts"].map((x) => x)),
        musicMetadata: json["music_metadata"],
        numberOfQualities: json["number_of_qualities"],
        openCarouselShowFollowButton: json["open_carousel_show_follow_button"],
        originalHeight: json["original_height"],
        originalWidth: json["original_width"],
        playCount: json["play_count"],
        productSuggestions:
            List<dynamic>.from(json["product_suggestions"].map((x) => x)),
        productType: productTypeValues.map[json["product_type"]]!,
        shareCount: json["share_count"],
        shareCountDisabled: json["share_count_disabled"],
        sharingFrictionInfo:
            SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        shopRoutingUserId: json["shop_routing_user_id"],
        shouldShowAuthorPogForTaggedMediaSharedToProfileGrid: json[
            "should_show_author_pog_for_tagged_media_shared_to_profile_grid"],
        socialContext: List<dynamic>.from(json["social_context"].map((x) => x)),
        sponsorTags: List<dynamic>.from(json["sponsor_tags"].map((x) => x)),
        subscribeCtaVisible: json["subscribe_cta_visible"],
        taggedUsers: List<TaggedUser>.from(
            json["tagged_users"].map((x) => TaggedUser.fromJson(x))),
        takenAt: json["taken_at"],
        takenAtDate: DateTime.parse(json["taken_at_date"]),
        takenAtTs: json["taken_at_ts"],
        thumbnailUrl: json["thumbnail_url"],
        timelinePinnedUserIds:
            List<dynamic>.from(json["timeline_pinned_user_ids"].map((x) => x)),
        topLikers: List<dynamic>.from(json["top_likers"].map((x) => x)),
        user: PurpleUser.fromJson(json["user"]),
        videoCodec: json["video_codec"],
        videoDuration: json["video_duration"]?.toDouble(),
        videoStickerLocales:
            List<dynamic>.from(json["video_sticker_locales"].map((x) => x)),
        videoUrl: json["video_url"],
        videoVersions: List<VideoVersion>.from(
            json["video_versions"].map((x) => VideoVersion.fromJson(x))),
        viewStateItemType: json["view_state_item_type"],
        videoSubtitlesLocale: json["video_subtitles_locale"],
        collabFollowButtonInfo: json["collab_follow_button_info"] == null
            ? null
            : CollabFollowButtonInfo.fromJson(
                json["collab_follow_button_info"]),
        commerceIntegrityReviewDecision:
            json["commerce_integrity_review_decision"],
        shouldOpenCollabBottomsheetOnFacepileTap:
            json["should_open_collab_bottomsheet_on_facepile_tap"],
        videoSubtitlesConfidence:
            json["video_subtitles_confidence"]?.toDouble(),
        videoSubtitlesUri: json["video_subtitles_uri"],
        fbLikeCount: json["fb_like_count"],
        fbPlayCount: json["fb_play_count"],
      );

  Map<dynamic, dynamic> toJson() => {
        "are_remixes_crosspostable": areRemixesCrosspostable,
        "avatar_stickers": List<dynamic>.from(avatarStickers.map((x) => x)),
        "boost_unavailable_identifier": boostUnavailableIdentifier,
        "boost_unavailable_reason": boostUnavailableReason,
        "boost_unavailable_reason_v2": boostUnavailableReasonV2,
        "can_reply": canReply,
        "can_reshare": canReshare,
        "can_save": canSave,
        "caption": caption.toJson(),
        "caption_is_edited": captionIsEdited,
        "clips_metadata": clipsMetadata.toJson(),
        "clips_tab_pinned_user_ids":
            List<dynamic>.from(clipsTabPinnedUserIds.map((x) => x)),
        "coauthor_producer_can_see_organic_insights":
            coauthorProducerCanSeeOrganicInsights,
        "coauthor_producers":
            List<dynamic>.from(coauthorProducers.map((x) => x.toJson())),
        "code": code,
        "comment_count": commentCount,
        "comment_inform_treatment": commentInformTreatment.toJson(),
        "creator_viewer_insights":
            List<dynamic>.from(creatorViewerInsights.map((x) => x)),
        "crosspost_metadata": crosspostMetadata.toJson(),
        "deleted_reason": deletedReason,
        "device_timestamp": deviceTimestamp,
        "fb_aggregated_comment_count": fbAggregatedCommentCount,
        "fb_aggregated_like_count": fbAggregatedLikeCount,
        "fb_user_tags": fbUserTags.toJson(),
        "fbid": fbid,
        "filter_type": filterType,
        "fundraiser_tag": fundraiserTag.toJson(),
        "gen_ai_detection_method": genAiDetectionMethod.toJson(),
        "has_audio": hasAudio,
        "has_high_risk_gen_ai_inform_treatment":
            hasHighRiskGenAiInformTreatment,
        "has_liked": hasLiked,
        "has_privately_liked": hasPrivatelyLiked,
        "has_shared_to_fb": hasSharedToFb,
        "has_views_fetching": hasViewsFetching,
        "id": id,
        "ig_media_sharing_disabled": igMediaSharingDisabled,
        "ig_play_count": igPlayCount,
        "igbio_product": igbioProduct,
        "image_versions": imageVersions.toJson(),
        "integrity_review_decision":
            integrityReviewDecisionValues.reverse[integrityReviewDecision],
        "inventory_source": inventorySourceValues.reverse[inventorySource],
        "invited_coauthor_producers":
            List<dynamic>.from(invitedCoauthorProducers.map((x) => x)),
        "is_artist_pick": isArtistPick,
        "is_comments_gif_composer_enabled": isCommentsGifComposerEnabled,
        "is_cutout_sticker_allowed": isCutoutStickerAllowed,
        "is_dash_eligible": isDashEligible,
        "is_eligible_content_for_post_roll_ad": isEligibleContentForPostRollAd,
        "is_eligible_for_media_note_recs_nux": isEligibleForMediaNoteRecsNux,
        "is_eligible_for_meta_ai_share": isEligibleForMetaAiShare,
        "is_in_profile_grid": isInProfileGrid,
        "is_open_to_public_submission": isOpenToPublicSubmission,
        "is_organic_product_tagging_eligible": isOrganicProductTaggingEligible,
        "is_paid_partnership": isPaidPartnership,
        "is_pinned": isPinned,
        "is_post_live_clips_media": isPostLiveClipsMedia,
        "is_quiet_post": isQuietPost,
        "is_reshare_of_text_post_app_media_in_ig":
            isReshareOfTextPostAppMediaInIg,
        "is_reuse_allowed": isReuseAllowed,
        "is_social_ufi_disabled": isSocialUfiDisabled,
        "is_tagged_media_shared_to_viewer_profile_grid":
            isTaggedMediaSharedToViewerProfileGrid,
        "is_third_party_downloads_eligible": isThirdPartyDownloadsEligible,
        "is_video": isVideo,
        "lat": lat,
        "like_and_view_counts_disabled": likeAndViewCountsDisabled,
        "like_count": likeCount,
        "lng": lng,
        "location": location?.toJson(),
        "media_cropping_info": mediaCroppingInfo.toJson(),
        "media_format": mediaFormatValues.reverse[mediaFormat],
        "media_name": mediaNameValues.reverse[mediaName],
        "media_notes": mediaNotes.toJson(),
        "media_type": mediaType,
        "meta_ai_suggested_prompts":
            List<dynamic>.from(metaAiSuggestedPrompts.map((x) => x)),
        "music_metadata": musicMetadata,
        "number_of_qualities": numberOfQualities,
        "open_carousel_show_follow_button": openCarouselShowFollowButton,
        "original_height": originalHeight,
        "original_width": originalWidth,
        "play_count": playCount,
        "product_suggestions":
            List<dynamic>.from(productSuggestions.map((x) => x)),
        "product_type": productTypeValues.reverse[productType],
        "share_count": shareCount,
        "share_count_disabled": shareCountDisabled,
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "shop_routing_user_id": shopRoutingUserId,
        "should_show_author_pog_for_tagged_media_shared_to_profile_grid":
            shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
        "social_context": List<dynamic>.from(socialContext.map((x) => x)),
        "sponsor_tags": List<dynamic>.from(sponsorTags.map((x) => x)),
        "subscribe_cta_visible": subscribeCtaVisible,
        "tagged_users": List<dynamic>.from(taggedUsers.map((x) => x.toJson())),
        "taken_at": takenAt,
        "taken_at_ts": takenAtTs,
        "thumbnail_url": thumbnailUrl,
        "timeline_pinned_user_ids":
            List<dynamic>.from(timelinePinnedUserIds.map((x) => x)),
        "top_likers": List<dynamic>.from(topLikers.map((x) => x)),
        "user": user.toJson(),
        "video_codec": videoCodec,
        "video_duration": videoDuration,
        "video_sticker_locales":
            List<dynamic>.from(videoStickerLocales.map((x) => x)),
        "video_url": videoUrl,
        "video_versions":
            List<dynamic>.from(videoVersions.map((x) => x.toJson())),
        "view_state_item_type": viewStateItemType,
        "video_subtitles_locale": videoSubtitlesLocale,
        "collab_follow_button_info": collabFollowButtonInfo?.toJson(),
        "commerce_integrity_review_decision": commerceIntegrityReviewDecision,
        "should_open_collab_bottomsheet_on_facepile_tap":
            shouldOpenCollabBottomsheetOnFacepileTap,
        "video_subtitles_confidence": videoSubtitlesConfidence,
        "video_subtitles_uri": videoSubtitlesUri,
        "fb_like_count": fbLikeCount,
        "fb_play_count": fbPlayCount,
      };
}

class Caption {
  dynamic createdAt;
  dynamic createdAtUtc;
  bool didReportAsSpam;
  List<dynamic> hashtags;
  dynamic id;
  bool isCovered;
  bool isRankedComment;
  List<dynamic> mentions;
  dynamic privateReplyStatus;
  bool shareEnabled;
  dynamic text;
  dynamic type;
  UserElement user;
  dynamic userId;

  Caption({
    required this.createdAt,
    required this.createdAtUtc,
    required this.didReportAsSpam,
    required this.hashtags,
    required this.id,
    required this.isCovered,
    required this.isRankedComment,
    required this.mentions,
    required this.privateReplyStatus,
    required this.shareEnabled,
    required this.text,
    required this.type,
    required this.user,
    required this.userId,
  });

  factory Caption.fromJson(Map<dynamic, dynamic> json) => Caption(
        createdAt: json["created_at"],
        createdAtUtc: json["created_at_utc"],
        didReportAsSpam: json["did_report_as_spam"],
        hashtags: List<dynamic>.from(json["hashtags"].map((x) => x)),
        id: json["id"],
        isCovered: json["is_covered"],
        isRankedComment: json["is_ranked_comment"],
        mentions: List<dynamic>.from(json["mentions"].map((x) => x)),
        privateReplyStatus: json["private_reply_status"],
        shareEnabled: json["share_enabled"],
        text: json["text"],
        type: json["type"],
        user: UserElement.fromJson(json["user"]),
        userId: json["user_id"],
      );

  Map<dynamic, dynamic> toJson() => {
        "created_at": createdAt,
        "created_at_utc": createdAtUtc,
        "did_report_as_spam": didReportAsSpam,
        "hashtags": List<dynamic>.from(hashtags.map((x) => x)),
        "id": id,
        "is_covered": isCovered,
        "is_ranked_comment": isRankedComment,
        "mentions": List<dynamic>.from(mentions.map((x) => x)),
        "private_reply_status": privateReplyStatus,
        "share_enabled": shareEnabled,
        "text": text,
        "type": type,
        "user": user.toJson(),
        "user_id": userId,
      };
}

class UserElement {
  double? fbidV2;
  dynamic fullName;
  dynamic id;
  bool isPrivate;
  bool? isUnpublished;
  bool isVerified;
  dynamic profilePicId;
  dynamic profilePicUrl;
  dynamic username;

  UserElement({
    this.fbidV2,
    required this.fullName,
    required this.id,
    required this.isPrivate,
    this.isUnpublished,
    required this.isVerified,
    required this.profilePicId,
    required this.profilePicUrl,
    required this.username,
  });

  factory UserElement.fromJson(Map<dynamic, dynamic> json) => UserElement(
        fbidV2: json["fbid_v2"]?.toDouble(),
        fullName: json["full_name"],
        id: json["id"],
        isPrivate: json["is_private"],
        isUnpublished: json["is_unpublished"],
        isVerified: json["is_verified"],
        profilePicId: json["profile_pic_id"],
        profilePicUrl: json["profile_pic_url"],
        username: json["username"],
      );

  Map<dynamic, dynamic> toJson() => {
        "fbid_v2": fbidV2,
        "full_name": fullName,
        "id": id,
        "is_private": isPrivate,
        "is_unpublished": isUnpublished,
        "is_verified": isVerified,
        "profile_pic_id": profilePicId,
        "profile_pic_url": profilePicUrl,
        "username": username,
      };
}

class ClipsMetadata {
  AchievementsInfo achievementsInfo;
  AdditionalAudioInfo additionalAudioInfo;
  dynamic assetRecommendationInfo;
  dynamic audioCanonicalId;
  AudioRankingInfo audioRankingInfo;
  AudioType audioType;
  BrandedContentTagInfo brandedContentTagInfo;
  dynamic breakingContentInfo;
  dynamic breakingCreatorInfo;
  dynamic challengeInfo;
  ProductType clipsCreationEntryPoint;
  ContentAppreciationInfo contentAppreciationInfo;
  dynamic contextualHighlightInfo;
  List<dynamic> cutoutStickerInfo;
  bool disableUseInClipsClientCache;
  dynamic externalMediaInfo;
  dynamic featuredLabel;
  bool isFanClubPromoVideo;
  bool isPublicChatWelcomeVideo;
  bool isSharedToFb;
  MashupInfo mashupInfo;
  dynamic merchandisingPillInfo;
  MusicInfo? musicInfo;
  dynamic nuxInfo;
  OriginalSoundInfo? originalSoundInfo;
  dynamic originalityInfo;
  dynamic professionalClipsUpsellType;
  dynamic reelsOnTheRiseInfo;
  dynamic reusableTextAttributedynamic;
  List<ReusableTextInfo>? reusableTextInfo;
  dynamic shoppingInfo;
  bool showAchievements;
  dynamic showTips;
  dynamic templateInfo;
  dynamic viewerInteractionSettings;

  ClipsMetadata({
    required this.achievementsInfo,
    required this.additionalAudioInfo,
    required this.assetRecommendationInfo,
    required this.audioCanonicalId,
    required this.audioRankingInfo,
    required this.audioType,
    required this.brandedContentTagInfo,
    required this.breakingContentInfo,
    required this.breakingCreatorInfo,
    required this.challengeInfo,
    required this.clipsCreationEntryPoint,
    required this.contentAppreciationInfo,
    required this.contextualHighlightInfo,
    required this.cutoutStickerInfo,
    required this.disableUseInClipsClientCache,
    required this.externalMediaInfo,
    required this.featuredLabel,
    required this.isFanClubPromoVideo,
    required this.isPublicChatWelcomeVideo,
    required this.isSharedToFb,
    required this.mashupInfo,
    required this.merchandisingPillInfo,
    required this.musicInfo,
    required this.nuxInfo,
    required this.originalSoundInfo,
    required this.originalityInfo,
    required this.professionalClipsUpsellType,
    required this.reelsOnTheRiseInfo,
    required this.reusableTextAttributedynamic,
    required this.reusableTextInfo,
    required this.shoppingInfo,
    required this.showAchievements,
    required this.showTips,
    required this.templateInfo,
    required this.viewerInteractionSettings,
  });

  factory ClipsMetadata.fromJson(Map<dynamic, dynamic> json) => ClipsMetadata(
        achievementsInfo: AchievementsInfo.fromJson(json["achievements_info"]),
        additionalAudioInfo:
            AdditionalAudioInfo.fromJson(json["additional_audio_info"]),
        assetRecommendationInfo: json["asset_recommendation_info"],
        audioCanonicalId: json["audio_canonical_id"],
        audioRankingInfo: AudioRankingInfo.fromJson(json["audio_ranking_info"]),
        audioType: audioTypeValues.map[json["audio_type"]]!,
        brandedContentTagInfo:
            BrandedContentTagInfo.fromJson(json["branded_content_tag_info"]),
        breakingContentInfo: json["breaking_content_info"],
        breakingCreatorInfo: json["breaking_creator_info"],
        challengeInfo: json["challenge_info"],
        clipsCreationEntryPoint:
            productTypeValues.map[json["clips_creation_entry_point"]]!,
        contentAppreciationInfo:
            ContentAppreciationInfo.fromJson(json["content_appreciation_info"]),
        contextualHighlightInfo: json["contextual_highlight_info"],
        cutoutStickerInfo:
            List<dynamic>.from(json["cutout_sticker_info"].map((x) => x)),
        disableUseInClipsClientCache: json["disable_use_in_clips_client_cache"],
        externalMediaInfo: json["external_media_info"],
        featuredLabel: json["featured_label"],
        isFanClubPromoVideo: json["is_fan_club_promo_video"],
        isPublicChatWelcomeVideo: json["is_public_chat_welcome_video"],
        isSharedToFb: json["is_shared_to_fb"],
        mashupInfo: MashupInfo.fromJson(json["mashup_info"]),
        merchandisingPillInfo: json["merchandising_pill_info"],
        musicInfo: json["music_info"] == null
            ? null
            : MusicInfo.fromJson(json["music_info"]),
        nuxInfo: json["nux_info"],
        originalSoundInfo: json["original_sound_info"] == null
            ? null
            : OriginalSoundInfo.fromJson(json["original_sound_info"]),
        originalityInfo: json["originality_info"],
        professionalClipsUpsellType: json["professional_clips_upsell_type"],
        reelsOnTheRiseInfo: json["reels_on_the_rise_info"],
        reusableTextAttributedynamic: json["reusable_text_attribute_dynamic"],
        reusableTextInfo: json["reusable_text_info"] == null
            ? []
            : List<ReusableTextInfo>.from(json["reusable_text_info"]!
                .map((x) => ReusableTextInfo.fromJson(x))),
        shoppingInfo: json["shopping_info"],
        showAchievements: json["show_achievements"],
        showTips: json["show_tips"],
        templateInfo: json["template_info"],
        viewerInteractionSettings: json["viewer_interaction_settings"],
      );

  Map<dynamic, dynamic> toJson() => {
        "achievements_info": achievementsInfo.toJson(),
        "additional_audio_info": additionalAudioInfo.toJson(),
        "asset_recommendation_info": assetRecommendationInfo,
        "audio_canonical_id": audioCanonicalId,
        "audio_ranking_info": audioRankingInfo.toJson(),
        "audio_type": audioTypeValues.reverse[audioType],
        "branded_content_tag_info": brandedContentTagInfo.toJson(),
        "breaking_content_info": breakingContentInfo,
        "breaking_creator_info": breakingCreatorInfo,
        "challenge_info": challengeInfo,
        "clips_creation_entry_point":
            productTypeValues.reverse[clipsCreationEntryPoint],
        "content_appreciation_info": contentAppreciationInfo.toJson(),
        "contextual_highlight_info": contextualHighlightInfo,
        "cutout_sticker_info":
            List<dynamic>.from(cutoutStickerInfo.map((x) => x)),
        "disable_use_in_clips_client_cache": disableUseInClipsClientCache,
        "external_media_info": externalMediaInfo,
        "featured_label": featuredLabel,
        "is_fan_club_promo_video": isFanClubPromoVideo,
        "is_public_chat_welcome_video": isPublicChatWelcomeVideo,
        "is_shared_to_fb": isSharedToFb,
        "mashup_info": mashupInfo.toJson(),
        "merchandising_pill_info": merchandisingPillInfo,
        "music_info": musicInfo?.toJson(),
        "nux_info": nuxInfo,
        "original_sound_info": originalSoundInfo?.toJson(),
        "originality_info": originalityInfo,
        "professional_clips_upsell_type": professionalClipsUpsellType,
        "reels_on_the_rise_info": reelsOnTheRiseInfo,
        "reusable_text_attribute_dynamic": reusableTextAttributedynamic,
        "reusable_text_info": reusableTextInfo == null
            ? []
            : List<dynamic>.from(reusableTextInfo!.map((x) => x.toJson())),
        "shopping_info": shoppingInfo,
        "show_achievements": showAchievements,
        "show_tips": showTips,
        "template_info": templateInfo,
        "viewer_interaction_settings": viewerInteractionSettings,
      };
}

class AchievementsInfo {
  dynamic numEarnedAchievements;
  bool showAchievements;

  AchievementsInfo({
    required this.numEarnedAchievements,
    required this.showAchievements,
  });

  factory AchievementsInfo.fromJson(Map<dynamic, dynamic> json) =>
      AchievementsInfo(
        numEarnedAchievements: json["num_earned_achievements"],
        showAchievements: json["show_achievements"],
      );

  Map<dynamic, dynamic> toJson() => {
        "num_earned_achievements": numEarnedAchievements,
        "show_achievements": showAchievements,
      };
}

class AdditionalAudioInfo {
  dynamic additionalAudioUsername;
  AudioReattributionInfo audioReattributionInfo;

  AdditionalAudioInfo({
    required this.additionalAudioUsername,
    required this.audioReattributionInfo,
  });

  factory AdditionalAudioInfo.fromJson(Map<dynamic, dynamic> json) =>
      AdditionalAudioInfo(
        additionalAudioUsername: json["additional_audio_username"],
        audioReattributionInfo:
            AudioReattributionInfo.fromJson(json["audio_reattribution_info"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "additional_audio_username": additionalAudioUsername,
        "audio_reattribution_info": audioReattributionInfo.toJson(),
      };
}

class AudioReattributionInfo {
  bool shouldAllowRestore;

  AudioReattributionInfo({
    required this.shouldAllowRestore,
  });

  factory AudioReattributionInfo.fromJson(Map<dynamic, dynamic> json) =>
      AudioReattributionInfo(
        shouldAllowRestore: json["should_allow_restore"],
      );

  Map<dynamic, dynamic> toJson() => {
        "should_allow_restore": shouldAllowRestore,
      };
}

class AudioRankingInfo {
  dynamic bestAudioClusterId;

  AudioRankingInfo({
    required this.bestAudioClusterId,
  });

  factory AudioRankingInfo.fromJson(Map<dynamic, dynamic> json) =>
      AudioRankingInfo(
        bestAudioClusterId: json["best_audio_cluster_id"],
      );

  Map<dynamic, dynamic> toJson() => {
        "best_audio_cluster_id": bestAudioClusterId,
      };
}

enum AudioType { LICENSED_MUSIC, ORIGINAL_SOUNDS }

final audioTypeValues = EnumValues({
  "licensed_music": AudioType.LICENSED_MUSIC,
  "original_sounds": AudioType.ORIGINAL_SOUNDS
});

class BrandedContentTagInfo {
  bool canAddTag;

  BrandedContentTagInfo({
    required this.canAddTag,
  });

  factory BrandedContentTagInfo.fromJson(Map<dynamic, dynamic> json) =>
      BrandedContentTagInfo(
        canAddTag: json["can_add_tag"],
      );

  Map<dynamic, dynamic> toJson() => {
        "can_add_tag": canAddTag,
      };
}

enum ProductType { CLIPS, EMPTY, FEED }

final productTypeValues = EnumValues({
  "clips": ProductType.CLIPS,
  "": ProductType.EMPTY,
  "feed": ProductType.FEED
});

class ContentAppreciationInfo {
  bool enabled;
  EntryPointContainer? entryPointContainer;

  ContentAppreciationInfo({
    required this.enabled,
    required this.entryPointContainer,
  });

  factory ContentAppreciationInfo.fromJson(Map<dynamic, dynamic> json) =>
      ContentAppreciationInfo(
        enabled: json["enabled"],
        entryPointContainer: json["entry_point_container"] == null
            ? null
            : EntryPointContainer.fromJson(json["entry_point_container"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "enabled": enabled,
        "entry_point_container": entryPointContainer?.toJson(),
      };
}

class EntryPointContainer {
  Comment comment;
  dynamic overflow;
  Pill pill;
  dynamic ufi;

  EntryPointContainer({
    required this.comment,
    required this.overflow,
    required this.pill,
    required this.ufi,
  });

  factory EntryPointContainer.fromJson(Map<dynamic, dynamic> json) =>
      EntryPointContainer(
        comment: Comment.fromJson(json["comment"]),
        overflow: json["overflow"],
        pill: Pill.fromJson(json["pill"]),
        ufi: json["ufi"],
      );

  Map<dynamic, dynamic> toJson() => {
        "comment": comment.toJson(),
        "overflow": overflow,
        "pill": pill.toJson(),
        "ufi": ufi,
      };
}

class Comment {
  dynamic actionType;

  Comment({
    required this.actionType,
  });

  factory Comment.fromJson(Map<dynamic, dynamic> json) => Comment(
        actionType: json["action_type"],
      );

  Map<dynamic, dynamic> toJson() => {
        "action_type": actionType,
      };
}

class Pill {
  dynamic actionType;
  dynamic priority;

  Pill({
    required this.actionType,
    required this.priority,
  });

  factory Pill.fromJson(Map<dynamic, dynamic> json) => Pill(
        actionType: json["action_type"],
        priority: json["priority"],
      );

  Map<dynamic, dynamic> toJson() => {
        "action_type": actionType,
        "priority": priority,
      };
}

class MashupInfo {
  bool canToggleMashupsAllowed;
  dynamic formattedMashupsCount;
  bool hasBeenMashedUp;
  bool hasNonmimicableAdditionalAudio;
  bool isCreatorRequestingMashup;
  bool isLightWeightCheck;
  bool isLightWeightReuseAllowedCheck;
  bool isPivotPageAvailable;
  bool isReuseAllowed;
  dynamic mashupType;
  bool mashupsAllowed;
  dynamic nonPrivacyFilteredMashupsMediaCount;
  dynamic originalMedia;
  dynamic privacyFilteredMashupsMediaCount;

  MashupInfo({
    required this.canToggleMashupsAllowed,
    required this.formattedMashupsCount,
    required this.hasBeenMashedUp,
    required this.hasNonmimicableAdditionalAudio,
    required this.isCreatorRequestingMashup,
    required this.isLightWeightCheck,
    required this.isLightWeightReuseAllowedCheck,
    required this.isPivotPageAvailable,
    required this.isReuseAllowed,
    required this.mashupType,
    required this.mashupsAllowed,
    required this.nonPrivacyFilteredMashupsMediaCount,
    required this.originalMedia,
    required this.privacyFilteredMashupsMediaCount,
  });

  factory MashupInfo.fromJson(Map<dynamic, dynamic> json) => MashupInfo(
        canToggleMashupsAllowed: json["can_toggle_mashups_allowed"],
        formattedMashupsCount: json["formatted_mashups_count"],
        hasBeenMashedUp: json["has_been_mashed_up"],
        hasNonmimicableAdditionalAudio:
            json["has_nonmimicable_additional_audio"],
        isCreatorRequestingMashup: json["is_creator_requesting_mashup"],
        isLightWeightCheck: json["is_light_weight_check"],
        isLightWeightReuseAllowedCheck:
            json["is_light_weight_reuse_allowed_check"],
        isPivotPageAvailable: json["is_pivot_page_available"],
        isReuseAllowed: json["is_reuse_allowed"],
        mashupType: json["mashup_type"],
        mashupsAllowed: json["mashups_allowed"],
        nonPrivacyFilteredMashupsMediaCount:
            json["non_privacy_filtered_mashups_media_count"],
        originalMedia: json["original_media"],
        privacyFilteredMashupsMediaCount:
            json["privacy_filtered_mashups_media_count"],
      );

  Map<dynamic, dynamic> toJson() => {
        "can_toggle_mashups_allowed": canToggleMashupsAllowed,
        "formatted_mashups_count": formattedMashupsCount,
        "has_been_mashed_up": hasBeenMashedUp,
        "has_nonmimicable_additional_audio": hasNonmimicableAdditionalAudio,
        "is_creator_requesting_mashup": isCreatorRequestingMashup,
        "is_light_weight_check": isLightWeightCheck,
        "is_light_weight_reuse_allowed_check": isLightWeightReuseAllowedCheck,
        "is_pivot_page_available": isPivotPageAvailable,
        "is_reuse_allowed": isReuseAllowed,
        "mashup_type": mashupType,
        "mashups_allowed": mashupsAllowed,
        "non_privacy_filtered_mashups_media_count":
            nonPrivacyFilteredMashupsMediaCount,
        "original_media": originalMedia,
        "privacy_filtered_mashups_media_count":
            privacyFilteredMashupsMediaCount,
      };
}

class MusicInfo {
  MusicAssetInfo musicAssetInfo;
  MusicConsumptionInfo musicConsumptionInfo;

  MusicInfo({
    required this.musicAssetInfo,
    required this.musicConsumptionInfo,
  });

  factory MusicInfo.fromJson(Map<dynamic, dynamic> json) => MusicInfo(
        musicAssetInfo: MusicAssetInfo.fromJson(json["music_asset_info"]),
        musicConsumptionInfo:
            MusicConsumptionInfo.fromJson(json["music_consumption_info"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "music_asset_info": musicAssetInfo.toJson(),
        "music_consumption_info": musicConsumptionInfo.toJson(),
      };
}

class MusicAssetInfo {
  bool allowsSaving;
  dynamic artistId;
  dynamic audioId;
  dynamic coverArtworkThumbnailUri;
  dynamic coverArtworkUri;
  dynamic darkMessage;
  dynamic displayArtist;
  dynamic durationInMs;
  dynamic fastStartProgressiveDownloadUrl;
  bool hasLyrics;
  List<dynamic> highlightStartTimesInMs;
  dynamic id;
  dynamic igUsername;
  bool isEligibleForAudioEffects;
  bool isEligibleForVinylSticker;
  bool isExplicit;
  dynamic licensedMusicSubtype;
  dynamic lyrics;
  dynamic progressiveDownloadUrl;
  dynamic reactiveAudioDownloadUrl;
  dynamic sanitizedTitle;
  dynamic subtitle;
  dynamic title;
  dynamic web30SPreviewDownloadUrl;

  MusicAssetInfo({
    required this.allowsSaving,
    required this.artistId,
    required this.audioId,
    required this.coverArtworkThumbnailUri,
    required this.coverArtworkUri,
    required this.darkMessage,
    required this.displayArtist,
    required this.durationInMs,
    required this.fastStartProgressiveDownloadUrl,
    required this.hasLyrics,
    required this.highlightStartTimesInMs,
    required this.id,
    required this.igUsername,
    required this.isEligibleForAudioEffects,
    required this.isEligibleForVinylSticker,
    required this.isExplicit,
    required this.licensedMusicSubtype,
    required this.lyrics,
    required this.progressiveDownloadUrl,
    required this.reactiveAudioDownloadUrl,
    required this.sanitizedTitle,
    required this.subtitle,
    required this.title,
    required this.web30SPreviewDownloadUrl,
  });

  factory MusicAssetInfo.fromJson(Map<dynamic, dynamic> json) => MusicAssetInfo(
        allowsSaving: json["allows_saving"],
        artistId: json["artist_id"],
        audioId: json["audio_id"],
        coverArtworkThumbnailUri: json["cover_artwork_thumbnail_uri"],
        coverArtworkUri: json["cover_artwork_uri"],
        darkMessage: json["dark_message"],
        displayArtist: json["display_artist"],
        durationInMs: json["duration_in_ms"],
        fastStartProgressiveDownloadUrl:
            json["fast_start_progressive_download_url"],
        hasLyrics: json["has_lyrics"],
        highlightStartTimesInMs: List<dynamic>.from(
            json["highlight_start_times_in_ms"].map((x) => x)),
        id: json["id"],
        igUsername: json["ig_username"],
        isEligibleForAudioEffects: json["is_eligible_for_audio_effects"],
        isEligibleForVinylSticker: json["is_eligible_for_vinyl_sticker"],
        isExplicit: json["is_explicit"],
        licensedMusicSubtype: json["licensed_music_subtype"],
        lyrics: json["lyrics"],
        progressiveDownloadUrl: json["progressive_download_url"],
        reactiveAudioDownloadUrl: json["reactive_audio_download_url"],
        sanitizedTitle: json["sanitized_title"],
        subtitle: json["subtitle"],
        title: json["title"],
        web30SPreviewDownloadUrl: json["web_30s_preview_download_url"],
      );

  Map<dynamic, dynamic> toJson() => {
        "allows_saving": allowsSaving,
        "artist_id": artistId,
        "audio_id": audioId,
        "cover_artwork_thumbnail_uri": coverArtworkThumbnailUri,
        "cover_artwork_uri": coverArtworkUri,
        "dark_message": darkMessage,
        "display_artist": displayArtist,
        "duration_in_ms": durationInMs,
        "fast_start_progressive_download_url": fastStartProgressiveDownloadUrl,
        "has_lyrics": hasLyrics,
        "highlight_start_times_in_ms":
            List<dynamic>.from(highlightStartTimesInMs.map((x) => x)),
        "id": id,
        "ig_username": igUsername,
        "is_eligible_for_audio_effects": isEligibleForAudioEffects,
        "is_eligible_for_vinyl_sticker": isEligibleForVinylSticker,
        "is_explicit": isExplicit,
        "licensed_music_subtype": licensedMusicSubtype,
        "lyrics": lyrics,
        "progressive_download_url": progressiveDownloadUrl,
        "reactive_audio_download_url": reactiveAudioDownloadUrl,
        "sanitized_title": sanitizedTitle,
        "subtitle": subtitle,
        "title": title,
        "web_30s_preview_download_url": web30SPreviewDownloadUrl,
      };
}

class MusicConsumptionInfo {
  bool allowMediaCreationWithMusic;
  dynamic audioAssetStartTimeInMs;
  List<dynamic> audioFilterInfos;
  AudioMutingInfo audioMutingInfo;
  dynamic containsLyrics;
  dynamic derivedContentId;
  dynamic displayLabels;
  dynamic formattedClipsMediaCount;
  UserElement? igArtist;
  bool isBookmarked;
  bool isTrendingInClips;
  dynamic overlapDurationInMs;
  dynamic placeholderProfilePicUrl;
  dynamic previousTrendRank;
  bool shouldAllowMusicEditing;
  bool shouldMuteAudio;
  dynamic shouldMuteAudioReason;
  dynamic shouldMuteAudioReasonType;
  dynamic trendRank;

  MusicConsumptionInfo({
    required this.allowMediaCreationWithMusic,
    required this.audioAssetStartTimeInMs,
    required this.audioFilterInfos,
    required this.audioMutingInfo,
    required this.containsLyrics,
    required this.derivedContentId,
    required this.displayLabels,
    required this.formattedClipsMediaCount,
    required this.igArtist,
    required this.isBookmarked,
    required this.isTrendingInClips,
    required this.overlapDurationInMs,
    required this.placeholderProfilePicUrl,
    required this.previousTrendRank,
    required this.shouldAllowMusicEditing,
    required this.shouldMuteAudio,
    required this.shouldMuteAudioReason,
    required this.shouldMuteAudioReasonType,
    required this.trendRank,
  });

  factory MusicConsumptionInfo.fromJson(Map<dynamic, dynamic> json) =>
      MusicConsumptionInfo(
        allowMediaCreationWithMusic: json["allow_media_creation_with_music"],
        audioAssetStartTimeInMs: json["audio_asset_start_time_in_ms"],
        audioFilterInfos:
            List<dynamic>.from(json["audio_filter_infos"].map((x) => x)),
        audioMutingInfo: AudioMutingInfo.fromJson(json["audio_muting_info"]),
        containsLyrics: json["contains_lyrics"],
        derivedContentId: json["derived_content_id"],
        displayLabels: json["display_labels"],
        formattedClipsMediaCount: json["formatted_clips_media_count"],
        igArtist: json["ig_artist"] == null
            ? null
            : UserElement.fromJson(json["ig_artist"]),
        isBookmarked: json["is_bookmarked"],
        isTrendingInClips: json["is_trending_in_clips"],
        overlapDurationInMs: json["overlap_duration_in_ms"],
        placeholderProfilePicUrl: json["placeholder_profile_pic_url"],
        previousTrendRank: json["previous_trend_rank"],
        shouldAllowMusicEditing: json["should_allow_music_editing"],
        shouldMuteAudio: json["should_mute_audio"],
        shouldMuteAudioReason: json["should_mute_audio_reason"],
        shouldMuteAudioReasonType: json["should_mute_audio_reason_type"],
        trendRank: json["trend_rank"],
      );

  Map<dynamic, dynamic> toJson() => {
        "allow_media_creation_with_music": allowMediaCreationWithMusic,
        "audio_asset_start_time_in_ms": audioAssetStartTimeInMs,
        "audio_filter_infos":
            List<dynamic>.from(audioFilterInfos.map((x) => x)),
        "audio_muting_info": audioMutingInfo.toJson(),
        "contains_lyrics": containsLyrics,
        "derived_content_id": derivedContentId,
        "display_labels": displayLabels,
        "formatted_clips_media_count": formattedClipsMediaCount,
        "ig_artist": igArtist?.toJson(),
        "is_bookmarked": isBookmarked,
        "is_trending_in_clips": isTrendingInClips,
        "overlap_duration_in_ms": overlapDurationInMs,
        "placeholder_profile_pic_url": placeholderProfilePicUrl,
        "previous_trend_rank": previousTrendRank,
        "should_allow_music_editing": shouldAllowMusicEditing,
        "should_mute_audio": shouldMuteAudio,
        "should_mute_audio_reason": shouldMuteAudioReason,
        "should_mute_audio_reason_type": shouldMuteAudioReasonType,
        "trend_rank": trendRank,
      };
}

class AudioMutingInfo {
  bool allowAudioEditing;
  bool muteAudio;
  dynamic muteReasonStr;
  bool showMutedAudioToast;

  AudioMutingInfo({
    required this.allowAudioEditing,
    required this.muteAudio,
    required this.muteReasonStr,
    required this.showMutedAudioToast,
  });

  factory AudioMutingInfo.fromJson(Map<dynamic, dynamic> json) =>
      AudioMutingInfo(
        allowAudioEditing: json["allow_audio_editing"],
        muteAudio: json["mute_audio"],
        muteReasonStr: json["mute_reason_str"],
        showMutedAudioToast: json["show_muted_audio_toast"],
      );

  Map<dynamic, dynamic> toJson() => {
        "allow_audio_editing": allowAudioEditing,
        "mute_audio": muteAudio,
        "mute_reason_str": muteReasonStr,
        "show_muted_audio_toast": showMutedAudioToast,
      };
}

class OriginalSoundInfo {
  bool allowCreatorToRename;
  dynamic attributedCustomAudioAssetId;
  dynamic audioAssetStartTimeInMs;
  List<dynamic> audioFilterInfos;
  dynamic audioId;
  List<dynamic> audioParts;
  List<dynamic> audioPartsByFilter;
  bool canRemixBeSharedToFb;
  bool canRemixBeSharedToFbExpansion;
  ConsumptionInfo consumptionInfo;
  dynamic durationInMs;
  FbDownstreamUseXpostMetadata fbDownstreamUseXpostMetadata;
  dynamic formattedClipsMediaCount;
  bool hideRemixing;
  UserElement igArtist;
  bool isAudioAutomaticallyAttributed;
  bool isEligibleForAudioEffects;
  bool isEligibleForVinylSticker;
  bool isExplicit;
  bool isOriginalAudioDownloadEligible;
  bool isReuseDisabled;
  bool isXpostFromFb;
  bool oaOwnerIsMusicArtist;
  dynamic originalAudioSubtype;
  dynamic originalAudioTitle;
  double originalMediaId;
  dynamic overlapDurationInMs;
  dynamic previousTrendRank;
  dynamic progressiveDownloadUrl;
  bool shouldMuteAudio;
  dynamic timeCreated;
  dynamic trendRank;
  dynamic xpostFbCreatorInfo;

  OriginalSoundInfo({
    required this.allowCreatorToRename,
    required this.attributedCustomAudioAssetId,
    required this.audioAssetStartTimeInMs,
    required this.audioFilterInfos,
    required this.audioId,
    required this.audioParts,
    required this.audioPartsByFilter,
    required this.canRemixBeSharedToFb,
    required this.canRemixBeSharedToFbExpansion,
    required this.consumptionInfo,
    required this.durationInMs,
    required this.fbDownstreamUseXpostMetadata,
    required this.formattedClipsMediaCount,
    required this.hideRemixing,
    required this.igArtist,
    required this.isAudioAutomaticallyAttributed,
    required this.isEligibleForAudioEffects,
    required this.isEligibleForVinylSticker,
    required this.isExplicit,
    required this.isOriginalAudioDownloadEligible,
    required this.isReuseDisabled,
    required this.isXpostFromFb,
    required this.oaOwnerIsMusicArtist,
    required this.originalAudioSubtype,
    required this.originalAudioTitle,
    required this.originalMediaId,
    required this.overlapDurationInMs,
    required this.previousTrendRank,
    required this.progressiveDownloadUrl,
    required this.shouldMuteAudio,
    required this.timeCreated,
    required this.trendRank,
    required this.xpostFbCreatorInfo,
  });

  factory OriginalSoundInfo.fromJson(Map<dynamic, dynamic> json) =>
      OriginalSoundInfo(
        allowCreatorToRename: json["allow_creator_to_rename"],
        attributedCustomAudioAssetId: json["attributed_custom_audio_asset_id"],
        audioAssetStartTimeInMs: json["audio_asset_start_time_in_ms"],
        audioFilterInfos:
            List<dynamic>.from(json["audio_filter_infos"].map((x) => x)),
        audioId: json["audio_id"],
        audioParts: List<dynamic>.from(json["audio_parts"].map((x) => x)),
        audioPartsByFilter:
            List<dynamic>.from(json["audio_parts_by_filter"].map((x) => x)),
        canRemixBeSharedToFb: json["can_remix_be_shared_to_fb"],
        canRemixBeSharedToFbExpansion:
            json["can_remix_be_shared_to_fb_expansion"],
        consumptionInfo: ConsumptionInfo.fromJson(json["consumption_info"]),
        durationInMs: json["duration_in_ms"],
        fbDownstreamUseXpostMetadata: FbDownstreamUseXpostMetadata.fromJson(
            json["fb_downstream_use_xpost_metadata"]),
        formattedClipsMediaCount: json["formatted_clips_media_count"],
        hideRemixing: json["hide_remixing"],
        igArtist: UserElement.fromJson(json["ig_artist"]),
        isAudioAutomaticallyAttributed:
            json["is_audio_automatically_attributed"],
        isEligibleForAudioEffects: json["is_eligible_for_audio_effects"],
        isEligibleForVinylSticker: json["is_eligible_for_vinyl_sticker"],
        isExplicit: json["is_explicit"],
        isOriginalAudioDownloadEligible:
            json["is_original_audio_download_eligible"],
        isReuseDisabled: json["is_reuse_disabled"],
        isXpostFromFb: json["is_xpost_from_fb"],
        oaOwnerIsMusicArtist: json["oa_owner_is_music_artist"],
        originalAudioSubtype: json["original_audio_subtype"],
        originalAudioTitle: json["original_audio_title"],
        originalMediaId: json["original_media_id"]?.toDouble(),
        overlapDurationInMs: json["overlap_duration_in_ms"],
        previousTrendRank: json["previous_trend_rank"],
        progressiveDownloadUrl: json["progressive_download_url"],
        shouldMuteAudio: json["should_mute_audio"],
        timeCreated: json["time_created"],
        trendRank: json["trend_rank"],
        xpostFbCreatorInfo: json["xpost_fb_creator_info"],
      );

  Map<dynamic, dynamic> toJson() => {
        "allow_creator_to_rename": allowCreatorToRename,
        "attributed_custom_audio_asset_id": attributedCustomAudioAssetId,
        "audio_asset_start_time_in_ms": audioAssetStartTimeInMs,
        "audio_filter_infos":
            List<dynamic>.from(audioFilterInfos.map((x) => x)),
        "audio_id": audioId,
        "audio_parts": List<dynamic>.from(audioParts.map((x) => x)),
        "audio_parts_by_filter":
            List<dynamic>.from(audioPartsByFilter.map((x) => x)),
        "can_remix_be_shared_to_fb": canRemixBeSharedToFb,
        "can_remix_be_shared_to_fb_expansion": canRemixBeSharedToFbExpansion,
        "consumption_info": consumptionInfo.toJson(),
        "duration_in_ms": durationInMs,
        "fb_downstream_use_xpost_metadata":
            fbDownstreamUseXpostMetadata.toJson(),
        "formatted_clips_media_count": formattedClipsMediaCount,
        "hide_remixing": hideRemixing,
        "ig_artist": igArtist.toJson(),
        "is_audio_automatically_attributed": isAudioAutomaticallyAttributed,
        "is_eligible_for_audio_effects": isEligibleForAudioEffects,
        "is_eligible_for_vinyl_sticker": isEligibleForVinylSticker,
        "is_explicit": isExplicit,
        "is_original_audio_download_eligible": isOriginalAudioDownloadEligible,
        "is_reuse_disabled": isReuseDisabled,
        "is_xpost_from_fb": isXpostFromFb,
        "oa_owner_is_music_artist": oaOwnerIsMusicArtist,
        "original_audio_subtype": originalAudioSubtype,
        "original_audio_title": originalAudioTitle,
        "original_media_id": originalMediaId,
        "overlap_duration_in_ms": overlapDurationInMs,
        "previous_trend_rank": previousTrendRank,
        "progressive_download_url": progressiveDownloadUrl,
        "should_mute_audio": shouldMuteAudio,
        "time_created": timeCreated,
        "trend_rank": trendRank,
        "xpost_fb_creator_info": xpostFbCreatorInfo,
      };
}

class ConsumptionInfo {
  dynamic displayMediaId;
  bool isBookmarked;
  bool isTrendingInClips;
  dynamic shouldMuteAudioReason;
  dynamic shouldMuteAudioReasonType;

  ConsumptionInfo({
    required this.displayMediaId,
    required this.isBookmarked,
    required this.isTrendingInClips,
    required this.shouldMuteAudioReason,
    required this.shouldMuteAudioReasonType,
  });

  factory ConsumptionInfo.fromJson(Map<dynamic, dynamic> json) =>
      ConsumptionInfo(
        displayMediaId: json["display_media_id"],
        isBookmarked: json["is_bookmarked"],
        isTrendingInClips: json["is_trending_in_clips"],
        shouldMuteAudioReason: json["should_mute_audio_reason"],
        shouldMuteAudioReasonType: json["should_mute_audio_reason_type"],
      );

  Map<dynamic, dynamic> toJson() => {
        "display_media_id": displayMediaId,
        "is_bookmarked": isBookmarked,
        "is_trending_in_clips": isTrendingInClips,
        "should_mute_audio_reason": shouldMuteAudioReason,
        "should_mute_audio_reason_type": shouldMuteAudioReasonType,
      };
}

class FbDownstreamUseXpostMetadata {
  DetectionMethod downstreamUseXpostDenyReason;

  FbDownstreamUseXpostMetadata({
    required this.downstreamUseXpostDenyReason,
  });

  factory FbDownstreamUseXpostMetadata.fromJson(Map<dynamic, dynamic> json) =>
      FbDownstreamUseXpostMetadata(
        downstreamUseXpostDenyReason: detectionMethodValues
            .map[json["downstream_use_xpost_deny_reason"]]!,
      );

  Map<dynamic, dynamic> toJson() => {
        "downstream_use_xpost_deny_reason":
            detectionMethodValues.reverse[downstreamUseXpostDenyReason],
      };
}

enum DetectionMethod { NONE }

final detectionMethodValues = EnumValues({"NONE": DetectionMethod.NONE});

class ReusableTextInfo {
  dynamic alignment;
  List<Color> colors;
  double endTimeMs;
  dynamic fontSize;
  double height;
  dynamic id;
  dynamic isAnimated;
  double offsetX;
  double offsetY;
  dynamic rotationDegree;
  double scale;
  dynamic startTimeMs;
  dynamic text;
  dynamic textEmphasisMode;
  dynamic textFormatType;
  double width;
  dynamic zIndex;

  ReusableTextInfo({
    required this.alignment,
    required this.colors,
    required this.endTimeMs,
    required this.fontSize,
    required this.height,
    required this.id,
    required this.isAnimated,
    required this.offsetX,
    required this.offsetY,
    required this.rotationDegree,
    required this.scale,
    required this.startTimeMs,
    required this.text,
    required this.textEmphasisMode,
    required this.textFormatType,
    required this.width,
    required this.zIndex,
  });

  factory ReusableTextInfo.fromJson(Map<dynamic, dynamic> json) =>
      ReusableTextInfo(
        alignment: json["alignment"],
        colors: List<Color>.from(json["colors"].map((x) => Color.fromJson(x))),
        endTimeMs: json["end_time_ms"]?.toDouble(),
        fontSize: json["font_size"],
        height: json["height"]?.toDouble(),
        id: json["id"],
        isAnimated: json["is_animated"],
        offsetX: json["offset_x"]?.toDouble(),
        offsetY: json["offset_y"]?.toDouble(),
        rotationDegree: json["rotation_degree"],
        scale: json["scale"]?.toDouble(),
        startTimeMs: json["start_time_ms"],
        text: json["text"],
        textEmphasisMode: json["text_emphasis_mode"],
        textFormatType: json["text_format_type"],
        width: json["width"]?.toDouble(),
        zIndex: json["z_index"],
      );

  Map<dynamic, dynamic> toJson() => {
        "alignment": alignment,
        "colors": List<dynamic>.from(colors.map((x) => x.toJson())),
        "end_time_ms": endTimeMs,
        "font_size": fontSize,
        "height": height,
        "id": id,
        "is_animated": isAnimated,
        "offset_x": offsetX,
        "offset_y": offsetY,
        "rotation_degree": rotationDegree,
        "scale": scale,
        "start_time_ms": startTimeMs,
        "text": text,
        "text_emphasis_mode": textEmphasisMode,
        "text_format_type": textFormatType,
        "width": width,
        "z_index": zIndex,
      };
}

class Color {
  dynamic count;
  dynamic hexRgbaColor;

  Color({
    required this.count,
    required this.hexRgbaColor,
  });

  factory Color.fromJson(Map<dynamic, dynamic> json) => Color(
        count: json["count"],
        hexRgbaColor: json["hex_rgba_color"],
      );

  Map<dynamic, dynamic> toJson() => {
        "count": count,
        "hex_rgba_color": hexRgbaColor,
      };
}

class CollabFollowButtonInfo {
  bool isOwnerInAuthorExp;
  bool showFollowButton;

  CollabFollowButtonInfo({
    required this.isOwnerInAuthorExp,
    required this.showFollowButton,
  });

  factory CollabFollowButtonInfo.fromJson(Map<dynamic, dynamic> json) =>
      CollabFollowButtonInfo(
        isOwnerInAuthorExp: json["is_owner_in_author_exp"],
        showFollowButton: json["show_follow_button"],
      );

  Map<dynamic, dynamic> toJson() => {
        "is_owner_in_author_exp": isOwnerInAuthorExp,
        "show_follow_button": showFollowButton,
      };
}

class CommentInformTreatment {
  dynamic actionType;
  bool shouldHaveInformTreatment;
  dynamic text;
  dynamic url;

  CommentInformTreatment({
    required this.actionType,
    required this.shouldHaveInformTreatment,
    required this.text,
    required this.url,
  });

  factory CommentInformTreatment.fromJson(Map<dynamic, dynamic> json) =>
      CommentInformTreatment(
        actionType: json["action_type"],
        shouldHaveInformTreatment: json["should_have_inform_treatment"],
        text: json["text"],
        url: json["url"],
      );

  Map<dynamic, dynamic> toJson() => {
        "action_type": actionType,
        "should_have_inform_treatment": shouldHaveInformTreatment,
        "text": text,
        "url": url,
      };
}

class CrosspostMetadata {
  FbDownstreamUseXpostMetadata fbDownstreamUseXpostMetadata;

  CrosspostMetadata({
    required this.fbDownstreamUseXpostMetadata,
  });

  factory CrosspostMetadata.fromJson(Map<dynamic, dynamic> json) =>
      CrosspostMetadata(
        fbDownstreamUseXpostMetadata: FbDownstreamUseXpostMetadata.fromJson(
            json["fb_downstream_use_xpost_metadata"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "fb_downstream_use_xpost_metadata":
            fbDownstreamUseXpostMetadata.toJson(),
      };
}

class FbUserTags {
  List<dynamic> fbUserTagsIn;

  FbUserTags({
    required this.fbUserTagsIn,
  });

  factory FbUserTags.fromJson(Map<dynamic, dynamic> json) => FbUserTags(
        fbUserTagsIn: List<dynamic>.from(json["in"].map((x) => x)),
      );

  Map<dynamic, dynamic> toJson() => {
        "in": List<dynamic>.from(fbUserTagsIn.map((x) => x)),
      };
}

class FundraiserTag {
  bool hasStandaloneFundraiser;

  FundraiserTag({
    required this.hasStandaloneFundraiser,
  });

  factory FundraiserTag.fromJson(Map<dynamic, dynamic> json) => FundraiserTag(
        hasStandaloneFundraiser: json["has_standalone_fundraiser"],
      );

  Map<dynamic, dynamic> toJson() => {
        "has_standalone_fundraiser": hasStandaloneFundraiser,
      };
}

class GenAiDetectionMethod {
  DetectionMethod detectionMethod;

  GenAiDetectionMethod({
    required this.detectionMethod,
  });

  factory GenAiDetectionMethod.fromJson(Map<dynamic, dynamic> json) =>
      GenAiDetectionMethod(
        detectionMethod: detectionMethodValues.map[json["detection_method"]]!,
      );

  Map<dynamic, dynamic> toJson() => {
        "detection_method": detectionMethodValues.reverse[detectionMethod],
      };
}

class ImageVersions {
  AdditionalItems additionalItems;
  List<FirstFrame> items;
  ScrubberSpritesheetInfoCandidates? scrubberSpritesheetInfoCandidates;

  ImageVersions({
    required this.additionalItems,
    required this.items,
    this.scrubberSpritesheetInfoCandidates,
  });

  factory ImageVersions.fromJson(Map<dynamic, dynamic> json) => ImageVersions(
        additionalItems: AdditionalItems.fromJson(json["additional_items"]),
        items: List<FirstFrame>.from(
            json["items"].map((x) => FirstFrame.fromJson(x))),
        scrubberSpritesheetInfoCandidates:
            json["scrubber_spritesheet_info_candidates"] == null
                ? null
                : ScrubberSpritesheetInfoCandidates.fromJson(
                    json["scrubber_spritesheet_info_candidates"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "additional_items": additionalItems.toJson(),
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "scrubber_spritesheet_info_candidates":
            scrubberSpritesheetInfoCandidates?.toJson(),
      };
}

class AdditionalItems {
  FirstFrame firstFrame;
  FirstFrame igtvFirstFrame;
  dynamic smartFrame;

  AdditionalItems({
    required this.firstFrame,
    required this.igtvFirstFrame,
    required this.smartFrame,
  });

  factory AdditionalItems.fromJson(Map<dynamic, dynamic> json) =>
      AdditionalItems(
        firstFrame: FirstFrame.fromJson(json["first_frame"]),
        igtvFirstFrame: FirstFrame.fromJson(json["igtv_first_frame"]),
        smartFrame: json["smart_frame"],
      );

  Map<dynamic, dynamic> toJson() => {
        "first_frame": firstFrame.toJson(),
        "igtv_first_frame": igtvFirstFrame.toJson(),
        "smart_frame": smartFrame,
      };
}

class FirstFrame {
  dynamic height;
  dynamic url;
  dynamic width;

  FirstFrame({
    required this.height,
    required this.url,
    required this.width,
  });

  factory FirstFrame.fromJson(Map<dynamic, dynamic> json) => FirstFrame(
        height: json["height"],
        url: json["url"],
        width: json["width"],
      );

  Map<dynamic, dynamic> toJson() => {
        "height": height,
        "url": url,
        "width": width,
      };
}

class ScrubberSpritesheetInfoCandidates {
  Default scrubberSpritesheetInfoCandidatesDefault;

  ScrubberSpritesheetInfoCandidates({
    required this.scrubberSpritesheetInfoCandidatesDefault,
  });

  factory ScrubberSpritesheetInfoCandidates.fromJson(
          Map<dynamic, dynamic> json) =>
      ScrubberSpritesheetInfoCandidates(
        scrubberSpritesheetInfoCandidatesDefault:
            Default.fromJson(json["default"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "default": scrubberSpritesheetInfoCandidatesDefault.toJson(),
      };
}

class Default {
  dynamic fileSizeKb;
  dynamic maxThumbnailsPerSprite;
  dynamic renderedWidth;
  dynamic spriteHeight;
  List<dynamic> spriteUrls;
  dynamic spriteWidth;
  double thumbnailDuration;
  dynamic thumbnailHeight;
  dynamic thumbnailWidth;
  dynamic thumbnailsPerRow;
  dynamic totalThumbnailNumPerSprite;
  double videoLength;

  Default({
    required this.fileSizeKb,
    required this.maxThumbnailsPerSprite,
    required this.renderedWidth,
    required this.spriteHeight,
    required this.spriteUrls,
    required this.spriteWidth,
    required this.thumbnailDuration,
    required this.thumbnailHeight,
    required this.thumbnailWidth,
    required this.thumbnailsPerRow,
    required this.totalThumbnailNumPerSprite,
    required this.videoLength,
  });

  factory Default.fromJson(Map<dynamic, dynamic> json) => Default(
        fileSizeKb: json["file_size_kb"],
        maxThumbnailsPerSprite: json["max_thumbnails_per_sprite"],
        renderedWidth: json["rendered_width"],
        spriteHeight: json["sprite_height"],
        spriteUrls: List<dynamic>.from(json["sprite_urls"].map((x) => x)),
        spriteWidth: json["sprite_width"],
        thumbnailDuration: json["thumbnail_duration"]?.toDouble(),
        thumbnailHeight: json["thumbnail_height"],
        thumbnailWidth: json["thumbnail_width"],
        thumbnailsPerRow: json["thumbnails_per_row"],
        totalThumbnailNumPerSprite: json["total_thumbnail_num_per_sprite"],
        videoLength: json["video_length"]?.toDouble(),
      );

  Map<dynamic, dynamic> toJson() => {
        "file_size_kb": fileSizeKb,
        "max_thumbnails_per_sprite": maxThumbnailsPerSprite,
        "rendered_width": renderedWidth,
        "sprite_height": spriteHeight,
        "sprite_urls": List<dynamic>.from(spriteUrls.map((x) => x)),
        "sprite_width": spriteWidth,
        "thumbnail_duration": thumbnailDuration,
        "thumbnail_height": thumbnailHeight,
        "thumbnail_width": thumbnailWidth,
        "thumbnails_per_row": thumbnailsPerRow,
        "total_thumbnail_num_per_sprite": totalThumbnailNumPerSprite,
        "video_length": videoLength,
      };
}

enum IntegrityReviewDecision { PENDING }

final integrityReviewDecisionValues =
    EnumValues({"pending": IntegrityReviewDecision.PENDING});

enum InventorySource { RECOMMENDED_CLIPS_CHAINING_MODEL }

final inventorySourceValues = EnumValues({
  "recommended_clips_chaining_model":
      InventorySource.RECOMMENDED_CLIPS_CHAINING_MODEL
});

class Location {
  dynamic address;
  dynamic city;
  dynamic externalSource;
  dynamic facebookPlacesId;
  dynamic id;
  double lat;
  double lng;
  dynamic name;
  dynamic shortName;

  Location({
    required this.address,
    required this.city,
    required this.externalSource,
    required this.facebookPlacesId,
    required this.id,
    required this.lat,
    required this.lng,
    required this.name,
    required this.shortName,
  });

  factory Location.fromJson(Map<dynamic, dynamic> json) => Location(
        address: json["address"],
        city: json["city"],
        externalSource: json["external_source"],
        facebookPlacesId: json["facebook_places_id"],
        id: json["id"],
        lat: json["lat"]?.toDouble(),
        lng: json["lng"]?.toDouble(),
        name: json["name"],
        shortName: json["short_name"],
      );

  Map<dynamic, dynamic> toJson() => {
        "address": address,
        "city": city,
        "external_source": externalSource,
        "facebook_places_id": facebookPlacesId,
        "id": id,
        "lat": lat,
        "lng": lng,
        "name": name,
        "short_name": shortName,
      };
}

class MediaCroppingInfo {
  SquareCrop squareCrop;

  MediaCroppingInfo({
    required this.squareCrop,
  });

  factory MediaCroppingInfo.fromJson(Map<dynamic, dynamic> json) =>
      MediaCroppingInfo(
        squareCrop: SquareCrop.fromJson(json["square_crop"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "square_crop": squareCrop.toJson(),
      };
}

class SquareCrop {
  double cropBottom;
  double cropLeft;
  double cropRight;
  double cropTop;

  SquareCrop({
    required this.cropBottom,
    required this.cropLeft,
    required this.cropRight,
    required this.cropTop,
  });

  factory SquareCrop.fromJson(Map<dynamic, dynamic> json) => SquareCrop(
        cropBottom: json["crop_bottom"]?.toDouble(),
        cropLeft: json["crop_left"]?.toDouble(),
        cropRight: json["crop_right"]?.toDouble(),
        cropTop: json["crop_top"]?.toDouble(),
      );

  Map<dynamic, dynamic> toJson() => {
        "crop_bottom": cropBottom,
        "crop_left": cropLeft,
        "crop_right": cropRight,
        "crop_top": cropTop,
      };
}

enum MediaFormat { VIDEO }

final mediaFormatValues = EnumValues({"video": MediaFormat.VIDEO});

enum MediaName { REEL }

final mediaNameValues = EnumValues({"reel": MediaName.REEL});

class MediaNotes {
  List<dynamic> items;

  MediaNotes({
    required this.items,
  });

  factory MediaNotes.fromJson(Map<dynamic, dynamic> json) => MediaNotes(
        items: List<dynamic>.from(json["items"].map((x) => x)),
      );

  Map<dynamic, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x)),
      };
}

class SharingFrictionInfo {
  dynamic bloksAppUrl;
  dynamic sharingFrictionPayload;
  bool shouldHaveSharingFriction;

  SharingFrictionInfo({
    required this.bloksAppUrl,
    required this.sharingFrictionPayload,
    required this.shouldHaveSharingFriction,
  });

  factory SharingFrictionInfo.fromJson(Map<dynamic, dynamic> json) =>
      SharingFrictionInfo(
        bloksAppUrl: json["bloks_app_url"],
        sharingFrictionPayload: json["sharing_friction_payload"],
        shouldHaveSharingFriction: json["should_have_sharing_friction"],
      );

  Map<dynamic, dynamic> toJson() => {
        "bloks_app_url": bloksAppUrl,
        "sharing_friction_payload": sharingFrictionPayload,
        "should_have_sharing_friction": shouldHaveSharingFriction,
      };
}

class TaggedUser {
  List<dynamic> position;
  bool showCategoryOfUser;
  UserElement user;
  dynamic x;
  dynamic y;

  TaggedUser({
    required this.position,
    required this.showCategoryOfUser,
    required this.user,
    required this.x,
    required this.y,
  });

  factory TaggedUser.fromJson(Map<dynamic, dynamic> json) => TaggedUser(
        position: List<dynamic>.from(json["position"].map((x) => x)),
        showCategoryOfUser: json["show_category_of_user"],
        user: UserElement.fromJson(json["user"]),
        x: json["x"],
        y: json["y"],
      );

  Map<dynamic, dynamic> toJson() => {
        "position": List<dynamic>.from(position.map((x) => x)),
        "show_category_of_user": showCategoryOfUser,
        "user": user.toJson(),
        "x": x,
        "y": y,
      };
}

class PurpleUser {
  List<dynamic> accountBadges;
  dynamic accountType;
  FanClubInfo fanClubInfo;
  double fbidV2;
  bool feedPostReshareDisabled;
  dynamic fullName;
  bool hasAnonymousProfilePicture;
  dynamic id;
  bool isFavorite;
  bool isPrivate;
  bool isUnpublished;
  bool isVerified;
  dynamic latestReelMedia;
  dynamic profilePicId;
  dynamic profilePicUrl;
  bool showAccountTransparencyDetails;
  dynamic thirdPartyDownloadsEnabled;
  bool transparencyProductEnabled;
  dynamic username;

  PurpleUser({
    required this.accountBadges,
    required this.accountType,
    required this.fanClubInfo,
    required this.fbidV2,
    required this.feedPostReshareDisabled,
    required this.fullName,
    required this.hasAnonymousProfilePicture,
    required this.id,
    required this.isFavorite,
    required this.isPrivate,
    required this.isUnpublished,
    required this.isVerified,
    required this.latestReelMedia,
    required this.profilePicId,
    required this.profilePicUrl,
    required this.showAccountTransparencyDetails,
    required this.thirdPartyDownloadsEnabled,
    required this.transparencyProductEnabled,
    required this.username,
  });

  factory PurpleUser.fromJson(Map<dynamic, dynamic> json) => PurpleUser(
        accountBadges: List<dynamic>.from(json["account_badges"].map((x) => x)),
        accountType: json["account_type"],
        fanClubInfo: FanClubInfo.fromJson(json["fan_club_info"]),
        fbidV2: json["fbid_v2"]?.toDouble(),
        feedPostReshareDisabled: json["feed_post_reshare_disabled"],
        fullName: json["full_name"],
        hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
        id: json["id"],
        isFavorite: json["is_favorite"],
        isPrivate: json["is_private"],
        isUnpublished: json["is_unpublished"],
        isVerified: json["is_verified"],
        latestReelMedia: json["latest_reel_media"],
        profilePicId: json["profile_pic_id"],
        profilePicUrl: json["profile_pic_url"],
        showAccountTransparencyDetails:
            json["show_account_transparency_details"],
        thirdPartyDownloadsEnabled: json["third_party_downloads_enabled"],
        transparencyProductEnabled: json["transparency_product_enabled"],
        username: json["username"],
      );

  Map<dynamic, dynamic> toJson() => {
        "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
        "account_type": accountType,
        "fan_club_info": fanClubInfo.toJson(),
        "fbid_v2": fbidV2,
        "feed_post_reshare_disabled": feedPostReshareDisabled,
        "full_name": fullName,
        "has_anonymous_profile_picture": hasAnonymousProfilePicture,
        "id": id,
        "is_favorite": isFavorite,
        "is_private": isPrivate,
        "is_unpublished": isUnpublished,
        "is_verified": isVerified,
        "latest_reel_media": latestReelMedia,
        "profile_pic_id": profilePicId,
        "profile_pic_url": profilePicUrl,
        "show_account_transparency_details": showAccountTransparencyDetails,
        "third_party_downloads_enabled": thirdPartyDownloadsEnabled,
        "transparency_product_enabled": transparencyProductEnabled,
        "username": username,
      };
}

class FanClubInfo {
  dynamic autosaveToExclusiveHighlight;
  dynamic connectedMemberCount;
  dynamic fanClubId;
  dynamic fanClubName;
  dynamic fanConsiderationPageRevampEligiblity;
  dynamic hasCreatedSsc;
  dynamic hasEnoughSubscribersForSsc;
  dynamic isFanClubGiftingEligible;
  dynamic isFanClubReferralEligible;
  dynamic isFreeTrialEligible;
  dynamic largestPublicBcId;
  dynamic subscriberCount;

  FanClubInfo({
    required this.autosaveToExclusiveHighlight,
    required this.connectedMemberCount,
    required this.fanClubId,
    required this.fanClubName,
    required this.fanConsiderationPageRevampEligiblity,
    required this.hasCreatedSsc,
    required this.hasEnoughSubscribersForSsc,
    required this.isFanClubGiftingEligible,
    required this.isFanClubReferralEligible,
    required this.isFreeTrialEligible,
    required this.largestPublicBcId,
    required this.subscriberCount,
  });

  factory FanClubInfo.fromJson(Map<dynamic, dynamic> json) => FanClubInfo(
        autosaveToExclusiveHighlight: json["autosave_to_exclusive_highlight"],
        connectedMemberCount: json["connected_member_count"],
        fanClubId: json["fan_club_id"],
        fanClubName: json["fan_club_name"],
        fanConsiderationPageRevampEligiblity:
            json["fan_consideration_page_revamp_eligiblity"],
        hasCreatedSsc: json["has_created_ssc"],
        hasEnoughSubscribersForSsc: json["has_enough_subscribers_for_ssc"],
        isFanClubGiftingEligible: json["is_fan_club_gifting_eligible"],
        isFanClubReferralEligible: json["is_fan_club_referral_eligible"],
        isFreeTrialEligible: json["is_free_trial_eligible"],
        largestPublicBcId: json["largest_public_bc_id"],
        subscriberCount: json["subscriber_count"],
      );

  Map<dynamic, dynamic> toJson() => {
        "autosave_to_exclusive_highlight": autosaveToExclusiveHighlight,
        "connected_member_count": connectedMemberCount,
        "fan_club_id": fanClubId,
        "fan_club_name": fanClubName,
        "fan_consideration_page_revamp_eligiblity":
            fanConsiderationPageRevampEligiblity,
        "has_created_ssc": hasCreatedSsc,
        "has_enough_subscribers_for_ssc": hasEnoughSubscribersForSsc,
        "is_fan_club_gifting_eligible": isFanClubGiftingEligible,
        "is_fan_club_referral_eligible": isFanClubReferralEligible,
        "is_free_trial_eligible": isFreeTrialEligible,
        "largest_public_bc_id": largestPublicBcId,
        "subscriber_count": subscriberCount,
      };
}

class VideoVersion {
  dynamic bandwidth;
  dynamic height;
  dynamic id;
  dynamic type;
  dynamic url;
  dynamic width;

  VideoVersion({
    required this.bandwidth,
    required this.height,
    required this.id,
    required this.type,
    required this.url,
    required this.width,
  });

  factory VideoVersion.fromJson(Map<dynamic, dynamic> json) => VideoVersion(
        bandwidth: json["bandwidth"],
        height: json["height"],
        id: json["id"],
        type: json["type"],
        url: json["url"],
        width: json["width"],
      );

  Map<dynamic, dynamic> toJson() => {
        "bandwidth": bandwidth,
        "height": height,
        "id": id,
        "type": type,
        "url": url,
        "width": width,
      };
}

class EnumValues<T> {
  Map<dynamic, T> map;
  late Map<T, dynamic> reverseMap;

  EnumValues(this.map);

  Map<T, dynamic> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
