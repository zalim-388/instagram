// To parse this JSON data, do
//
//     final postmodel = postmodelFromJson(jsonString);

import 'dart:convert';

Postmodel postmodelFromJson(String str) => Postmodel.fromJson(json.decode(str));

String postmodelToJson(Postmodel data) => json.encode(data.toJson());

class Postmodel {
    dynamic profileGridItems;
    dynamic profileGridItemsCursor;
    dynamic pinnedProfileGridItemsIds;
    dynamic specialEmptyState;
    int numResults;
    bool moreAvailable;
    List<Item> items;
    String nextMaxId;
    User user;
    bool autoLoadMoreEnabled;
    String status;

    Postmodel({
        required this.profileGridItems,
        required this.profileGridItemsCursor,
        required this.pinnedProfileGridItemsIds,
        required this.specialEmptyState,
        required this.numResults,
        required this.moreAvailable,
        required this.items,
        required this.nextMaxId,
        required this.user,
        required this.autoLoadMoreEnabled,
        required this.status,
    });

    factory Postmodel.fromJson(Map<String, dynamic> json) => Postmodel(
        profileGridItems: json["profile_grid_items"],
        profileGridItemsCursor: json["profile_grid_items_cursor"],
        pinnedProfileGridItemsIds: json["pinned_profile_grid_items_ids"],
        specialEmptyState: json["special_empty_state"],
        numResults: json["num_results"],
        moreAvailable: json["more_available"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        nextMaxId: json["next_max_id"],
        user: User.fromJson(json["user"]),
        autoLoadMoreEnabled: json["auto_load_more_enabled"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "profile_grid_items": profileGridItems,
        "profile_grid_items_cursor": profileGridItemsCursor,
        "pinned_profile_grid_items_ids": pinnedProfileGridItemsIds,
        "special_empty_state": specialEmptyState,
        "num_results": numResults,
        "more_available": moreAvailable,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "next_max_id": nextMaxId,
        "user": user.toJson(),
        "auto_load_more_enabled": autoLoadMoreEnabled,
        "status": status,
    };
}

class Item {
    int takenAt;
    String pk;
    String id;
    String fbid;
    int deviceTimestamp;
    bool captionIsEdited;
    String strongId;
    int deletedReason;
    int hasSharedToFb;
    bool hasDelayedMetadata;
    String mezqlToken;
    bool shareCountDisabled;
    bool shouldRequestAds;
    bool isReshareOfTextPostAppMediaInIg;
    bool isVisualReplyCommenterNoticeEnabled;
    bool likeAndViewCountsDisabled;
    bool isPostLiveClipsMedia;
    bool isQuietPost;
    ProfileGridThumbnailFittingStyle profileGridThumbnailFittingStyle;
    bool commentThreadingEnabled;
    bool isUnifiedVideo;
    CommercialityStatus commercialityStatus;
    String clientCacheKey;
    IntegrityReviewDecision integrityReviewDecision;
    bool hasPrivatelyLiked;
    int filterType;
    Tags? usertags;
    bool photoOfYou;
    bool canSeeInsightsAsBrand;
    int mediaType;
    String code;
    Caption? caption;
    SharingFrictionInfo sharingFrictionInfo;
    List<int> timelinePinnedUserIds;
    bool hasViewsFetching;
    String? accessibilityCaption;
    bool? originalMediaHasVisualReplyMedia;
    String displayUri;
    Tags fbUserTags;
    List<User> coauthorProducers;
    bool coauthorProducerCanSeeOrganicInsights;
    List<dynamic> invitedCoauthorProducers;
    bool isInProfileGrid;
    bool profileGridControlEnabled;
    Owner user;
    Owner owner;
    ItemImageVersions2 imageVersions2;
    int originalWidth;
    int originalHeight;
    bool mediaReposterBottomsheetEnabled;
    bool enableMediaNotesProduction;
    ProductType productType;
    bool isPaidPartnership;
    MusicMetadata? musicMetadata;
    String organicTrackingToken;
    bool igMediaSharingDisabled;
    dynamic boostUnavailableIdentifier;
    dynamic boostUnavailableReason;
    List<dynamic> boostUnavailableReasonV2;
    bool subscribeCtaVisible;
    bool isCutoutStickerAllowed;
    GenAiDetectionMethod genAiDetectionMethod;
    int fbAggregatedLikeCount;
    int fbAggregatedCommentCount;
    bool hasHighRiskGenAiInformTreatment;
    bool openCarouselShowFollowButton;
    bool isTaggedMediaSharedToViewerProfileGrid;
    bool shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
    bool isEligibleForMediaNoteRecsNux;
    bool isSocialUfiDisabled;
    bool isEligibleForMetaAiShare;
    List<dynamic> metaAiSuggestedPrompts;
    bool canReply;
    bool isEligibleContentForPostRollAd;
    bool canViewMorePreviewComments;
    List<dynamic> previewComments;
    int commentCount;
    bool hideViewAllCommentEntrypoint;
    InlineComposerDisplayCondition inlineComposerDisplayCondition;
    bool isCommentsGifComposerEnabled;
    CommentInformTreatment commentInformTreatment;
    bool hasLiked;
    int likeCount;
    List<dynamic> videoStickerLocales;
    List<dynamic> clipsTabPinnedUserIds;
    bool canViewerSave;
    bool canViewerReshare;
    dynamic shopRoutingUserId;
    bool isOrganicProductTaggingEligible;
    dynamic igbioProduct;
    List<dynamic> productSuggestions;
    bool isReuseAllowed;
    bool hasMoreComments;
    int maxNumVisiblePreviewComments;
    bool exploreHideComments;
    bool isOpenToPublicSubmission;
    Location? location;
    double? lng;
    double? lat;
    bool? canModifyCarousel;
    String? openCarouselSubmissionState;
    int? carouselMediaCount;
    List<CarouselMedia>? carouselMedia;
    int? carouselMediaPendingPostCount;
    List<String>? carouselMediaIds;
    int? playCount;
    int? igPlayCount;
    List<dynamic>? creatorViewerInsights;
    MediaCroppingInfo? mediaCroppingInfo;
    bool? isArtistPick;
    bool? isThirdPartyDownloadsEligible;
    bool? areRemixesCrosspostable;
    int? isDashEligible;
    String? videoDashManifest;
    int? numberOfQualities;
    List<VideoVersion>? videoVersions;
    double? videoDuration;
    bool? hasAudio;
    ClipsMetadata? clipsMetadata;
    List<SponsorTag>? sponsorTags;

    Item({
        required this.takenAt,
        required this.pk,
        required this.id,
        required this.fbid,
        required this.deviceTimestamp,
        required this.captionIsEdited,
        required this.strongId,
        required this.deletedReason,
        required this.hasSharedToFb,
        required this.hasDelayedMetadata,
        required this.mezqlToken,
        required this.shareCountDisabled,
        required this.shouldRequestAds,
        required this.isReshareOfTextPostAppMediaInIg,
        required this.isVisualReplyCommenterNoticeEnabled,
        required this.likeAndViewCountsDisabled,
        required this.isPostLiveClipsMedia,
        required this.isQuietPost,
        required this.profileGridThumbnailFittingStyle,
        required this.commentThreadingEnabled,
        required this.isUnifiedVideo,
        required this.commercialityStatus,
        required this.clientCacheKey,
        required this.integrityReviewDecision,
        required this.hasPrivatelyLiked,
        required this.filterType,
        this.usertags,
        required this.photoOfYou,
        required this.canSeeInsightsAsBrand,
        required this.mediaType,
        required this.code,
        required this.caption,
        required this.sharingFrictionInfo,
        required this.timelinePinnedUserIds,
        required this.hasViewsFetching,
        this.accessibilityCaption,
        this.originalMediaHasVisualReplyMedia,
        required this.displayUri,
        required this.fbUserTags,
        required this.coauthorProducers,
        required this.coauthorProducerCanSeeOrganicInsights,
        required this.invitedCoauthorProducers,
        required this.isInProfileGrid,
        required this.profileGridControlEnabled,
        required this.user,
        required this.owner,
        required this.imageVersions2,
        required this.originalWidth,
        required this.originalHeight,
        required this.mediaReposterBottomsheetEnabled,
        required this.enableMediaNotesProduction,
        required this.productType,
        required this.isPaidPartnership,
        required this.musicMetadata,
        required this.organicTrackingToken,
        required this.igMediaSharingDisabled,
        required this.boostUnavailableIdentifier,
        required this.boostUnavailableReason,
        required this.boostUnavailableReasonV2,
        required this.subscribeCtaVisible,
        required this.isCutoutStickerAllowed,
        required this.genAiDetectionMethod,
        required this.fbAggregatedLikeCount,
        required this.fbAggregatedCommentCount,
        required this.hasHighRiskGenAiInformTreatment,
        required this.openCarouselShowFollowButton,
        required this.isTaggedMediaSharedToViewerProfileGrid,
        required this.shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
        required this.isEligibleForMediaNoteRecsNux,
        required this.isSocialUfiDisabled,
        required this.isEligibleForMetaAiShare,
        required this.metaAiSuggestedPrompts,
        required this.canReply,
        required this.isEligibleContentForPostRollAd,
        required this.canViewMorePreviewComments,
        required this.previewComments,
        required this.commentCount,
        required this.hideViewAllCommentEntrypoint,
        required this.inlineComposerDisplayCondition,
        required this.isCommentsGifComposerEnabled,
        required this.commentInformTreatment,
        required this.hasLiked,
        required this.likeCount,
        required this.videoStickerLocales,
        required this.clipsTabPinnedUserIds,
        required this.canViewerSave,
        required this.canViewerReshare,
        required this.shopRoutingUserId,
        required this.isOrganicProductTaggingEligible,
        required this.igbioProduct,
        required this.productSuggestions,
        required this.isReuseAllowed,
        required this.hasMoreComments,
        required this.maxNumVisiblePreviewComments,
        required this.exploreHideComments,
        required this.isOpenToPublicSubmission,
        this.location,
        this.lng,
        this.lat,
        this.canModifyCarousel,
        this.openCarouselSubmissionState,
        this.carouselMediaCount,
        this.carouselMedia,
        this.carouselMediaPendingPostCount,
        this.carouselMediaIds,
        this.playCount,
        this.igPlayCount,
        this.creatorViewerInsights,
        this.mediaCroppingInfo,
        this.isArtistPick,
        this.isThirdPartyDownloadsEligible,
        this.areRemixesCrosspostable,
        this.isDashEligible,
        this.videoDashManifest,
        this.numberOfQualities,
        this.videoVersions,
        this.videoDuration,
        this.hasAudio,
        this.clipsMetadata,
        this.sponsorTags,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        takenAt: json["taken_at"],
        pk: json["pk"],
        id: json["id"],
        fbid: json["fbid"],
        deviceTimestamp: json["device_timestamp"],
        captionIsEdited: json["caption_is_edited"],
        strongId: json["strong_id__"],
        deletedReason: json["deleted_reason"],
        hasSharedToFb: json["has_shared_to_fb"],
        hasDelayedMetadata: json["has_delayed_metadata"],
        mezqlToken: json["mezql_token"],
        shareCountDisabled: json["share_count_disabled"],
        shouldRequestAds: json["should_request_ads"],
        isReshareOfTextPostAppMediaInIg: json["is_reshare_of_text_post_app_media_in_ig"],
        isVisualReplyCommenterNoticeEnabled: json["is_visual_reply_commenter_notice_enabled"],
        likeAndViewCountsDisabled: json["like_and_view_counts_disabled"],
        isPostLiveClipsMedia: json["is_post_live_clips_media"],
        isQuietPost: json["is_quiet_post"],
        profileGridThumbnailFittingStyle: profileGridThumbnailFittingStyleValues.map[json["profile_grid_thumbnail_fitting_style"]]!,
        commentThreadingEnabled: json["comment_threading_enabled"],
        isUnifiedVideo: json["is_unified_video"],
        commercialityStatus: commercialityStatusValues.map[json["commerciality_status"]]!,
        clientCacheKey: json["client_cache_key"],
        integrityReviewDecision: integrityReviewDecisionValues.map[json["integrity_review_decision"]]!,
        hasPrivatelyLiked: json["has_privately_liked"],
        filterType: json["filter_type"],
        usertags: json["usertags"] == null ? null : Tags.fromJson(json["usertags"]),
        photoOfYou: json["photo_of_you"],
        canSeeInsightsAsBrand: json["can_see_insights_as_brand"],
        mediaType: json["media_type"],
        code: json["code"],
        caption: json["caption"] == null ? null : Caption.fromJson(json["caption"]),
        sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        timelinePinnedUserIds: List<int>.from(json["timeline_pinned_user_ids"].map((x) => x)),
        hasViewsFetching: json["has_views_fetching"],
        accessibilityCaption: json["accessibility_caption"],
        originalMediaHasVisualReplyMedia: json["original_media_has_visual_reply_media"],
        displayUri: json["display_uri"],
        fbUserTags: Tags.fromJson(json["fb_user_tags"]),
        coauthorProducers: List<User>.from(json["coauthor_producers"].map((x) => User.fromJson(x))),
        coauthorProducerCanSeeOrganicInsights: json["coauthor_producer_can_see_organic_insights"],
        invitedCoauthorProducers: List<dynamic>.from(json["invited_coauthor_producers"].map((x) => x)),
        isInProfileGrid: json["is_in_profile_grid"],
        profileGridControlEnabled: json["profile_grid_control_enabled"],
        user: Owner.fromJson(json["user"]),
        owner: Owner.fromJson(json["owner"]),
        imageVersions2: ItemImageVersions2.fromJson(json["image_versions2"]),
        originalWidth: json["original_width"],
        originalHeight: json["original_height"],
        mediaReposterBottomsheetEnabled: json["media_reposter_bottomsheet_enabled"],
        enableMediaNotesProduction: json["enable_media_notes_production"],
        productType: productTypeValues.map[json["product_type"]]!,
        isPaidPartnership: json["is_paid_partnership"],
        musicMetadata: json["music_metadata"] == null ? null : MusicMetadata.fromJson(json["music_metadata"]),
        organicTrackingToken: json["organic_tracking_token"],
        igMediaSharingDisabled: json["ig_media_sharing_disabled"],
        boostUnavailableIdentifier: json["boost_unavailable_identifier"],
        boostUnavailableReason: json["boost_unavailable_reason"],
        boostUnavailableReasonV2: List<dynamic>.from(json["boost_unavailable_reason_v2"].map((x) => x)),
        subscribeCtaVisible: json["subscribe_cta_visible"],
        isCutoutStickerAllowed: json["is_cutout_sticker_allowed"],
        genAiDetectionMethod: GenAiDetectionMethod.fromJson(json["gen_ai_detection_method"]),
        fbAggregatedLikeCount: json["fb_aggregated_like_count"],
        fbAggregatedCommentCount: json["fb_aggregated_comment_count"],
        hasHighRiskGenAiInformTreatment: json["has_high_risk_gen_ai_inform_treatment"],
        openCarouselShowFollowButton: json["open_carousel_show_follow_button"],
        isTaggedMediaSharedToViewerProfileGrid: json["is_tagged_media_shared_to_viewer_profile_grid"],
        shouldShowAuthorPogForTaggedMediaSharedToProfileGrid: json["should_show_author_pog_for_tagged_media_shared_to_profile_grid"],
        isEligibleForMediaNoteRecsNux: json["is_eligible_for_media_note_recs_nux"],
        isSocialUfiDisabled: json["is_social_ufi_disabled"],
        isEligibleForMetaAiShare: json["is_eligible_for_meta_ai_share"],
        metaAiSuggestedPrompts: List<dynamic>.from(json["meta_ai_suggested_prompts"].map((x) => x)),
        canReply: json["can_reply"],
        isEligibleContentForPostRollAd: json["is_eligible_content_for_post_roll_ad"],
        canViewMorePreviewComments: json["can_view_more_preview_comments"],
        previewComments: List<dynamic>.from(json["preview_comments"].map((x) => x)),
        commentCount: json["comment_count"],
        hideViewAllCommentEntrypoint: json["hide_view_all_comment_entrypoint"],
        inlineComposerDisplayCondition: inlineComposerDisplayConditionValues.map[json["inline_composer_display_condition"]]!,
        isCommentsGifComposerEnabled: json["is_comments_gif_composer_enabled"],
        commentInformTreatment: CommentInformTreatment.fromJson(json["comment_inform_treatment"]),
        hasLiked: json["has_liked"],
        likeCount: json["like_count"],
        videoStickerLocales: List<dynamic>.from(json["video_sticker_locales"].map((x) => x)),
        clipsTabPinnedUserIds: List<dynamic>.from(json["clips_tab_pinned_user_ids"].map((x) => x)),
        canViewerSave: json["can_viewer_save"],
        canViewerReshare: json["can_viewer_reshare"],
        shopRoutingUserId: json["shop_routing_user_id"],
        isOrganicProductTaggingEligible: json["is_organic_product_tagging_eligible"],
        igbioProduct: json["igbio_product"],
        productSuggestions: List<dynamic>.from(json["product_suggestions"].map((x) => x)),
        isReuseAllowed: json["is_reuse_allowed"],
        hasMoreComments: json["has_more_comments"],
        maxNumVisiblePreviewComments: json["max_num_visible_preview_comments"],
        exploreHideComments: json["explore_hide_comments"],
        isOpenToPublicSubmission: json["is_open_to_public_submission"],
        location: json["location"] == null ? null : Location.fromJson(json["location"]),
        lng: json["lng"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
        canModifyCarousel: json["can_modify_carousel"],
        openCarouselSubmissionState: json["open_carousel_submission_state"],
        carouselMediaCount: json["carousel_media_count"],
        carouselMedia: json["carousel_media"] == null ? [] : List<CarouselMedia>.from(json["carousel_media"]!.map((x) => CarouselMedia.fromJson(x))),
        carouselMediaPendingPostCount: json["carousel_media_pending_post_count"],
        carouselMediaIds: json["carousel_media_ids"] == null ? [] : List<String>.from(json["carousel_media_ids"]!.map((x) => x)),
        playCount: json["play_count"],
        igPlayCount: json["ig_play_count"],
        creatorViewerInsights: json["creator_viewer_insights"] == null ? [] : List<dynamic>.from(json["creator_viewer_insights"]!.map((x) => x)),
        mediaCroppingInfo: json["media_cropping_info"] == null ? null : MediaCroppingInfo.fromJson(json["media_cropping_info"]),
        isArtistPick: json["is_artist_pick"],
        isThirdPartyDownloadsEligible: json["is_third_party_downloads_eligible"],
        areRemixesCrosspostable: json["are_remixes_crosspostable"],
        isDashEligible: json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"],
        numberOfQualities: json["number_of_qualities"],
        videoVersions: json["video_versions"] == null ? [] : List<VideoVersion>.from(json["video_versions"]!.map((x) => VideoVersion.fromJson(x))),
        videoDuration: json["video_duration"]?.toDouble(),
        hasAudio: json["has_audio"],
        clipsMetadata: json["clips_metadata"] == null ? null : ClipsMetadata.fromJson(json["clips_metadata"]),
        sponsorTags: json["sponsor_tags"] == null ? [] : List<SponsorTag>.from(json["sponsor_tags"]!.map((x) => SponsorTag.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "taken_at": takenAt,
        "pk": pk,
        "id": id,
        "fbid": fbid,
        "device_timestamp": deviceTimestamp,
        "caption_is_edited": captionIsEdited,
        "strong_id__": strongId,
        "deleted_reason": deletedReason,
        "has_shared_to_fb": hasSharedToFb,
        "has_delayed_metadata": hasDelayedMetadata,
        "mezql_token": mezqlToken,
        "share_count_disabled": shareCountDisabled,
        "should_request_ads": shouldRequestAds,
        "is_reshare_of_text_post_app_media_in_ig": isReshareOfTextPostAppMediaInIg,
        "is_visual_reply_commenter_notice_enabled": isVisualReplyCommenterNoticeEnabled,
        "like_and_view_counts_disabled": likeAndViewCountsDisabled,
        "is_post_live_clips_media": isPostLiveClipsMedia,
        "is_quiet_post": isQuietPost,
        "profile_grid_thumbnail_fitting_style": profileGridThumbnailFittingStyleValues.reverse[profileGridThumbnailFittingStyle],
        "comment_threading_enabled": commentThreadingEnabled,
        "is_unified_video": isUnifiedVideo,
        "commerciality_status": commercialityStatusValues.reverse[commercialityStatus],
        "client_cache_key": clientCacheKey,
        "integrity_review_decision": integrityReviewDecisionValues.reverse[integrityReviewDecision],
        "has_privately_liked": hasPrivatelyLiked,
        "filter_type": filterType,
        "usertags": usertags?.toJson(),
        "photo_of_you": photoOfYou,
        "can_see_insights_as_brand": canSeeInsightsAsBrand,
        "media_type": mediaType,
        "code": code,
        "caption": caption?.toJson(),
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "timeline_pinned_user_ids": List<dynamic>.from(timelinePinnedUserIds.map((x) => x)),
        "has_views_fetching": hasViewsFetching,
        "accessibility_caption": accessibilityCaption,
        "original_media_has_visual_reply_media": originalMediaHasVisualReplyMedia,
        "display_uri": displayUri,
        "fb_user_tags": fbUserTags.toJson(),
        "coauthor_producers": List<dynamic>.from(coauthorProducers.map((x) => x.toJson())),
        "coauthor_producer_can_see_organic_insights": coauthorProducerCanSeeOrganicInsights,
        "invited_coauthor_producers": List<dynamic>.from(invitedCoauthorProducers.map((x) => x)),
        "is_in_profile_grid": isInProfileGrid,
        "profile_grid_control_enabled": profileGridControlEnabled,
        "user": user.toJson(),
        "owner": owner.toJson(),
        "image_versions2": imageVersions2.toJson(),
        "original_width": originalWidth,
        "original_height": originalHeight,
        "media_reposter_bottomsheet_enabled": mediaReposterBottomsheetEnabled,
        "enable_media_notes_production": enableMediaNotesProduction,
        "product_type": productTypeValues.reverse[productType],
        "is_paid_partnership": isPaidPartnership,
        "music_metadata": musicMetadata?.toJson(),
        "organic_tracking_token": organicTrackingToken,
        "ig_media_sharing_disabled": igMediaSharingDisabled,
        "boost_unavailable_identifier": boostUnavailableIdentifier,
        "boost_unavailable_reason": boostUnavailableReason,
        "boost_unavailable_reason_v2": List<dynamic>.from(boostUnavailableReasonV2.map((x) => x)),
        "subscribe_cta_visible": subscribeCtaVisible,
        "is_cutout_sticker_allowed": isCutoutStickerAllowed,
        "gen_ai_detection_method": genAiDetectionMethod.toJson(),
        "fb_aggregated_like_count": fbAggregatedLikeCount,
        "fb_aggregated_comment_count": fbAggregatedCommentCount,
        "has_high_risk_gen_ai_inform_treatment": hasHighRiskGenAiInformTreatment,
        "open_carousel_show_follow_button": openCarouselShowFollowButton,
        "is_tagged_media_shared_to_viewer_profile_grid": isTaggedMediaSharedToViewerProfileGrid,
        "should_show_author_pog_for_tagged_media_shared_to_profile_grid": shouldShowAuthorPogForTaggedMediaSharedToProfileGrid,
        "is_eligible_for_media_note_recs_nux": isEligibleForMediaNoteRecsNux,
        "is_social_ufi_disabled": isSocialUfiDisabled,
        "is_eligible_for_meta_ai_share": isEligibleForMetaAiShare,
        "meta_ai_suggested_prompts": List<dynamic>.from(metaAiSuggestedPrompts.map((x) => x)),
        "can_reply": canReply,
        "is_eligible_content_for_post_roll_ad": isEligibleContentForPostRollAd,
        "can_view_more_preview_comments": canViewMorePreviewComments,
        "preview_comments": List<dynamic>.from(previewComments.map((x) => x)),
        "comment_count": commentCount,
        "hide_view_all_comment_entrypoint": hideViewAllCommentEntrypoint,
        "inline_composer_display_condition": inlineComposerDisplayConditionValues.reverse[inlineComposerDisplayCondition],
        "is_comments_gif_composer_enabled": isCommentsGifComposerEnabled,
        "comment_inform_treatment": commentInformTreatment.toJson(),
        "has_liked": hasLiked,
        "like_count": likeCount,
        "video_sticker_locales": List<dynamic>.from(videoStickerLocales.map((x) => x)),
        "clips_tab_pinned_user_ids": List<dynamic>.from(clipsTabPinnedUserIds.map((x) => x)),
        "can_viewer_save": canViewerSave,
        "can_viewer_reshare": canViewerReshare,
        "shop_routing_user_id": shopRoutingUserId,
        "is_organic_product_tagging_eligible": isOrganicProductTaggingEligible,
        "igbio_product": igbioProduct,
        "product_suggestions": List<dynamic>.from(productSuggestions.map((x) => x)),
        "is_reuse_allowed": isReuseAllowed,
        "has_more_comments": hasMoreComments,
        "max_num_visible_preview_comments": maxNumVisiblePreviewComments,
        "explore_hide_comments": exploreHideComments,
        "is_open_to_public_submission": isOpenToPublicSubmission,
        "location": location?.toJson(),
        "lng": lng,
        "lat": lat,
        "can_modify_carousel": canModifyCarousel,
        "open_carousel_submission_state": openCarouselSubmissionState,
        "carousel_media_count": carouselMediaCount,
        "carousel_media": carouselMedia == null ? [] : List<dynamic>.from(carouselMedia!.map((x) => x.toJson())),
        "carousel_media_pending_post_count": carouselMediaPendingPostCount,
        "carousel_media_ids": carouselMediaIds == null ? [] : List<dynamic>.from(carouselMediaIds!.map((x) => x)),
        "play_count": playCount,
        "ig_play_count": igPlayCount,
        "creator_viewer_insights": creatorViewerInsights == null ? [] : List<dynamic>.from(creatorViewerInsights!.map((x) => x)),
        "media_cropping_info": mediaCroppingInfo?.toJson(),
        "is_artist_pick": isArtistPick,
        "is_third_party_downloads_eligible": isThirdPartyDownloadsEligible,
        "are_remixes_crosspostable": areRemixesCrosspostable,
        "is_dash_eligible": isDashEligible,
        "video_dash_manifest": videoDashManifest,
        "number_of_qualities": numberOfQualities,
        "video_versions": videoVersions == null ? [] : List<dynamic>.from(videoVersions!.map((x) => x.toJson())),
        "video_duration": videoDuration,
        "has_audio": hasAudio,
        "clips_metadata": clipsMetadata?.toJson(),
        "sponsor_tags": sponsorTags == null ? [] : List<dynamic>.from(sponsorTags!.map((x) => x.toJson())),
    };
}

class Caption {
    int bitFlags;
    int createdAt;
    int createdAtUtc;
    bool didReportAsSpam;
    bool isRankedComment;
    String pk;
    bool shareEnabled;
    ContentType contentType;
    String mediaId;
    Status status;
    int type;
    String userId;
    String strongId;
    String text;
    User user;
    bool isCovered;
    int privateReplyStatus;

    Caption({
        required this.bitFlags,
        required this.createdAt,
        required this.createdAtUtc,
        required this.didReportAsSpam,
        required this.isRankedComment,
        required this.pk,
        required this.shareEnabled,
        required this.contentType,
        required this.mediaId,
        required this.status,
        required this.type,
        required this.userId,
        required this.strongId,
        required this.text,
        required this.user,
        required this.isCovered,
        required this.privateReplyStatus,
    });

    factory Caption.fromJson(Map<String, dynamic> json) => Caption(
        bitFlags: json["bit_flags"],
        createdAt: json["created_at"],
        createdAtUtc: json["created_at_utc"],
        didReportAsSpam: json["did_report_as_spam"],
        isRankedComment: json["is_ranked_comment"],
        pk: json["pk"],
        shareEnabled: json["share_enabled"],
        contentType: contentTypeValues.map[json["content_type"]]!,
        mediaId: json["media_id"],
        status: statusValues.map[json["status"]]!,
        type: json["type"],
        userId: json["user_id"],
        strongId: json["strong_id__"],
        text: json["text"],
        user: User.fromJson(json["user"]),
        isCovered: json["is_covered"],
        privateReplyStatus: json["private_reply_status"],
    );

    Map<String, dynamic> toJson() => {
        "bit_flags": bitFlags,
        "created_at": createdAt,
        "created_at_utc": createdAtUtc,
        "did_report_as_spam": didReportAsSpam,
        "is_ranked_comment": isRankedComment,
        "pk": pk,
        "share_enabled": shareEnabled,
        "content_type": contentTypeValues.reverse[contentType],
        "media_id": mediaId,
        "status": statusValues.reverse[status],
        "type": type,
        "user_id": userId,
        "strong_id__": strongId,
        "text": text,
        "user": user.toJson(),
        "is_covered": isCovered,
        "private_reply_status": privateReplyStatus,
    };
}

enum ContentType {
    COMMENT
}

final contentTypeValues = EnumValues({
    "comment": ContentType.COMMENT
});

enum Status {
    ACTIVE
}

final statusValues = EnumValues({
    "Active": Status.ACTIVE
});

class User {
    String pk;
    String pkId;
    String id;
    String username;
    String fullName;
    bool isPrivate;
    bool? isUnpublished;
    String strongId;
    String? fbidV2;
    bool isVerified;
    String profilePicId;
    String profilePicUrl;
    int? followerCount;
    bool? isActiveOnTextPostApp;
    String? profileGridDisplayType;

    User({
        required this.pk,
        required this.pkId,
        required this.id,
        required this.username,
        required this.fullName,
        required this.isPrivate,
        this.isUnpublished,
        required this.strongId,
        this.fbidV2,
        required this.isVerified,
        required this.profilePicId,
        required this.profilePicUrl,
        this.followerCount,
        this.isActiveOnTextPostApp,
        this.profileGridDisplayType,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        pk: json["pk"],
        pkId: json["pk_id"],
        id: json["id"],
        username: json["username"],
        fullName: json["full_name"],
        isPrivate: json["is_private"],
        isUnpublished: json["is_unpublished"],
        strongId: json["strong_id__"],
        fbidV2: json["fbid_v2"],
        isVerified: json["is_verified"],
        profilePicId: json["profile_pic_id"],
        profilePicUrl: json["profile_pic_url"],
        followerCount: json["follower_count"],
        isActiveOnTextPostApp: json["is_active_on_text_post_app"],
        profileGridDisplayType: json["profile_grid_display_type"],
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "pk_id": pkId,
        "id": id,
        "username": username,
        "full_name": fullName,
        "is_private": isPrivate,
        "is_unpublished": isUnpublished,
        "strong_id__": strongId,
        "fbid_v2": fbidV2,
        "is_verified": isVerified,
        "profile_pic_id": profilePicId,
        "profile_pic_url": profilePicUrl,
        "follower_count": followerCount,
        "is_active_on_text_post_app": isActiveOnTextPostApp,
        "profile_grid_display_type": profileGridDisplayType,
    };
}

class CarouselMedia {
    String id;
    bool explorePivotGrid;
    String carouselParentId;
    String strongId;
    String pk;
    CommercialityStatus commercialityStatus;
    int takenAt;
    String productType;
    int mediaType;
    String? accessibilityCaption;
    CarouselMediaImageVersions2 imageVersions2;
    int originalWidth;
    int originalHeight;
    String preview;
    Tags? usertags;
    Tags fbUserTags;
    dynamic shopRoutingUserId;
    SharingFrictionInfo sharingFrictionInfo;
    List<dynamic> productSuggestions;
    List<dynamic> videoStickerLocales;
    String displayUri;
    List<VideoVersion>? videoVersions;
    double? videoDuration;
    bool? hasAudio;
    int? isDashEligible;
    String? videoDashManifest;
    int? numberOfQualities;

    CarouselMedia({
        required this.id,
        required this.explorePivotGrid,
        required this.carouselParentId,
        required this.strongId,
        required this.pk,
        required this.commercialityStatus,
        required this.takenAt,
        required this.productType,
        required this.mediaType,
        this.accessibilityCaption,
        required this.imageVersions2,
        required this.originalWidth,
        required this.originalHeight,
        required this.preview,
        this.usertags,
        required this.fbUserTags,
        required this.shopRoutingUserId,
        required this.sharingFrictionInfo,
        required this.productSuggestions,
        required this.videoStickerLocales,
        required this.displayUri,
        this.videoVersions,
        this.videoDuration,
        this.hasAudio,
        this.isDashEligible,
        this.videoDashManifest,
        this.numberOfQualities,
    });

    factory CarouselMedia.fromJson(Map<String, dynamic> json) => CarouselMedia(
        id: json["id"],
        explorePivotGrid: json["explore_pivot_grid"],
        carouselParentId: json["carousel_parent_id"],
        strongId: json["strong_id__"],
        pk: json["pk"],
        commercialityStatus: commercialityStatusValues.map[json["commerciality_status"]]!,
        takenAt: json["taken_at"],
        productType: json["product_type"],
        mediaType: json["media_type"],
        accessibilityCaption: json["accessibility_caption"],
        imageVersions2: CarouselMediaImageVersions2.fromJson(json["image_versions2"]),
        originalWidth: json["original_width"],
        originalHeight: json["original_height"],
        preview: json["preview"],
        usertags: json["usertags"] == null ? null : Tags.fromJson(json["usertags"]),
        fbUserTags: Tags.fromJson(json["fb_user_tags"]),
        shopRoutingUserId: json["shop_routing_user_id"],
        sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        productSuggestions: List<dynamic>.from(json["product_suggestions"].map((x) => x)),
        videoStickerLocales: List<dynamic>.from(json["video_sticker_locales"].map((x) => x)),
        displayUri: json["display_uri"],
        videoVersions: json["video_versions"] == null ? [] : List<VideoVersion>.from(json["video_versions"]!.map((x) => VideoVersion.fromJson(x))),
        videoDuration: json["video_duration"]?.toDouble(),
        hasAudio: json["has_audio"],
        isDashEligible: json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"],
        numberOfQualities: json["number_of_qualities"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "explore_pivot_grid": explorePivotGrid,
        "carousel_parent_id": carouselParentId,
        "strong_id__": strongId,
        "pk": pk,
        "commerciality_status": commercialityStatusValues.reverse[commercialityStatus],
        "taken_at": takenAt,
        "product_type": productType,
        "media_type": mediaType,
        "accessibility_caption": accessibilityCaption,
        "image_versions2": imageVersions2.toJson(),
        "original_width": originalWidth,
        "original_height": originalHeight,
        "preview": preview,
        "usertags": usertags?.toJson(),
        "fb_user_tags": fbUserTags.toJson(),
        "shop_routing_user_id": shopRoutingUserId,
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "product_suggestions": List<dynamic>.from(productSuggestions.map((x) => x)),
        "video_sticker_locales": List<dynamic>.from(videoStickerLocales.map((x) => x)),
        "display_uri": displayUri,
        "video_versions": videoVersions == null ? [] : List<dynamic>.from(videoVersions!.map((x) => x.toJson())),
        "video_duration": videoDuration,
        "has_audio": hasAudio,
        "is_dash_eligible": isDashEligible,
        "video_dash_manifest": videoDashManifest,
        "number_of_qualities": numberOfQualities,
    };
}

enum CommercialityStatus {
    NOT_COMMERCIAL
}

final commercialityStatusValues = EnumValues({
    "not_commercial": CommercialityStatus.NOT_COMMERCIAL
});

class Tags {
    List<In> tagsIn;

    Tags({
        required this.tagsIn,
    });

    factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        tagsIn: List<In>.from(json["in"].map((x) => In.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "in": List<dynamic>.from(tagsIn.map((x) => x.toJson())),
    };
}

class In {
    List<double> position;
    User user;

    In({
        required this.position,
        required this.user,
    });

    factory In.fromJson(Map<String, dynamic> json) => In(
        position: List<double>.from(json["position"].map((x) => x?.toDouble())),
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "position": List<dynamic>.from(position.map((x) => x)),
        "user": user.toJson(),
    };
}

class CarouselMediaImageVersions2 {
    List<HdProfilePicUrlInfo> candidates;

    CarouselMediaImageVersions2({
        required this.candidates,
    });

    factory CarouselMediaImageVersions2.fromJson(Map<String, dynamic> json) => CarouselMediaImageVersions2(
        candidates: List<HdProfilePicUrlInfo>.from(json["candidates"].map((x) => HdProfilePicUrlInfo.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
    };
}

class HdProfilePicUrlInfo {
    int height;
    String url;
    int width;

    HdProfilePicUrlInfo({
        required this.height,
        required this.url,
        required this.width,
    });

    factory HdProfilePicUrlInfo.fromJson(Map<String, dynamic> json) => HdProfilePicUrlInfo(
        height: json["height"],
        url: json["url"],
        width: json["width"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "url": url,
        "width": width,
    };
}

class SharingFrictionInfo {
    dynamic bloksAppUrl;
    bool shouldHaveSharingFriction;
    dynamic sharingFrictionPayload;

    SharingFrictionInfo({
        required this.bloksAppUrl,
        required this.shouldHaveSharingFriction,
        required this.sharingFrictionPayload,
    });

    factory SharingFrictionInfo.fromJson(Map<String, dynamic> json) => SharingFrictionInfo(
        bloksAppUrl: json["bloks_app_url"],
        shouldHaveSharingFriction: json["should_have_sharing_friction"],
        sharingFrictionPayload: json["sharing_friction_payload"],
    );

    Map<String, dynamic> toJson() => {
        "bloks_app_url": bloksAppUrl,
        "should_have_sharing_friction": shouldHaveSharingFriction,
        "sharing_friction_payload": sharingFrictionPayload,
    };
}

class VideoVersion {
    dynamic bandwidth;
    int height;
    int type;
    String url;
    int width;

    VideoVersion({
        required this.bandwidth,
        required this.height,
        required this.type,
        required this.url,
        required this.width,
    });

    factory VideoVersion.fromJson(Map<String, dynamic> json) => VideoVersion(
        bandwidth: json["bandwidth"],
        height: json["height"],
        type: json["type"],
        url: json["url"],
        width: json["width"],
    );

    Map<String, dynamic> toJson() => {
        "bandwidth": bandwidth,
        "height": height,
        "type": type,
        "url": url,
        "width": width,
    };
}

class ClipsMetadata {
    dynamic breakingContentInfo;
    dynamic breakingCreatorInfo;
    ProductType clipsCreationEntryPoint;
    dynamic featuredLabel;
    bool isPublicChatWelcomeVideo;
    bool isSharedToFb;
    int professionalClipsUpsellType;
    dynamic reelsOnTheRiseInfo;
    dynamic showTips;
    AchievementsInfo achievementsInfo;
    AdditionalAudioInfo additionalAudioInfo;
    dynamic assetRecommendationInfo;
    AudioRankingInfo audioRankingInfo;
    String audioType;
    BrandedContentTagInfo brandedContentTagInfo;
    dynamic challengeInfo;
    ContentAppreciationInfo contentAppreciationInfo;
    dynamic contextualHighlightInfo;
    List<dynamic> cutoutStickerInfo;
    bool disableUseInClipsClientCache;
    dynamic externalMediaInfo;
    dynamic isFanClubPromoVideo;
    MashupInfo mashupInfo;
    dynamic merchandisingPillInfo;
    String musicCanonicalId;
    MusicInfo? musicInfo;
    dynamic nuxInfo;
    OriginalSoundInfo? originalSoundInfo;
    dynamic originalityInfo;
    dynamic reusableTextAttributeString;
    dynamic reusableTextInfo;
    dynamic shoppingInfo;
    bool showAchievements;
    dynamic templateInfo;
    dynamic viewerInteractionSettings;

    ClipsMetadata({
        required this.breakingContentInfo,
        required this.breakingCreatorInfo,
        required this.clipsCreationEntryPoint,
        required this.featuredLabel,
        required this.isPublicChatWelcomeVideo,
        required this.isSharedToFb,
        required this.professionalClipsUpsellType,
        required this.reelsOnTheRiseInfo,
        required this.showTips,
        required this.achievementsInfo,
        required this.additionalAudioInfo,
        required this.assetRecommendationInfo,
        required this.audioRankingInfo,
        required this.audioType,
        required this.brandedContentTagInfo,
        required this.challengeInfo,
        required this.contentAppreciationInfo,
        required this.contextualHighlightInfo,
        required this.cutoutStickerInfo,
        required this.disableUseInClipsClientCache,
        required this.externalMediaInfo,
        required this.isFanClubPromoVideo,
        required this.mashupInfo,
        required this.merchandisingPillInfo,
        required this.musicCanonicalId,
        required this.musicInfo,
        required this.nuxInfo,
        required this.originalSoundInfo,
        required this.originalityInfo,
        required this.reusableTextAttributeString,
        required this.reusableTextInfo,
        required this.shoppingInfo,
        required this.showAchievements,
        required this.templateInfo,
        required this.viewerInteractionSettings,
    });

    factory ClipsMetadata.fromJson(Map<String, dynamic> json) => ClipsMetadata(
        breakingContentInfo: json["breaking_content_info"],
        breakingCreatorInfo: json["breaking_creator_info"],
        clipsCreationEntryPoint: productTypeValues.map[json["clips_creation_entry_point"]]!,
        featuredLabel: json["featured_label"],
        isPublicChatWelcomeVideo: json["is_public_chat_welcome_video"],
        isSharedToFb: json["is_shared_to_fb"],
        professionalClipsUpsellType: json["professional_clips_upsell_type"],
        reelsOnTheRiseInfo: json["reels_on_the_rise_info"],
        showTips: json["show_tips"],
        achievementsInfo: AchievementsInfo.fromJson(json["achievements_info"]),
        additionalAudioInfo: AdditionalAudioInfo.fromJson(json["additional_audio_info"]),
        assetRecommendationInfo: json["asset_recommendation_info"],
        audioRankingInfo: AudioRankingInfo.fromJson(json["audio_ranking_info"]),
        audioType: json["audio_type"],
        brandedContentTagInfo: BrandedContentTagInfo.fromJson(json["branded_content_tag_info"]),
        challengeInfo: json["challenge_info"],
        contentAppreciationInfo: ContentAppreciationInfo.fromJson(json["content_appreciation_info"]),
        contextualHighlightInfo: json["contextual_highlight_info"],
        cutoutStickerInfo: List<dynamic>.from(json["cutout_sticker_info"].map((x) => x)),
        disableUseInClipsClientCache: json["disable_use_in_clips_client_cache"],
        externalMediaInfo: json["external_media_info"],
        isFanClubPromoVideo: json["is_fan_club_promo_video"],
        mashupInfo: MashupInfo.fromJson(json["mashup_info"]),
        merchandisingPillInfo: json["merchandising_pill_info"],
        musicCanonicalId: json["music_canonical_id"],
        musicInfo: json["music_info"] == null ? null : MusicInfo.fromJson(json["music_info"]),
        nuxInfo: json["nux_info"],
        originalSoundInfo: json["original_sound_info"] == null ? null : OriginalSoundInfo.fromJson(json["original_sound_info"]),
        originalityInfo: json["originality_info"],
        reusableTextAttributeString: json["reusable_text_attribute_string"],
        reusableTextInfo: json["reusable_text_info"],
        shoppingInfo: json["shopping_info"],
        showAchievements: json["show_achievements"],
        templateInfo: json["template_info"],
        viewerInteractionSettings: json["viewer_interaction_settings"],
    );

    Map<String, dynamic> toJson() => {
        "breaking_content_info": breakingContentInfo,
        "breaking_creator_info": breakingCreatorInfo,
        "clips_creation_entry_point": productTypeValues.reverse[clipsCreationEntryPoint],
        "featured_label": featuredLabel,
        "is_public_chat_welcome_video": isPublicChatWelcomeVideo,
        "is_shared_to_fb": isSharedToFb,
        "professional_clips_upsell_type": professionalClipsUpsellType,
        "reels_on_the_rise_info": reelsOnTheRiseInfo,
        "show_tips": showTips,
        "achievements_info": achievementsInfo.toJson(),
        "additional_audio_info": additionalAudioInfo.toJson(),
        "asset_recommendation_info": assetRecommendationInfo,
        "audio_ranking_info": audioRankingInfo.toJson(),
        "audio_type": audioType,
        "branded_content_tag_info": brandedContentTagInfo.toJson(),
        "challenge_info": challengeInfo,
        "content_appreciation_info": contentAppreciationInfo.toJson(),
        "contextual_highlight_info": contextualHighlightInfo,
        "cutout_sticker_info": List<dynamic>.from(cutoutStickerInfo.map((x) => x)),
        "disable_use_in_clips_client_cache": disableUseInClipsClientCache,
        "external_media_info": externalMediaInfo,
        "is_fan_club_promo_video": isFanClubPromoVideo,
        "mashup_info": mashupInfo.toJson(),
        "merchandising_pill_info": merchandisingPillInfo,
        "music_canonical_id": musicCanonicalId,
        "music_info": musicInfo?.toJson(),
        "nux_info": nuxInfo,
        "original_sound_info": originalSoundInfo?.toJson(),
        "originality_info": originalityInfo,
        "reusable_text_attribute_string": reusableTextAttributeString,
        "reusable_text_info": reusableTextInfo,
        "shopping_info": shoppingInfo,
        "show_achievements": showAchievements,
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

    factory AchievementsInfo.fromJson(Map<String, dynamic> json) => AchievementsInfo(
        numEarnedAchievements: json["num_earned_achievements"],
        showAchievements: json["show_achievements"],
    );

    Map<String, dynamic> toJson() => {
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

    factory AdditionalAudioInfo.fromJson(Map<String, dynamic> json) => AdditionalAudioInfo(
        additionalAudioUsername: json["additional_audio_username"],
        audioReattributionInfo: AudioReattributionInfo.fromJson(json["audio_reattribution_info"]),
    );

    Map<String, dynamic> toJson() => {
        "additional_audio_username": additionalAudioUsername,
        "audio_reattribution_info": audioReattributionInfo.toJson(),
    };
}

class AudioReattributionInfo {
    bool shouldAllowRestore;

    AudioReattributionInfo({
        required this.shouldAllowRestore,
    });

    factory AudioReattributionInfo.fromJson(Map<String, dynamic> json) => AudioReattributionInfo(
        shouldAllowRestore: json["should_allow_restore"],
    );

    Map<String, dynamic> toJson() => {
        "should_allow_restore": shouldAllowRestore,
    };
}

class AudioRankingInfo {
    String bestAudioClusterId;

    AudioRankingInfo({
        required this.bestAudioClusterId,
    });

    factory AudioRankingInfo.fromJson(Map<String, dynamic> json) => AudioRankingInfo(
        bestAudioClusterId: json["best_audio_cluster_id"],
    );

    Map<String, dynamic> toJson() => {
        "best_audio_cluster_id": bestAudioClusterId,
    };
}

class BrandedContentTagInfo {
    bool canAddTag;

    BrandedContentTagInfo({
        required this.canAddTag,
    });

    factory BrandedContentTagInfo.fromJson(Map<String, dynamic> json) => BrandedContentTagInfo(
        canAddTag: json["can_add_tag"],
    );

    Map<String, dynamic> toJson() => {
        "can_add_tag": canAddTag,
    };
}

enum ProductType {
    CAROUSEL_CONTAINER,
    CLIPS,
    FEED
}

final productTypeValues = EnumValues({
    "carousel_container": ProductType.CAROUSEL_CONTAINER,
    "clips": ProductType.CLIPS,
    "feed": ProductType.FEED
});

class ContentAppreciationInfo {
    bool enabled;
    dynamic entryPointContainer;

    ContentAppreciationInfo({
        required this.enabled,
        required this.entryPointContainer,
    });

    factory ContentAppreciationInfo.fromJson(Map<String, dynamic> json) => ContentAppreciationInfo(
        enabled: json["enabled"],
        entryPointContainer: json["entry_point_container"],
    );

    Map<String, dynamic> toJson() => {
        "enabled": enabled,
        "entry_point_container": entryPointContainer,
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
    int nonPrivacyFilteredMashupsMediaCount;
    dynamic privacyFilteredMashupsMediaCount;
    dynamic originalMedia;

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
        required this.privacyFilteredMashupsMediaCount,
        required this.originalMedia,
    });

    factory MashupInfo.fromJson(Map<String, dynamic> json) => MashupInfo(
        canToggleMashupsAllowed: json["can_toggle_mashups_allowed"],
        formattedMashupsCount: json["formatted_mashups_count"],
        hasBeenMashedUp: json["has_been_mashed_up"],
        hasNonmimicableAdditionalAudio: json["has_nonmimicable_additional_audio"],
        isCreatorRequestingMashup: json["is_creator_requesting_mashup"],
        isLightWeightCheck: json["is_light_weight_check"],
        isLightWeightReuseAllowedCheck: json["is_light_weight_reuse_allowed_check"],
        isPivotPageAvailable: json["is_pivot_page_available"],
        isReuseAllowed: json["is_reuse_allowed"],
        mashupType: json["mashup_type"],
        mashupsAllowed: json["mashups_allowed"],
        nonPrivacyFilteredMashupsMediaCount: json["non_privacy_filtered_mashups_media_count"],
        privacyFilteredMashupsMediaCount: json["privacy_filtered_mashups_media_count"],
        originalMedia: json["original_media"],
    );

    Map<String, dynamic> toJson() => {
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
        "non_privacy_filtered_mashups_media_count": nonPrivacyFilteredMashupsMediaCount,
        "privacy_filtered_mashups_media_count": privacyFilteredMashupsMediaCount,
        "original_media": originalMedia,
    };
}

class MusicInfo {
    dynamic musicCanonicalId;
    MusicAssetInfo musicAssetInfo;
    MusicConsumptionInfo musicConsumptionInfo;

    MusicInfo({
        required this.musicCanonicalId,
        required this.musicAssetInfo,
        required this.musicConsumptionInfo,
    });

    factory MusicInfo.fromJson(Map<String, dynamic> json) => MusicInfo(
        musicCanonicalId: json["music_canonical_id"],
        musicAssetInfo: MusicAssetInfo.fromJson(json["music_asset_info"]),
        musicConsumptionInfo: MusicConsumptionInfo.fromJson(json["music_consumption_info"]),
    );

    Map<String, dynamic> toJson() => {
        "music_canonical_id": musicCanonicalId,
        "music_asset_info": musicAssetInfo.toJson(),
        "music_consumption_info": musicConsumptionInfo.toJson(),
    };
}

class MusicAssetInfo {
    bool allowsSaving;
    String? artistId;
    String audioAssetId;
    String audioClusterId;
    String coverArtworkThumbnailUri;
    String coverArtworkUri;
    dynamic darkMessage;
    dynamic dashManifest;
    String displayArtist;
    int durationInMs;
    String fastStartProgressiveDownloadUrl;
    bool hasLyrics;
    List<int> highlightStartTimesInMs;
    String id;
    String? igUsername;
    bool isEligibleForAudioEffects;
    bool isEligibleForVinylSticker;
    bool isExplicit;
    String licensedMusicSubtype;
    String progressiveDownloadUrl;
    dynamic reactiveAudioDownloadUrl;
    dynamic sanitizedTitle;
    String subtitle;
    String title;
    String web30SPreviewDownloadUrl;
    dynamic lyrics;

    MusicAssetInfo({
        required this.allowsSaving,
        required this.artistId,
        required this.audioAssetId,
        required this.audioClusterId,
        required this.coverArtworkThumbnailUri,
        required this.coverArtworkUri,
        required this.darkMessage,
        required this.dashManifest,
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
        required this.progressiveDownloadUrl,
        required this.reactiveAudioDownloadUrl,
        required this.sanitizedTitle,
        required this.subtitle,
        required this.title,
        required this.web30SPreviewDownloadUrl,
        required this.lyrics,
    });

    factory MusicAssetInfo.fromJson(Map<String, dynamic> json) => MusicAssetInfo(
        allowsSaving: json["allows_saving"],
        artistId: json["artist_id"],
        audioAssetId: json["audio_asset_id"],
        audioClusterId: json["audio_cluster_id"],
        coverArtworkThumbnailUri: json["cover_artwork_thumbnail_uri"],
        coverArtworkUri: json["cover_artwork_uri"],
        darkMessage: json["dark_message"],
        dashManifest: json["dash_manifest"],
        displayArtist: json["display_artist"],
        durationInMs: json["duration_in_ms"],
        fastStartProgressiveDownloadUrl: json["fast_start_progressive_download_url"],
        hasLyrics: json["has_lyrics"],
        highlightStartTimesInMs: List<int>.from(json["highlight_start_times_in_ms"].map((x) => x)),
        id: json["id"],
        igUsername: json["ig_username"],
        isEligibleForAudioEffects: json["is_eligible_for_audio_effects"],
        isEligibleForVinylSticker: json["is_eligible_for_vinyl_sticker"],
        isExplicit: json["is_explicit"],
        licensedMusicSubtype: json["licensed_music_subtype"],
        progressiveDownloadUrl: json["progressive_download_url"],
        reactiveAudioDownloadUrl: json["reactive_audio_download_url"],
        sanitizedTitle: json["sanitized_title"],
        subtitle: json["subtitle"],
        title: json["title"],
        web30SPreviewDownloadUrl: json["web_30s_preview_download_url"],
        lyrics: json["lyrics"],
    );

    Map<String, dynamic> toJson() => {
        "allows_saving": allowsSaving,
        "artist_id": artistId,
        "audio_asset_id": audioAssetId,
        "audio_cluster_id": audioClusterId,
        "cover_artwork_thumbnail_uri": coverArtworkThumbnailUri,
        "cover_artwork_uri": coverArtworkUri,
        "dark_message": darkMessage,
        "dash_manifest": dashManifest,
        "display_artist": displayArtist,
        "duration_in_ms": durationInMs,
        "fast_start_progressive_download_url": fastStartProgressiveDownloadUrl,
        "has_lyrics": hasLyrics,
        "highlight_start_times_in_ms": List<dynamic>.from(highlightStartTimesInMs.map((x) => x)),
        "id": id,
        "ig_username": igUsername,
        "is_eligible_for_audio_effects": isEligibleForAudioEffects,
        "is_eligible_for_vinyl_sticker": isEligibleForVinylSticker,
        "is_explicit": isExplicit,
        "licensed_music_subtype": licensedMusicSubtype,
        "progressive_download_url": progressiveDownloadUrl,
        "reactive_audio_download_url": reactiveAudioDownloadUrl,
        "sanitized_title": sanitizedTitle,
        "subtitle": subtitle,
        "title": title,
        "web_30s_preview_download_url": web30SPreviewDownloadUrl,
        "lyrics": lyrics,
    };
}

class MusicConsumptionInfo {
    bool allowMediaCreationWithMusic;
    int audioAssetStartTimeInMs;
    dynamic containsLyrics;
    dynamic derivedContentId;
    dynamic displayLabels;
    dynamic formattedClipsMediaCount;
    User? igArtist;
    bool isBookmarked;
    bool isTrendingInClips;
    int overlapDurationInMs;
    String placeholderProfilePicUrl;
    bool shouldAllowMusicEditing;
    bool shouldMuteAudio;
    String shouldMuteAudioReason;
    dynamic shouldMuteAudioReasonType;
    bool shouldRenderSoundwave;
    dynamic trendRank;
    dynamic previousTrendRank;
    List<dynamic> audioFilterInfos;
    AudioMutingInfo audioMutingInfo;

    MusicConsumptionInfo({
        required this.allowMediaCreationWithMusic,
        required this.audioAssetStartTimeInMs,
        required this.containsLyrics,
        required this.derivedContentId,
        required this.displayLabels,
        required this.formattedClipsMediaCount,
        required this.igArtist,
        required this.isBookmarked,
        required this.isTrendingInClips,
        required this.overlapDurationInMs,
        required this.placeholderProfilePicUrl,
        required this.shouldAllowMusicEditing,
        required this.shouldMuteAudio,
        required this.shouldMuteAudioReason,
        required this.shouldMuteAudioReasonType,
        required this.shouldRenderSoundwave,
        required this.trendRank,
        required this.previousTrendRank,
        required this.audioFilterInfos,
        required this.audioMutingInfo,
    });

    factory MusicConsumptionInfo.fromJson(Map<String, dynamic> json) => MusicConsumptionInfo(
        allowMediaCreationWithMusic: json["allow_media_creation_with_music"],
        audioAssetStartTimeInMs: json["audio_asset_start_time_in_ms"],
        containsLyrics: json["contains_lyrics"],
        derivedContentId: json["derived_content_id"],
        displayLabels: json["display_labels"],
        formattedClipsMediaCount: json["formatted_clips_media_count"],
        igArtist: json["ig_artist"] == null ? null : User.fromJson(json["ig_artist"]),
        isBookmarked: json["is_bookmarked"],
        isTrendingInClips: json["is_trending_in_clips"],
        overlapDurationInMs: json["overlap_duration_in_ms"],
        placeholderProfilePicUrl: json["placeholder_profile_pic_url"],
        shouldAllowMusicEditing: json["should_allow_music_editing"],
        shouldMuteAudio: json["should_mute_audio"],
        shouldMuteAudioReason: json["should_mute_audio_reason"],
        shouldMuteAudioReasonType: json["should_mute_audio_reason_type"],
        shouldRenderSoundwave: json["should_render_soundwave"],
        trendRank: json["trend_rank"],
        previousTrendRank: json["previous_trend_rank"],
        audioFilterInfos: List<dynamic>.from(json["audio_filter_infos"].map((x) => x)),
        audioMutingInfo: AudioMutingInfo.fromJson(json["audio_muting_info"]),
    );

    Map<String, dynamic> toJson() => {
        "allow_media_creation_with_music": allowMediaCreationWithMusic,
        "audio_asset_start_time_in_ms": audioAssetStartTimeInMs,
        "contains_lyrics": containsLyrics,
        "derived_content_id": derivedContentId,
        "display_labels": displayLabels,
        "formatted_clips_media_count": formattedClipsMediaCount,
        "ig_artist": igArtist?.toJson(),
        "is_bookmarked": isBookmarked,
        "is_trending_in_clips": isTrendingInClips,
        "overlap_duration_in_ms": overlapDurationInMs,
        "placeholder_profile_pic_url": placeholderProfilePicUrl,
        "should_allow_music_editing": shouldAllowMusicEditing,
        "should_mute_audio": shouldMuteAudio,
        "should_mute_audio_reason": shouldMuteAudioReason,
        "should_mute_audio_reason_type": shouldMuteAudioReasonType,
        "should_render_soundwave": shouldRenderSoundwave,
        "trend_rank": trendRank,
        "previous_trend_rank": previousTrendRank,
        "audio_filter_infos": List<dynamic>.from(audioFilterInfos.map((x) => x)),
        "audio_muting_info": audioMutingInfo.toJson(),
    };
}

class AudioMutingInfo {
    bool muteAudio;
    String muteReasonStr;
    bool allowAudioEditing;
    bool showMutedAudioToast;

    AudioMutingInfo({
        required this.muteAudio,
        required this.muteReasonStr,
        required this.allowAudioEditing,
        required this.showMutedAudioToast,
    });

    factory AudioMutingInfo.fromJson(Map<String, dynamic> json) => AudioMutingInfo(
        muteAudio: json["mute_audio"],
        muteReasonStr: json["mute_reason_str"],
        allowAudioEditing: json["allow_audio_editing"],
        showMutedAudioToast: json["show_muted_audio_toast"],
    );

    Map<String, dynamic> toJson() => {
        "mute_audio": muteAudio,
        "mute_reason_str": muteReasonStr,
        "allow_audio_editing": allowAudioEditing,
        "show_muted_audio_toast": showMutedAudioToast,
    };
}

class OriginalSoundInfo {
    bool allowCreatorToRename;
    String audioAssetId;
    dynamic attributedCustomAudioAssetId;
    bool canRemixBeSharedToFb;
    bool canRemixBeSharedToFbExpansion;
    String dashManifest;
    int durationInMs;
    dynamic formattedClipsMediaCount;
    bool hideRemixing;
    User igArtist;
    bool isAudioAutomaticallyAttributed;
    bool isEligibleForAudioEffects;
    bool isEligibleForVinylSticker;
    bool isExplicit;
    bool isOriginalAudioDownloadEligible;
    bool isReuseDisabled;
    bool isXpostFromFb;
    dynamic musicCanonicalId;
    bool oaOwnerIsMusicArtist;
    String originalAudioSubtype;
    String originalAudioTitle;
    String originalMediaId;
    String progressiveDownloadUrl;
    bool shouldMuteAudio;
    int timeCreated;
    dynamic trendRank;
    dynamic previousTrendRank;
    dynamic overlapDurationInMs;
    dynamic audioAssetStartTimeInMs;
    List<dynamic> audioFilterInfos;
    List<dynamic> audioParts;
    List<dynamic> audioPartsByFilter;
    ConsumptionInfo consumptionInfo;
    dynamic xpostFbCreatorInfo;
    FbDownstreamUseXpostMetadata fbDownstreamUseXpostMetadata;

    OriginalSoundInfo({
        required this.allowCreatorToRename,
        required this.audioAssetId,
        required this.attributedCustomAudioAssetId,
        required this.canRemixBeSharedToFb,
        required this.canRemixBeSharedToFbExpansion,
        required this.dashManifest,
        required this.durationInMs,
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
        required this.musicCanonicalId,
        required this.oaOwnerIsMusicArtist,
        required this.originalAudioSubtype,
        required this.originalAudioTitle,
        required this.originalMediaId,
        required this.progressiveDownloadUrl,
        required this.shouldMuteAudio,
        required this.timeCreated,
        required this.trendRank,
        required this.previousTrendRank,
        required this.overlapDurationInMs,
        required this.audioAssetStartTimeInMs,
        required this.audioFilterInfos,
        required this.audioParts,
        required this.audioPartsByFilter,
        required this.consumptionInfo,
        required this.xpostFbCreatorInfo,
        required this.fbDownstreamUseXpostMetadata,
    });

    factory OriginalSoundInfo.fromJson(Map<String, dynamic> json) => OriginalSoundInfo(
        allowCreatorToRename: json["allow_creator_to_rename"],
        audioAssetId: json["audio_asset_id"],
        attributedCustomAudioAssetId: json["attributed_custom_audio_asset_id"],
        canRemixBeSharedToFb: json["can_remix_be_shared_to_fb"],
        canRemixBeSharedToFbExpansion: json["can_remix_be_shared_to_fb_expansion"],
        dashManifest: json["dash_manifest"],
        durationInMs: json["duration_in_ms"],
        formattedClipsMediaCount: json["formatted_clips_media_count"],
        hideRemixing: json["hide_remixing"],
        igArtist: User.fromJson(json["ig_artist"]),
        isAudioAutomaticallyAttributed: json["is_audio_automatically_attributed"],
        isEligibleForAudioEffects: json["is_eligible_for_audio_effects"],
        isEligibleForVinylSticker: json["is_eligible_for_vinyl_sticker"],
        isExplicit: json["is_explicit"],
        isOriginalAudioDownloadEligible: json["is_original_audio_download_eligible"],
        isReuseDisabled: json["is_reuse_disabled"],
        isXpostFromFb: json["is_xpost_from_fb"],
        musicCanonicalId: json["music_canonical_id"],
        oaOwnerIsMusicArtist: json["oa_owner_is_music_artist"],
        originalAudioSubtype: json["original_audio_subtype"],
        originalAudioTitle: json["original_audio_title"],
        originalMediaId: json["original_media_id"],
        progressiveDownloadUrl: json["progressive_download_url"],
        shouldMuteAudio: json["should_mute_audio"],
        timeCreated: json["time_created"],
        trendRank: json["trend_rank"],
        previousTrendRank: json["previous_trend_rank"],
        overlapDurationInMs: json["overlap_duration_in_ms"],
        audioAssetStartTimeInMs: json["audio_asset_start_time_in_ms"],
        audioFilterInfos: List<dynamic>.from(json["audio_filter_infos"].map((x) => x)),
        audioParts: List<dynamic>.from(json["audio_parts"].map((x) => x)),
        audioPartsByFilter: List<dynamic>.from(json["audio_parts_by_filter"].map((x) => x)),
        consumptionInfo: ConsumptionInfo.fromJson(json["consumption_info"]),
        xpostFbCreatorInfo: json["xpost_fb_creator_info"],
        fbDownstreamUseXpostMetadata: FbDownstreamUseXpostMetadata.fromJson(json["fb_downstream_use_xpost_metadata"]),
    );

    Map<String, dynamic> toJson() => {
        "allow_creator_to_rename": allowCreatorToRename,
        "audio_asset_id": audioAssetId,
        "attributed_custom_audio_asset_id": attributedCustomAudioAssetId,
        "can_remix_be_shared_to_fb": canRemixBeSharedToFb,
        "can_remix_be_shared_to_fb_expansion": canRemixBeSharedToFbExpansion,
        "dash_manifest": dashManifest,
        "duration_in_ms": durationInMs,
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
        "music_canonical_id": musicCanonicalId,
        "oa_owner_is_music_artist": oaOwnerIsMusicArtist,
        "original_audio_subtype": originalAudioSubtype,
        "original_audio_title": originalAudioTitle,
        "original_media_id": originalMediaId,
        "progressive_download_url": progressiveDownloadUrl,
        "should_mute_audio": shouldMuteAudio,
        "time_created": timeCreated,
        "trend_rank": trendRank,
        "previous_trend_rank": previousTrendRank,
        "overlap_duration_in_ms": overlapDurationInMs,
        "audio_asset_start_time_in_ms": audioAssetStartTimeInMs,
        "audio_filter_infos": List<dynamic>.from(audioFilterInfos.map((x) => x)),
        "audio_parts": List<dynamic>.from(audioParts.map((x) => x)),
        "audio_parts_by_filter": List<dynamic>.from(audioPartsByFilter.map((x) => x)),
        "consumption_info": consumptionInfo.toJson(),
        "xpost_fb_creator_info": xpostFbCreatorInfo,
        "fb_downstream_use_xpost_metadata": fbDownstreamUseXpostMetadata.toJson(),
    };
}

class ConsumptionInfo {
    dynamic displayMediaId;
    bool isBookmarked;
    bool isTrendingInClips;
    String shouldMuteAudioReason;
    dynamic shouldMuteAudioReasonType;

    ConsumptionInfo({
        required this.displayMediaId,
        required this.isBookmarked,
        required this.isTrendingInClips,
        required this.shouldMuteAudioReason,
        required this.shouldMuteAudioReasonType,
    });

    factory ConsumptionInfo.fromJson(Map<String, dynamic> json) => ConsumptionInfo(
        displayMediaId: json["display_media_id"],
        isBookmarked: json["is_bookmarked"],
        isTrendingInClips: json["is_trending_in_clips"],
        shouldMuteAudioReason: json["should_mute_audio_reason"],
        shouldMuteAudioReasonType: json["should_mute_audio_reason_type"],
    );

    Map<String, dynamic> toJson() => {
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

    factory FbDownstreamUseXpostMetadata.fromJson(Map<String, dynamic> json) => FbDownstreamUseXpostMetadata(
        downstreamUseXpostDenyReason: detectionMethodValues.map[json["downstream_use_xpost_deny_reason"]]!,
    );

    Map<String, dynamic> toJson() => {
        "downstream_use_xpost_deny_reason": detectionMethodValues.reverse[downstreamUseXpostDenyReason],
    };
}

enum DetectionMethod {
    C2_PA_METADATA_EDITED,
    NONE
}

final detectionMethodValues = EnumValues({
    "C2PA_METADATA_EDITED": DetectionMethod.C2_PA_METADATA_EDITED,
    "NONE": DetectionMethod.NONE
});

class CommentInformTreatment {
    dynamic actionType;
    bool shouldHaveInformTreatment;
    String text;
    dynamic url;

    CommentInformTreatment({
        required this.actionType,
        required this.shouldHaveInformTreatment,
        required this.text,
        required this.url,
    });

    factory CommentInformTreatment.fromJson(Map<String, dynamic> json) => CommentInformTreatment(
        actionType: json["action_type"],
        shouldHaveInformTreatment: json["should_have_inform_treatment"],
        text: json["text"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "action_type": actionType,
        "should_have_inform_treatment": shouldHaveInformTreatment,
        "text": text,
        "url": url,
    };
}

class GenAiDetectionMethod {
    DetectionMethod detectionMethod;

    GenAiDetectionMethod({
        required this.detectionMethod,
    });

    factory GenAiDetectionMethod.fromJson(Map<String, dynamic> json) => GenAiDetectionMethod(
        detectionMethod: detectionMethodValues.map[json["detection_method"]]!,
    );

    Map<String, dynamic> toJson() => {
        "detection_method": detectionMethodValues.reverse[detectionMethod],
    };
}

class ItemImageVersions2 {
    List<HdProfilePicUrlInfo> candidates;
    AdditionalCandidates? additionalCandidates;
    ScrubberSpritesheetInfoCandidates? scrubberSpritesheetInfoCandidates;

    ItemImageVersions2({
        required this.candidates,
        this.additionalCandidates,
        this.scrubberSpritesheetInfoCandidates,
    });

    factory ItemImageVersions2.fromJson(Map<String, dynamic> json) => ItemImageVersions2(
        candidates: List<HdProfilePicUrlInfo>.from(json["candidates"].map((x) => HdProfilePicUrlInfo.fromJson(x))),
        additionalCandidates: json["additional_candidates"] == null ? null : AdditionalCandidates.fromJson(json["additional_candidates"]),
        scrubberSpritesheetInfoCandidates: json["scrubber_spritesheet_info_candidates"] == null ? null : ScrubberSpritesheetInfoCandidates.fromJson(json["scrubber_spritesheet_info_candidates"]),
    );

    Map<String, dynamic> toJson() => {
        "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
        "additional_candidates": additionalCandidates?.toJson(),
        "scrubber_spritesheet_info_candidates": scrubberSpritesheetInfoCandidates?.toJson(),
    };
}

class AdditionalCandidates {
    HdProfilePicUrlInfo igtvFirstFrame;
    HdProfilePicUrlInfo firstFrame;
    dynamic smartFrame;

    AdditionalCandidates({
        required this.igtvFirstFrame,
        required this.firstFrame,
        required this.smartFrame,
    });

    factory AdditionalCandidates.fromJson(Map<String, dynamic> json) => AdditionalCandidates(
        igtvFirstFrame: HdProfilePicUrlInfo.fromJson(json["igtv_first_frame"]),
        firstFrame: HdProfilePicUrlInfo.fromJson(json["first_frame"]),
        smartFrame: json["smart_frame"],
    );

    Map<String, dynamic> toJson() => {
        "igtv_first_frame": igtvFirstFrame.toJson(),
        "first_frame": firstFrame.toJson(),
        "smart_frame": smartFrame,
    };
}

class ScrubberSpritesheetInfoCandidates {
    Default scrubberSpritesheetInfoCandidatesDefault;

    ScrubberSpritesheetInfoCandidates({
        required this.scrubberSpritesheetInfoCandidatesDefault,
    });

    factory ScrubberSpritesheetInfoCandidates.fromJson(Map<String, dynamic> json) => ScrubberSpritesheetInfoCandidates(
        scrubberSpritesheetInfoCandidatesDefault: Default.fromJson(json["default"]),
    );

    Map<String, dynamic> toJson() => {
        "default": scrubberSpritesheetInfoCandidatesDefault.toJson(),
    };
}

class Default {
    double videoLength;
    int thumbnailWidth;
    int thumbnailHeight;
    double thumbnailDuration;
    List<String> spriteUrls;
    int thumbnailsPerRow;
    int totalThumbnailNumPerSprite;
    int maxThumbnailsPerSprite;
    int spriteWidth;
    int spriteHeight;
    int renderedWidth;
    int fileSizeKb;

    Default({
        required this.videoLength,
        required this.thumbnailWidth,
        required this.thumbnailHeight,
        required this.thumbnailDuration,
        required this.spriteUrls,
        required this.thumbnailsPerRow,
        required this.totalThumbnailNumPerSprite,
        required this.maxThumbnailsPerSprite,
        required this.spriteWidth,
        required this.spriteHeight,
        required this.renderedWidth,
        required this.fileSizeKb,
    });

    factory Default.fromJson(Map<String, dynamic> json) => Default(
        videoLength: json["video_length"]?.toDouble(),
        thumbnailWidth: json["thumbnail_width"],
        thumbnailHeight: json["thumbnail_height"],
        thumbnailDuration: json["thumbnail_duration"]?.toDouble(),
        spriteUrls: List<String>.from(json["sprite_urls"].map((x) => x)),
        thumbnailsPerRow: json["thumbnails_per_row"],
        totalThumbnailNumPerSprite: json["total_thumbnail_num_per_sprite"],
        maxThumbnailsPerSprite: json["max_thumbnails_per_sprite"],
        spriteWidth: json["sprite_width"],
        spriteHeight: json["sprite_height"],
        renderedWidth: json["rendered_width"],
        fileSizeKb: json["file_size_kb"],
    );

    Map<String, dynamic> toJson() => {
        "video_length": videoLength,
        "thumbnail_width": thumbnailWidth,
        "thumbnail_height": thumbnailHeight,
        "thumbnail_duration": thumbnailDuration,
        "sprite_urls": List<dynamic>.from(spriteUrls.map((x) => x)),
        "thumbnails_per_row": thumbnailsPerRow,
        "total_thumbnail_num_per_sprite": totalThumbnailNumPerSprite,
        "max_thumbnails_per_sprite": maxThumbnailsPerSprite,
        "sprite_width": spriteWidth,
        "sprite_height": spriteHeight,
        "rendered_width": renderedWidth,
        "file_size_kb": fileSizeKb,
    };
}

enum InlineComposerDisplayCondition {
    IMPRESSION_TRIGGER
}

final inlineComposerDisplayConditionValues = EnumValues({
    "impression_trigger": InlineComposerDisplayCondition.IMPRESSION_TRIGGER
});

enum IntegrityReviewDecision {
    PENDING
}

final integrityReviewDecisionValues = EnumValues({
    "pending": IntegrityReviewDecision.PENDING
});

class Location {
    String name;
    String address;
    String city;
    bool hasViewerSaved;
    String pk;
    String shortName;
    String facebookPlacesId;
    String externalSource;
    double lng;
    double lat;

    Location({
        required this.name,
        required this.address,
        required this.city,
        required this.hasViewerSaved,
        required this.pk,
        required this.shortName,
        required this.facebookPlacesId,
        required this.externalSource,
        required this.lng,
        required this.lat,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json["name"],
        address: json["address"],
        city: json["city"],
        hasViewerSaved: json["has_viewer_saved"],
        pk: json["pk"],
        shortName: json["short_name"],
        facebookPlacesId: json["facebook_places_id"],
        externalSource: json["external_source"],
        lng: json["lng"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "address": address,
        "city": city,
        "has_viewer_saved": hasViewerSaved,
        "pk": pk,
        "short_name": shortName,
        "facebook_places_id": facebookPlacesId,
        "external_source": externalSource,
        "lng": lng,
        "lat": lat,
    };
}

class MediaCroppingInfo {
    ECrop? fourByThreeCrop;
    ECrop? squareCrop;

    MediaCroppingInfo({
        this.fourByThreeCrop,
        this.squareCrop,
    });

    factory MediaCroppingInfo.fromJson(Map<String, dynamic> json) => MediaCroppingInfo(
        fourByThreeCrop: json["four_by_three_crop"] == null ? null : ECrop.fromJson(json["four_by_three_crop"]),
        squareCrop: json["square_crop"] == null ? null : ECrop.fromJson(json["square_crop"]),
    );

    Map<String, dynamic> toJson() => {
        "four_by_three_crop": fourByThreeCrop?.toJson(),
        "square_crop": squareCrop?.toJson(),
    };
}

class ECrop {
    int cropLeft;
    double cropRight;
    double cropTop;
    double cropBottom;

    ECrop({
        required this.cropLeft,
        required this.cropRight,
        required this.cropTop,
        required this.cropBottom,
    });

    factory ECrop.fromJson(Map<String, dynamic> json) => ECrop(
        cropLeft: json["crop_left"],
        cropRight: json["crop_right"]?.toDouble(),
        cropTop: json["crop_top"]?.toDouble(),
        cropBottom: json["crop_bottom"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "crop_left": cropLeft,
        "crop_right": cropRight,
        "crop_top": cropTop,
        "crop_bottom": cropBottom,
    };
}

class MusicMetadata {
    dynamic audioType;
    String musicCanonicalId;
    dynamic pinnedMediaIds;
    dynamic musicInfo;
    dynamic originalSoundInfo;

    MusicMetadata({
        required this.audioType,
        required this.musicCanonicalId,
        required this.pinnedMediaIds,
        required this.musicInfo,
        required this.originalSoundInfo,
    });

    factory MusicMetadata.fromJson(Map<String, dynamic> json) => MusicMetadata(
        audioType: json["audio_type"],
        musicCanonicalId: json["music_canonical_id"],
        pinnedMediaIds: json["pinned_media_ids"],
        musicInfo: json["music_info"],
        originalSoundInfo: json["original_sound_info"],
    );

    Map<String, dynamic> toJson() => {
        "audio_type": audioType,
        "music_canonical_id": musicCanonicalId,
        "pinned_media_ids": pinnedMediaIds,
        "music_info": musicInfo,
        "original_sound_info": originalSoundInfo,
    };
}

class Owner {
    String fbidV2;
    bool feedPostReshareDisabled;
    FullName fullName;
    String id;
    bool isPrivate;
    bool isUnpublished;
    String pk;
    String pkId;
    bool showAccountTransparencyDetails;
    String strongId;
    int thirdPartyDownloadsEnabled;
    Username username;
    int accountType;
    bool? canSeeQuietPostAttribution;
    List<dynamic> accountBadges;
    FanClubInfo fanClubInfo;
    bool hasAnonymousProfilePicture;
    HdProfilePicUrlInfo hdProfilePicUrlInfo;
    List<HdProfilePicUrlInfo> hdProfilePicVersions;
    bool isVerified;
    ProfilePicId profilePicId;
    String profilePicUrl;
    bool transparencyProductEnabled;
    bool isEmbedsDisabled;

    Owner({
        required this.fbidV2,
        required this.feedPostReshareDisabled,
        required this.fullName,
        required this.id,
        required this.isPrivate,
        required this.isUnpublished,
        required this.pk,
        required this.pkId,
        required this.showAccountTransparencyDetails,
        required this.strongId,
        required this.thirdPartyDownloadsEnabled,
        required this.username,
        required this.accountType,
        this.canSeeQuietPostAttribution,
        required this.accountBadges,
        required this.fanClubInfo,
        required this.hasAnonymousProfilePicture,
        required this.hdProfilePicUrlInfo,
        required this.hdProfilePicVersions,
        required this.isVerified,
        required this.profilePicId,
        required this.profilePicUrl,
        required this.transparencyProductEnabled,
        required this.isEmbedsDisabled,
    });

    factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        fbidV2: json["fbid_v2"],
        feedPostReshareDisabled: json["feed_post_reshare_disabled"],
        fullName: fullNameValues.map[json["full_name"]]!,
        id: json["id"],
        isPrivate: json["is_private"],
        isUnpublished: json["is_unpublished"],
        pk: json["pk"],
        pkId: json["pk_id"],
        showAccountTransparencyDetails: json["show_account_transparency_details"],
        strongId: json["strong_id__"],
        thirdPartyDownloadsEnabled: json["third_party_downloads_enabled"],
        username: usernameValues.map[json["username"]]!,
        accountType: json["account_type"],
        canSeeQuietPostAttribution: json["can_see_quiet_post_attribution"],
        accountBadges: List<dynamic>.from(json["account_badges"].map((x) => x)),
        fanClubInfo: FanClubInfo.fromJson(json["fan_club_info"]),
        hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
        hdProfilePicUrlInfo: HdProfilePicUrlInfo.fromJson(json["hd_profile_pic_url_info"]),
        hdProfilePicVersions: List<HdProfilePicUrlInfo>.from(json["hd_profile_pic_versions"].map((x) => HdProfilePicUrlInfo.fromJson(x))),
        isVerified: json["is_verified"],
        profilePicId: profilePicIdValues.map[json["profile_pic_id"]]!,
        profilePicUrl: json["profile_pic_url"],
        transparencyProductEnabled: json["transparency_product_enabled"],
        isEmbedsDisabled: json["is_embeds_disabled"],
    );

    Map<String, dynamic> toJson() => {
        "fbid_v2": fbidV2,
        "feed_post_reshare_disabled": feedPostReshareDisabled,
        "full_name": fullNameValues.reverse[fullName],
        "id": id,
        "is_private": isPrivate,
        "is_unpublished": isUnpublished,
        "pk": pk,
        "pk_id": pkId,
        "show_account_transparency_details": showAccountTransparencyDetails,
        "strong_id__": strongId,
        "third_party_downloads_enabled": thirdPartyDownloadsEnabled,
        "username": usernameValues.reverse[username],
        "account_type": accountType,
        "can_see_quiet_post_attribution": canSeeQuietPostAttribution,
        "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
        "fan_club_info": fanClubInfo.toJson(),
        "has_anonymous_profile_picture": hasAnonymousProfilePicture,
        "hd_profile_pic_url_info": hdProfilePicUrlInfo.toJson(),
        "hd_profile_pic_versions": List<dynamic>.from(hdProfilePicVersions.map((x) => x.toJson())),
        "is_verified": isVerified,
        "profile_pic_id": profilePicIdValues.reverse[profilePicId],
        "profile_pic_url": profilePicUrl,
        "transparency_product_enabled": transparencyProductEnabled,
        "is_embeds_disabled": isEmbedsDisabled,
    };
}

class FanClubInfo {
    dynamic autosaveToExclusiveHighlight;
    dynamic connectedMemberCount;
    dynamic fanClubId;
    dynamic fanClubName;
    dynamic hasCreatedSsc;
    dynamic hasEnoughSubscribersForSsc;
    dynamic isFanClubGiftingEligible;
    dynamic isFanClubReferralEligible;
    dynamic isFreeTrialEligible;
    dynamic largestPublicBcId;
    dynamic subscriberCount;
    dynamic fanConsiderationPageRevampEligiblity;

    FanClubInfo({
        required this.autosaveToExclusiveHighlight,
        required this.connectedMemberCount,
        required this.fanClubId,
        required this.fanClubName,
        required this.hasCreatedSsc,
        required this.hasEnoughSubscribersForSsc,
        required this.isFanClubGiftingEligible,
        required this.isFanClubReferralEligible,
        required this.isFreeTrialEligible,
        required this.largestPublicBcId,
        required this.subscriberCount,
        required this.fanConsiderationPageRevampEligiblity,
    });

    factory FanClubInfo.fromJson(Map<String, dynamic> json) => FanClubInfo(
        autosaveToExclusiveHighlight: json["autosave_to_exclusive_highlight"],
        connectedMemberCount: json["connected_member_count"],
        fanClubId: json["fan_club_id"],
        fanClubName: json["fan_club_name"],
        hasCreatedSsc: json["has_created_ssc"],
        hasEnoughSubscribersForSsc: json["has_enough_subscribers_for_ssc"],
        isFanClubGiftingEligible: json["is_fan_club_gifting_eligible"],
        isFanClubReferralEligible: json["is_fan_club_referral_eligible"],
        isFreeTrialEligible: json["is_free_trial_eligible"],
        largestPublicBcId: json["largest_public_bc_id"],
        subscriberCount: json["subscriber_count"],
        fanConsiderationPageRevampEligiblity: json["fan_consideration_page_revamp_eligiblity"],
    );

    Map<String, dynamic> toJson() => {
        "autosave_to_exclusive_highlight": autosaveToExclusiveHighlight,
        "connected_member_count": connectedMemberCount,
        "fan_club_id": fanClubId,
        "fan_club_name": fanClubName,
        "has_created_ssc": hasCreatedSsc,
        "has_enough_subscribers_for_ssc": hasEnoughSubscribersForSsc,
        "is_fan_club_gifting_eligible": isFanClubGiftingEligible,
        "is_fan_club_referral_eligible": isFanClubReferralEligible,
        "is_free_trial_eligible": isFreeTrialEligible,
        "largest_public_bc_id": largestPublicBcId,
        "subscriber_count": subscriberCount,
        "fan_consideration_page_revamp_eligiblity": fanConsiderationPageRevampEligiblity,
    };
}

enum FullName {
    LIVERPOOL_FC_WOMEN,
    LIVERPOOL_FOOTBALL_CLUB
}

final fullNameValues = EnumValues({
    "Liverpool FC Women": FullName.LIVERPOOL_FC_WOMEN,
    "Liverpool Football Club": FullName.LIVERPOOL_FOOTBALL_CLUB
});

enum ProfilePicId {
    THE_34995915027048598661335001084,
    THE_3499591847171584592187102427
}

final profilePicIdValues = EnumValues({
    "3499591502704859866_1335001084": ProfilePicId.THE_34995915027048598661335001084,
    "3499591847171584592_187102427": ProfilePicId.THE_3499591847171584592187102427
});

enum Username {
    LIVERPOOLFC,
    LIVERPOOLFCW
}

final usernameValues = EnumValues({
    "liverpoolfc": Username.LIVERPOOLFC,
    "liverpoolfcw": Username.LIVERPOOLFCW
});

enum ProfileGridThumbnailFittingStyle {
    UNSET
}

final profileGridThumbnailFittingStyleValues = EnumValues({
    "UNSET": ProfileGridThumbnailFittingStyle.UNSET
});

class SponsorTag {
    User sponsor;
    bool permission;
    dynamic sponsorId;
    dynamic username;
    bool isPending;

    SponsorTag({
        required this.sponsor,
        required this.permission,
        required this.sponsorId,
        required this.username,
        required this.isPending,
    });

    factory SponsorTag.fromJson(Map<String, dynamic> json) => SponsorTag(
        sponsor: User.fromJson(json["sponsor"]),
        permission: json["permission"],
        sponsorId: json["sponsor_id"],
        username: json["username"],
        isPending: json["is_pending"],
    );

    Map<String, dynamic> toJson() => {
        "sponsor": sponsor.toJson(),
        "permission": permission,
        "sponsor_id": sponsorId,
        "username": username,
        "is_pending": isPending,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
