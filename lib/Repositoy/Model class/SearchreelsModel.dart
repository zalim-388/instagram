// To parse this JSON data, do
//
//     final reelModel = reelModelFromJson(jsonString);

import 'dart:convert';

ReelModel reelModelFromJson(dynamic str) =>
    ReelModel.fromJson(json.decode(str));

dynamic reelModelToJson(ReelModel data) => json.encode(data.toJson());

class ReelModel {
  Data data;
  dynamic paginationToken;

  ReelModel({
    required this.data,
    required this.paginationToken,
  });

  factory ReelModel.fromJson(Map<dynamic, dynamic> json) => ReelModel(
        data: Data.fromJson(json["data"]),
        paginationToken: json["pagination_token"],
      );

  Map<dynamic, dynamic> toJson() => {
        "data": data.toJson(),
        "pagination_token": paginationToken,
      };
}

class Data {
  dynamic count;
  List<DataItem> items;
  UserElement user;

  Data({
    required this.count,
    required this.items,
    required this.user,
  });

  factory Data.fromJson(Map<dynamic, dynamic> json) => Data(
        count: json["count"],
        items:
            List<DataItem>.from(json["items"].map((x) => DataItem.fromJson(x))),
        user: UserElement.fromJson(json["user"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "count": count,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "user": user.toJson(),
      };
}

class DataItem {
  bool canReply;
  bool canReshare;
  bool canSave;
  Caption? caption;
  bool captionIsEdited;
  List<dynamic> clipsTabPinnedUserIds;
  bool coauthorProducerCanSeeOrganicInsights;
  List<UserElement> coauthorProducers;
  dynamic code;
  dynamic commentCount;
  CommentInformTreatment commentInformTreatment;
  dynamic commercedynamicegrityReviewDecision;
  CrosspostMetadata crosspostMetadata;
  dynamic deletedReason;
  dynamic deviceTimestamp;
  dynamic fbAggregatedCommentCount;
  dynamic fbAggregatedLikeCount;
  FbUserTags fbUserTags;
  dynamic fbid;
  List<dynamic> featuredProducts;
  dynamic filterType;
  FundraiserTag fundraiserTag;
  GenAiDetectionMethod genAiDetectionMethod;
  bool hasHighRiskGenAiInformTreatment;
  bool hasLiked;
  bool hasPrivatelyLiked;
  dynamic hasSharedToFb;
  bool hasViewsFetching;
  dynamic id;
  bool igMediaSharingDisabled;
  dynamic igbioProduct;
  MediaNotesClass imageVersions;
  InlineComposerDisplayCondition inlineComposerDisplayCondition;
  dynamic inlineComposerImpTriggerTime;

  List<dynamic> invitedCoauthorProducers;
  bool isCommentsGifComposerEnabled;
  bool isCutoutStickerAllowed;
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
  bool isVideo;
  bool likeAndViewCountsDisabled;
  dynamic likeCount;
  Location? location;
  MashupInfo? mashupInfo;
  ItemMediaFormat mediaFormat;
  ItemMediaName mediaName;
  MediaNotesClass mediaNotes;
  dynamic mediaType;
  List<dynamic> metaAiSuggestedPrompts;
  MusicMetadata musicMetadata;
  bool openCarouselShowFollowButton;
  dynamic originalHeight;
  dynamic originalWidth;
  List<dynamic> previewComments;
  List<dynamic> productSuggestions;
  ItemProductType productType;
  ProfileGridThumbnailFittingStyle profileGridThumbnailFittingStyle;
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
  List<dynamic> videoStickerLocales;
  bool? canModifyCarousel;
  List<CarouselMedia>? carouselMedia;
  dynamic carouselMediaCount;
  List<dynamic>? carouselMediaIds;
  dynamic carouselMediaPendingPostCount;
  dynamic openCarouselSubmissionState;
  dynamic lat;
  dynamic lng;
  CollabFollowButtonInfo? collabFollowButtonInfo;
  bool? shouldOpenCollabBottomsheetOnFacepileTap;

  DataItem({
    required this.canReply,
    required this.canReshare,
    required this.canSave,
    required this.caption,
    required this.captionIsEdited,
    required this.clipsTabPinnedUserIds,
    required this.coauthorProducerCanSeeOrganicInsights,
    required this.coauthorProducers,
    required this.code,
    required this.commentCount,
    required this.commentInformTreatment,
    required this.commercedynamicegrityReviewDecision,
    required this.crosspostMetadata,
    required this.deletedReason,
    required this.deviceTimestamp,
    required this.fbAggregatedCommentCount,
    required this.fbAggregatedLikeCount,
    required this.fbUserTags,
    required this.fbid,
    required this.featuredProducts,
    required this.filterType,
    required this.fundraiserTag,
    required this.genAiDetectionMethod,
    required this.hasHighRiskGenAiInformTreatment,
    required this.hasLiked,
    required this.hasPrivatelyLiked,
    required this.hasSharedToFb,
    required this.hasViewsFetching,
    required this.id,
    required this.igMediaSharingDisabled,
    required this.igbioProduct,
    required this.imageVersions,
    required this.inlineComposerDisplayCondition,
    required this.inlineComposerImpTriggerTime,
    required this.invitedCoauthorProducers,
    required this.isCommentsGifComposerEnabled,
    required this.isCutoutStickerAllowed,
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
    required this.isVideo,
    required this.likeAndViewCountsDisabled,
    required this.likeCount,
    required this.location,
    this.mashupInfo,
    required this.mediaFormat,
    required this.mediaName,
    required this.mediaNotes,
    required this.mediaType,
    required this.metaAiSuggestedPrompts,
    required this.musicMetadata,
    required this.openCarouselShowFollowButton,
    required this.originalHeight,
    required this.originalWidth,
    required this.previewComments,
    required this.productSuggestions,
    required this.productType,
    required this.profileGridThumbnailFittingStyle,
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
    required this.videoStickerLocales,
    this.canModifyCarousel,
    this.carouselMedia,
    this.carouselMediaCount,
    this.carouselMediaIds,
    this.carouselMediaPendingPostCount,
    this.openCarouselSubmissionState,
    this.lat,
    this.lng,
    this.collabFollowButtonInfo,
    this.shouldOpenCollabBottomsheetOnFacepileTap,
  });

  factory DataItem.fromJson(Map<dynamic, dynamic> json) => DataItem(
        canReply: json["can_reply"],
        canReshare: json["can_reshare"],
        canSave: json["can_save"],
        caption:
            json["caption"] == null ? null : Caption.fromJson(json["caption"]),
        captionIsEdited: json["caption_is_edited"],
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
        commercedynamicegrityReviewDecision:
            json["commerce_dynamicegrity_review_decision"],
        crosspostMetadata:
            CrosspostMetadata.fromJson(json["crosspost_metadata"]),
        deletedReason: json["deleted_reason"],
        deviceTimestamp: json["device_timestamp"],
        fbAggregatedCommentCount: json["fb_aggregated_comment_count"],
        fbAggregatedLikeCount: json["fb_aggregated_like_count"],
        fbUserTags: FbUserTags.fromJson(json["fb_user_tags"]),
        fbid: json["fbid"],
        featuredProducts:
            List<dynamic>.from(json["featured_products"].map((x) => x)),
        filterType: json["filter_type"],
        fundraiserTag: FundraiserTag.fromJson(json["fundraiser_tag"]),
        genAiDetectionMethod:
            GenAiDetectionMethod.fromJson(json["gen_ai_detection_method"]),
        hasHighRiskGenAiInformTreatment:
            json["has_high_risk_gen_ai_inform_treatment"],
        hasLiked: json["has_liked"],
        hasPrivatelyLiked: json["has_privately_liked"],
        hasSharedToFb: json["has_shared_to_fb"],
        hasViewsFetching: json["has_views_fetching"],
        id: json["id"],
        igMediaSharingDisabled: json["ig_media_sharing_disabled"],
        igbioProduct: json["igbio_product"],
        imageVersions: MediaNotesClass.fromJson(json["image_versions"]),
        inlineComposerDisplayCondition: inlineComposerDisplayConditionValues
            .map[json["inline_composer_display_condition"]]!,
        inlineComposerImpTriggerTime: json["inline_composer_imp_trigger_time"],
        invitedCoauthorProducers: List<dynamic>.from(
            json["invited_coauthor_producers"].map((x) => x)),
        isCommentsGifComposerEnabled: json["is_comments_gif_composer_enabled"],
        isCutoutStickerAllowed: json["is_cutout_sticker_allowed"],
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
        isVideo: json["is_video"],
        likeAndViewCountsDisabled: json["like_and_view_counts_disabled"],
        likeCount: json["like_count"],
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
        mashupInfo: json["mashup_info"] == null
            ? null
            : MashupInfo.fromJson(json["mashup_info"]),
        mediaFormat: itemMediaFormatValues.map[json["media_format"]]!,
        mediaName: itemMediaNameValues.map[json["media_name"]]!,
        mediaNotes: MediaNotesClass.fromJson(json["media_notes"]),
        mediaType: json["media_type"],
        metaAiSuggestedPrompts:
            List<dynamic>.from(json["meta_ai_suggested_prompts"].map((x) => x)),
        musicMetadata: MusicMetadata.fromJson(json["music_metadata"]),
        openCarouselShowFollowButton: json["open_carousel_show_follow_button"],
        originalHeight: json["original_height"],
        originalWidth: json["original_width"],
        previewComments:
            List<dynamic>.from(json["preview_comments"].map((x) => x)),
        productSuggestions:
            List<dynamic>.from(json["product_suggestions"].map((x) => x)),
        productType: itemProductTypeValues.map[json["product_type"]]!,
        profileGridThumbnailFittingStyle: profileGridThumbnailFittingStyleValues
            .map[json["profile_grid_thumbnail_fitting_style"]]!,
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
        videoStickerLocales:
            List<dynamic>.from(json["video_sticker_locales"].map((x) => x)),
        canModifyCarousel: json["can_modify_carousel"],
        carouselMedia: json["carousel_media"] == null
            ? []
            : List<CarouselMedia>.from(
                json["carousel_media"]!.map((x) => CarouselMedia.fromJson(x))),
        carouselMediaCount: json["carousel_media_count"],
        carouselMediaIds: json["carousel_media_ids"] == null
            ? []
            : List<dynamic>.from(
                json["carousel_media_ids"]!.map((x) => x?.toDouble())),
        carouselMediaPendingPostCount:
            json["carousel_media_pending_post_count"],
        openCarouselSubmissionState: json["open_carousel_submission_state"],
        lat: json["lat"]?.toDouble(),
        lng: json["lng"]?.toDouble(),
        collabFollowButtonInfo: json["collab_follow_button_info"] == null
            ? null
            : CollabFollowButtonInfo.fromJson(
                json["collab_follow_button_info"]),
        shouldOpenCollabBottomsheetOnFacepileTap:
            json["should_open_collab_bottomsheet_on_facepile_tap"],
      );

  Map<dynamic, dynamic> toJson() => {
        "can_reply": canReply,
        "can_reshare": canReshare,
        "can_save": canSave,
        "caption": caption?.toJson(),
        "caption_is_edited": captionIsEdited,
        "clips_tab_pinned_user_ids":
            List<dynamic>.from(clipsTabPinnedUserIds.map((x) => x)),
        "coauthor_producer_can_see_organic_insights":
            coauthorProducerCanSeeOrganicInsights,
        "coauthor_producers":
            List<dynamic>.from(coauthorProducers.map((x) => x.toJson())),
        "code": code,
        "comment_count": commentCount,
        "comment_inform_treatment": commentInformTreatment.toJson(),
        "commerce_dynamicegrity_review_decision":
            commercedynamicegrityReviewDecision,
        "crosspost_metadata": crosspostMetadata.toJson(),
        "deleted_reason": deletedReason,
        "device_timestamp": deviceTimestamp,
        "fb_aggregated_comment_count": fbAggregatedCommentCount,
        "fb_aggregated_like_count": fbAggregatedLikeCount,
        "fb_user_tags": fbUserTags.toJson(),
        "fbid": fbid,
        "featured_products": List<dynamic>.from(featuredProducts.map((x) => x)),
        "filter_type": filterType,
        "fundraiser_tag": fundraiserTag.toJson(),
        "gen_ai_detection_method": genAiDetectionMethod.toJson(),
        "has_high_risk_gen_ai_inform_treatment":
            hasHighRiskGenAiInformTreatment,
        "has_liked": hasLiked,
        "has_privately_liked": hasPrivatelyLiked,
        "has_shared_to_fb": hasSharedToFb,
        "has_views_fetching": hasViewsFetching,
        "id": id,
        "ig_media_sharing_disabled": igMediaSharingDisabled,
        "igbio_product": igbioProduct,
        "image_versions": imageVersions.toJson(),
        "inline_composer_display_condition":
            inlineComposerDisplayConditionValues
                .reverse[inlineComposerDisplayCondition],
        "inline_composer_imp_trigger_time": inlineComposerImpTriggerTime,
        "dynamicegrity_review_decision": dynamicegrityReviewDecisionValues
            .reverse[dynamicegrityReviewDecision],
        "invited_coauthor_producers":
            List<dynamic>.from(invitedCoauthorProducers.map((x) => x)),
        "is_comments_gif_composer_enabled": isCommentsGifComposerEnabled,
        "is_cutout_sticker_allowed": isCutoutStickerAllowed,
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
        "is_video": isVideo,
        "like_and_view_counts_disabled": likeAndViewCountsDisabled,
        "like_count": likeCount,
        "location": location?.toJson(),
        "mashup_info": mashupInfo?.toJson(),
        "media_format": itemMediaFormatValues.reverse[mediaFormat],
        "media_name": itemMediaNameValues.reverse[mediaName],
        "media_notes": mediaNotes.toJson(),
        "media_type": mediaType,
        "meta_ai_suggested_prompts":
            List<dynamic>.from(metaAiSuggestedPrompts.map((x) => x)),
        "music_metadata": musicMetadata.toJson(),
        "open_carousel_show_follow_button": openCarouselShowFollowButton,
        "original_height": originalHeight,
        "original_width": originalWidth,
        "preview_comments": List<dynamic>.from(previewComments.map((x) => x)),
        "product_suggestions":
            List<dynamic>.from(productSuggestions.map((x) => x)),
        "product_type": itemProductTypeValues.reverse[productType],
        "profile_grid_thumbnail_fitting_style":
            profileGridThumbnailFittingStyleValues
                .reverse[profileGridThumbnailFittingStyle],
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
        "taken_at_date": takenAtDate.toIso8601String(),
        "taken_at_ts": takenAtTs,
        "thumbnail_url": thumbnailUrl,
        "timeline_pinned_user_ids":
            List<dynamic>.from(timelinePinnedUserIds.map((x) => x)),
        "top_likers": List<dynamic>.from(topLikers.map((x) => x)),
        "user": user.toJson(),
        "video_sticker_locales":
            List<dynamic>.from(videoStickerLocales.map((x) => x)),
        "can_modify_carousel": canModifyCarousel,
        "carousel_media": carouselMedia == null
            ? []
            : List<dynamic>.from(carouselMedia!.map((x) => x.toJson())),
        "carousel_media_count": carouselMediaCount,
        "carousel_media_ids": carouselMediaIds == null
            ? []
            : List<dynamic>.from(carouselMediaIds!.map((x) => x)),
        "carousel_media_pending_post_count": carouselMediaPendingPostCount,
        "open_carousel_submission_state": openCarouselSubmissionState,
        "lat": lat,
        "lng": lng,
        "collab_follow_button_info": collabFollowButtonInfo?.toJson(),
        "should_open_collab_bottomsheet_on_facepile_tap":
            shouldOpenCollabBottomsheetOnFacepileTap,
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
  dynamic fbidV2;
  dynamic fullName;
  dynamic id;
  bool isPrivate;
  bool? isUnpublished;
  bool isVerified;
  dynamic profilePicId;
  dynamic profilePicUrl;
  dynamic username;
  bool? isActiveOnTextPostApp;

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
    this.isActiveOnTextPostApp,
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
        isActiveOnTextPostApp: json["is_active_on_text_post_app"],
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
        "is_active_on_text_post_app": isActiveOnTextPostApp,
      };
}

class CarouselMedia {
  dynamic carouselParentId;
  CommercialityStatus commercialityStatus;
  bool explorePivotGrid;
  FbUserTags fbUserTags;
  List<dynamic> featuredProducts;
  dynamic id;
  CarouselMediaImageVersions imageVersions;
  bool isVideo;
  dynamic location;
  CarouselMediaMediaFormat mediaFormat;
  CarouselMediaMediaName mediaName;
  dynamic mediaType;
  dynamic originalHeight;
  dynamic originalWidth;
  List<ProductSuggestion> productSuggestions;
  CarouselMediaProductType productType;
  SharingFrictionInfo sharingFrictionInfo;
  dynamic shopRoutingUserId;
  List<dynamic> sponsorTags;
  List<TaggedUser> taggedUsers;
  dynamic takenAt;
  DateTime takenAtDate;
  dynamic takenAtTs;
  dynamic thumbnailUrl;
  List<dynamic> videoStickerLocales;
  bool? hasAudio;
  dynamic isDashEligible;
  dynamic numberOfQualities;
  dynamic videoCodec;
  dynamic videoDuration;
  dynamic videoUrl;
  List<VideoVersion>? videoVersions;

  CarouselMedia({
    required this.carouselParentId,
    required this.commercialityStatus,
    required this.explorePivotGrid,
    required this.fbUserTags,
    required this.featuredProducts,
    required this.id,
    required this.imageVersions,
    required this.isVideo,
    required this.location,
    required this.mediaFormat,
    required this.mediaName,
    required this.mediaType,
    required this.originalHeight,
    required this.originalWidth,
    required this.productSuggestions,
    required this.productType,
    required this.sharingFrictionInfo,
    required this.shopRoutingUserId,
    required this.sponsorTags,
    required this.taggedUsers,
    required this.takenAt,
    required this.takenAtDate,
    required this.takenAtTs,
    required this.thumbnailUrl,
    required this.videoStickerLocales,
    this.hasAudio,
    this.isDashEligible,
    this.numberOfQualities,
    this.videoCodec,
    required this.videoDuration,
    this.videoUrl,
    this.videoVersions,
  });

  factory CarouselMedia.fromJson(Map<dynamic, dynamic> json) => CarouselMedia(
        carouselParentId: json["carousel_parent_id"],
        commercialityStatus:
            commercialityStatusValues.map[json["commerciality_status"]]!,
        explorePivotGrid: json["explore_pivot_grid"],
        fbUserTags: FbUserTags.fromJson(json["fb_user_tags"]),
        featuredProducts:
            List<dynamic>.from(json["featured_products"].map((x) => x)),
        id: json["id"],
        imageVersions:
            CarouselMediaImageVersions.fromJson(json["image_versions"]),
        isVideo: json["is_video"],
        location: json["location"],
        mediaFormat: carouselMediaMediaFormatValues.map[json["media_format"]]!,
        mediaName: carouselMediaMediaNameValues.map[json["media_name"]]!,
        mediaType: json["media_type"],
        originalHeight: json["original_height"],
        originalWidth: json["original_width"],
        productSuggestions: List<ProductSuggestion>.from(
            json["product_suggestions"]
                .map((x) => ProductSuggestion.fromJson(x))),
        productType: carouselMediaProductTypeValues.map[json["product_type"]]!,
        sharingFrictionInfo:
            SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        shopRoutingUserId: json["shop_routing_user_id"],
        sponsorTags: List<dynamic>.from(json["sponsor_tags"].map((x) => x)),
        taggedUsers: List<TaggedUser>.from(
            json["tagged_users"].map((x) => TaggedUser.fromJson(x))),
        takenAt: json["taken_at"],
        takenAtDate: DateTime.parse(json["taken_at_date"]),
        takenAtTs: json["taken_at_ts"],
        thumbnailUrl: json["thumbnail_url"],
        videoStickerLocales:
            List<dynamic>.from(json["video_sticker_locales"].map((x) => x)),
        hasAudio: json["has_audio"],
        isDashEligible: json["is_dash_eligible"],
        numberOfQualities: json["number_of_qualities"],
        videoCodec: json["video_codec"],
        videoDuration: json["video_duration"]?.toDouble(),
        videoUrl: json["video_url"],
        videoVersions: json["video_versions"] == null
            ? []
            : List<VideoVersion>.from(
                json["video_versions"]!.map((x) => VideoVersion.fromJson(x))),
      );

  Map<dynamic, dynamic> toJson() => {
        "carousel_parent_id": carouselParentId,
        "commerciality_status":
            commercialityStatusValues.reverse[commercialityStatus],
        "explore_pivot_grid": explorePivotGrid,
        "fb_user_tags": fbUserTags.toJson(),
        "featured_products": List<dynamic>.from(featuredProducts.map((x) => x)),
        "id": id,
        "image_versions": imageVersions.toJson(),
        "is_video": isVideo,
        "location": location,
        "media_format": carouselMediaMediaFormatValues.reverse[mediaFormat],
        "media_name": carouselMediaMediaNameValues.reverse[mediaName],
        "media_type": mediaType,
        "original_height": originalHeight,
        "original_width": originalWidth,
        "product_suggestions":
            List<dynamic>.from(productSuggestions.map((x) => x.toJson())),
        "product_type": carouselMediaProductTypeValues.reverse[productType],
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "shop_routing_user_id": shopRoutingUserId,
        "sponsor_tags": List<dynamic>.from(sponsorTags.map((x) => x)),
        "tagged_users": List<dynamic>.from(taggedUsers.map((x) => x.toJson())),
        "taken_at": takenAt,
        "taken_at_date": takenAtDate.toIso8601String(),
        "taken_at_ts": takenAtTs,
        "thumbnail_url": thumbnailUrl,
        "video_sticker_locales":
            List<dynamic>.from(videoStickerLocales.map((x) => x)),
        "has_audio": hasAudio,
        "is_dash_eligible": isDashEligible,
        "number_of_qualities": numberOfQualities,
        "video_codec": videoCodec,
        "video_duration": videoDuration,
        "video_url": videoUrl,
        "video_versions": videoVersions == null
            ? []
            : List<dynamic>.from(videoVersions!.map((x) => x.toJson())),
      };
}

enum CommercialityStatus { NOT_COMMERCIAL }

final commercialityStatusValues =
    EnumValues({"not_commercial": CommercialityStatus.NOT_COMMERCIAL});

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

class CarouselMediaImageVersions {
  List<ImageVersionsItem> items;
  ScrubberSpritesheetInfoCandidates? scrubberSpritesheetInfoCandidates;

  CarouselMediaImageVersions({
    required this.items,
    this.scrubberSpritesheetInfoCandidates,
  });

  factory CarouselMediaImageVersions.fromJson(Map<dynamic, dynamic> json) =>
      CarouselMediaImageVersions(
        items: List<ImageVersionsItem>.from(
            json["items"].map((x) => ImageVersionsItem.fromJson(x))),
        scrubberSpritesheetInfoCandidates:
            json["scrubber_spritesheet_info_candidates"] == null
                ? null
                : ScrubberSpritesheetInfoCandidates.fromJson(
                    json["scrubber_spritesheet_info_candidates"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "scrubber_spritesheet_info_candidates":
            scrubberSpritesheetInfoCandidates?.toJson(),
      };
}

class ImageVersionsItem {
  dynamic height;
  dynamic url;
  dynamic width;

  ImageVersionsItem({
    required this.height,
    required this.url,
    required this.width,
  });

  factory ImageVersionsItem.fromJson(Map<dynamic, dynamic> json) =>
      ImageVersionsItem(
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
  dynamic thumbnailDuration;
  dynamic thumbnailHeight;
  dynamic thumbnailWidth;
  dynamic thumbnailsPerRow;
  dynamic totalThumbnailNumPerSprite;
  dynamic videoLength;

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

enum CarouselMediaMediaFormat { IMAGE, VIDEO }

final carouselMediaMediaFormatValues = EnumValues({
  "image": CarouselMediaMediaFormat.IMAGE,
  "video": CarouselMediaMediaFormat.VIDEO
});

enum CarouselMediaMediaName { ALBUM_ITEM }

final carouselMediaMediaNameValues =
    EnumValues({"album_item": CarouselMediaMediaName.ALBUM_ITEM});

class ProductSuggestion {
  ProductItem productItem;

  ProductSuggestion({
    required this.productItem,
  });

  factory ProductSuggestion.fromJson(Map<dynamic, dynamic> json) =>
      ProductSuggestion(
        productItem: ProductItem.fromJson(json["product_item"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "product_item": productItem.toJson(),
      };
}

class ProductItem {
  CheckoutStyle checkoutStyle;
  dynamic compoundProductId;
  dynamic currentPrice;
  dynamic currentPriceAmount;
  dynamic currentPriceStripped;
  dynamic description;
  dynamic externalUrl;
  dynamic fullPrice;
  dynamic fullPriceAmount;
  dynamic fullPriceStripped;
  bool hasVariants;
  bool isInStock;
  Image mainImage;
  Merchant merchant;
  dynamic name;
  dynamic price;
  dynamic productId;
  dynamic retailerId;
  ReviewStatus reviewStatus;
  Image thumbnailImage;

  ProductItem({
    required this.checkoutStyle,
    required this.compoundProductId,
    required this.currentPrice,
    required this.currentPriceAmount,
    required this.currentPriceStripped,
    required this.description,
    required this.externalUrl,
    required this.fullPrice,
    required this.fullPriceAmount,
    required this.fullPriceStripped,
    required this.hasVariants,
    required this.isInStock,
    required this.mainImage,
    required this.merchant,
    required this.name,
    required this.price,
    required this.productId,
    required this.retailerId,
    required this.reviewStatus,
    required this.thumbnailImage,
  });

  factory ProductItem.fromJson(Map<dynamic, dynamic> json) => ProductItem(
        checkoutStyle: checkoutStyleValues.map[json["checkout_style"]]!,
        compoundProductId: json["compound_product_id"],
        currentPrice: json["current_price"],
        currentPriceAmount: json["current_price_amount"],
        currentPriceStripped: json["current_price_stripped"],
        description: json["description"],
        externalUrl: json["external_url"],
        fullPrice: json["full_price"],
        fullPriceAmount: json["full_price_amount"],
        fullPriceStripped: json["full_price_stripped"],
        hasVariants: json["has_variants"],
        isInStock: json["is_in_stock"],
        mainImage: Image.fromJson(json["main_image"]),
        merchant: Merchant.fromJson(json["merchant"]),
        name: json["name"],
        price: json["price"],
        productId: json["product_id"],
        retailerId: json["retailer_id"],
        reviewStatus: reviewStatusValues.map[json["review_status"]]!,
        thumbnailImage: Image.fromJson(json["thumbnail_image"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "checkout_style": checkoutStyleValues.reverse[checkoutStyle],
        "compound_product_id": compoundProductId,
        "current_price": currentPrice,
        "current_price_amount": currentPriceAmount,
        "current_price_stripped": currentPriceStripped,
        "description": description,
        "external_url": externalUrl,
        "full_price": fullPrice,
        "full_price_amount": fullPriceAmount,
        "full_price_stripped": fullPriceStripped,
        "has_variants": hasVariants,
        "is_in_stock": isInStock,
        "main_image": mainImage.toJson(),
        "merchant": merchant.toJson(),
        "name": name,
        "price": price,
        "product_id": productId,
        "retailer_id": retailerId,
        "review_status": reviewStatusValues.reverse[reviewStatus],
        "thumbnail_image": thumbnailImage.toJson(),
      };
}

enum CheckoutStyle { EXTERNAL_LINK }

final checkoutStyleValues =
    EnumValues({"external_link": CheckoutStyle.EXTERNAL_LINK});

class Image {
  MediaNotesClass imageVersions;

  Image({
    required this.imageVersions,
  });

  factory Image.fromJson(Map<dynamic, dynamic> json) => Image(
        imageVersions: MediaNotesClass.fromJson(json["image_versions"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "image_versions": imageVersions.toJson(),
      };
}

class MediaNotesClass {
  List<ImageVersionsItem> items;

  MediaNotesClass({
    required this.items,
  });

  factory MediaNotesClass.fromJson(Map<dynamic, dynamic> json) =>
      MediaNotesClass(
        items: List<ImageVersionsItem>.from(
            json["items"].map((x) => ImageVersionsItem.fromJson(x))),
      );

  Map<dynamic, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Merchant {
  dynamic id;
  bool isVerified;
  dynamic profilePicUrl;
  MerchantUsername username;

  Merchant({
    required this.id,
    required this.isVerified,
    required this.profilePicUrl,
    required this.username,
  });

  factory Merchant.fromJson(Map<dynamic, dynamic> json) => Merchant(
        id: json["id"],
        isVerified: json["is_verified"],
        profilePicUrl: json["profile_pic_url"],
        username: merchantUsernameValues.map[json["username"]]!,
      );

  Map<dynamic, dynamic> toJson() => {
        "id": id,
        "is_verified": isVerified,
        "profile_pic_url": profilePicUrl,
        "username": merchantUsernameValues.reverse[username],
      };
}

enum MerchantUsername { JDSPORTS }

final merchantUsernameValues =
    EnumValues({"jdsports": MerchantUsername.JDSPORTS});

enum ReviewStatus { APPROVED }

final reviewStatusValues = EnumValues({"approved": ReviewStatus.APPROVED});

enum CarouselMediaProductType { CAROUSEL_ITEM }

final carouselMediaProductTypeValues =
    EnumValues({"carousel_item": CarouselMediaProductType.CAROUSEL_ITEM});

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
        position:
            List<dynamic>.from(json["position"].map((x) => x?.toDouble())),
        showCategoryOfUser: json["show_category_of_user"],
        user: UserElement.fromJson(json["user"]),
        x: json["x"]?.toDouble(),
        y: json["y"]?.toDouble(),
      );

  Map<dynamic, dynamic> toJson() => {
        "position": List<dynamic>.from(position.map((x) => x)),
        "show_category_of_user": showCategoryOfUser,
        "user": user.toJson(),
        "x": x,
        "y": y,
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

enum InlineComposerDisplayCondition { IMPRESSION_TRIGGER }

final inlineComposerDisplayConditionValues = EnumValues(
    {"impression_trigger": InlineComposerDisplayCondition.IMPRESSION_TRIGGER});

enum dynamicegrityReviewDecision { PENDING }

final dynamicegrityReviewDecisionValues =
    EnumValues({"pending": dynamicegrityReviewDecision.PENDING});

class Location {
  dynamic address;
  dynamic city;
  dynamic externalSource;
  dynamic facebookPlacesId;
  dynamic id;
  dynamic lat;
  dynamic lng;
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

enum ItemMediaFormat { ALBUM, IMAGE }

final itemMediaFormatValues = EnumValues(
    {"album": ItemMediaFormat.ALBUM, "image": ItemMediaFormat.IMAGE});

enum ItemMediaName { ALBUM, POST }

final itemMediaNameValues =
    EnumValues({"album": ItemMediaName.ALBUM, "post": ItemMediaName.POST});

class MusicMetadata {
  dynamic audioCanonicalId;
  dynamic audioType;
  dynamic musicInfo;
  dynamic originalSoundInfo;
  dynamic pinnedMediaIds;

  MusicMetadata({
    required this.audioCanonicalId,
    required this.audioType,
    required this.musicInfo,
    required this.originalSoundInfo,
    required this.pinnedMediaIds,
  });

  factory MusicMetadata.fromJson(Map<dynamic, dynamic> json) => MusicMetadata(
        audioCanonicalId: json["audio_canonical_id"],
        audioType: json["audio_type"],
        musicInfo: json["music_info"],
        originalSoundInfo: json["original_sound_info"],
        pinnedMediaIds: json["pinned_media_ids"],
      );

  Map<dynamic, dynamic> toJson() => {
        "audio_canonical_id": audioCanonicalId,
        "audio_type": audioType,
        "music_info": musicInfo,
        "original_sound_info": originalSoundInfo,
        "pinned_media_ids": pinnedMediaIds,
      };
}

enum ItemProductType { CAROUSEL_CONTAINER, FEED }

final itemProductTypeValues = EnumValues({
  "carousel_container": ItemProductType.CAROUSEL_CONTAINER,
  "feed": ItemProductType.FEED
});

enum ProfileGridThumbnailFittingStyle { UNSET }

final profileGridThumbnailFittingStyleValues =
    EnumValues({"UNSET": ProfileGridThumbnailFittingStyle.UNSET});

class PurpleUser {
  List<dynamic> accountBadges;
  dynamic accountType;
  FanClubInfo fanClubInfo;
  dynamic fbidV2;
  bool feedPostReshareDisabled;
  FullName fullName;
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
  UserUsername username;

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
        fullName: fullNameValues.map[json["full_name"]]!,
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
        username: userUsernameValues.map[json["username"]]!,
      );

  Map<dynamic, dynamic> toJson() => {
        "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
        "account_type": accountType,
        "fan_club_info": fanClubInfo.toJson(),
        "fbid_v2": fbidV2,
        "feed_post_reshare_disabled": feedPostReshareDisabled,
        "full_name": fullNameValues.reverse[fullName],
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
        "username": userUsernameValues.reverse[username],
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

enum FullName { TRENT_ALEXANDER_ARNOLD }

final fullNameValues =
    EnumValues({"Trent Alexander-Arnold": FullName.TRENT_ALEXANDER_ARNOLD});

enum UserUsername { TRENTARNOLD66 }

final userUsernameValues =
    EnumValues({"trentarnold66": UserUsername.TRENTARNOLD66});

class EnumValues<T> {
  Map<dynamic, T> map;
  late Map<T, dynamic> reverseMap;

  EnumValues(this.map);

  Map<T, dynamic> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
