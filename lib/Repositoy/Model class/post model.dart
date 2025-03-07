// To parse this JSON data, do
//
//     final postmodel = postmodelFromJson(jsonString);

import 'dart:convert';

Postmodel postmodelFromJson(dynamic str) => Postmodel.fromJson(json.decode(str));

dynamic postmodelToJson(Postmodel data) => json.encode(data.toJson());

class Postmodel {
    dynamic profileGridItems;
    dynamic profileGridItemsCursor;
    dynamic pinnedProfileGridItemsIds;
    dynamic specialEmptyState;
    int numResults;
    bool moreAvailable;
    List<Item> items;
    dynamic nextMaxId;
    User user;
    bool autoLoadMoreEnabled;
    dynamic status;

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

    factory Postmodel.fromJson(Map<dynamic, dynamic> json) => Postmodel(
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

    Map<dynamic, dynamic> toJson() => {
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
    dynamic pk;
    dynamic id;
    dynamic fbid;
    int deviceTimestamp;
    bool captionIsEdited;
    dynamic strongId;
    int deletedReason;
    int hasSharedToFb;
    bool hasDelayedMetadata;
    dynamic mezqlToken;
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
    dynamic clientCacheKey;
    IntegrityReviewDecision integrityReviewDecision;
    bool hasPrivatelyLiked;
    int filterType;
    
    bool? photoOfYou;
    bool canSeeInsightsAsBrand;
    int mediaType;
    dynamic code;
    Caption? caption;
    SharingFrictionInfo sharingFrictionInfo;
    List<dynamic> timelinePinnedUserIds;
    bool hasViewsFetching;
    dynamic accessibilityCaption;
    bool originalMediaHasVisualReplyMedia;

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
    MediaNotes mediaNotes;
    bool mediaReposterBottomsheetEnabled;
    bool enableMediaNotesProduction;
    ItemProductType productType;
    bool isPaidPartnership;
    MusicMetadata musicMetadata;
    List<SocialContext> socialContext;
    dynamic organicTrackingToken;
    bool igMediaSharingDisabled;
    CrosspostMetadata crosspostMetadata;
    dynamic boostUnavailableIdentifier;
    dynamic boostUnavailableReason;
    dynamic boostUnavailableReasonV2;
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
    List<User> facepileTopLikers;
    List<dynamic> topLikers;
    List<dynamic> videoStickerLocales;
    List<dynamic> clipsTabPinnedUserIds;
    bool canViewerSave;
    bool canViewerReshare;
    dynamic shopRoutingUserId;
    bool isOrganicProductTaggingEligible;
    dynamic igbioProduct;
    List<dynamic> featuredProducts;
    List<dynamic> productSuggestions;
    bool isReuseAllowed;
    bool hasMoreComments;
    int maxNumVisiblePreviewComments;
    bool exploreHideComments;
    bool isOpenToPublicSubmission;
    bool? canModifyCarousel;
    dynamic commerceIntegrityReviewDecision;
    dynamic openCarouselSubmissionState;
    int? carouselMediaCount;
    List<CarouselMedia>? carouselMedia;
    int? carouselMediaPendingPostCount;
    List<dynamic>? carouselMediaIds;
    Location? location;
    double? lng;
    double? lat;
    CollabFollowButtonInfo? collabFollowButtonInfo;
    bool? shouldOpenCollabBottomsheetOnFacepileTap;

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

        this.photoOfYou,
        required this.canSeeInsightsAsBrand,
        required this.mediaType,
        required this.code,
        required this.caption,
        required this.sharingFrictionInfo,
        required this.timelinePinnedUserIds,
        required this.hasViewsFetching,
        required this.accessibilityCaption,
        required this.originalMediaHasVisualReplyMedia,

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
        required this.mediaNotes,
        required this.mediaReposterBottomsheetEnabled,
        required this.enableMediaNotesProduction,
        required this.productType,
        required this.isPaidPartnership,
        required this.musicMetadata,
        required this.socialContext,
        required this.organicTrackingToken,
        required this.igMediaSharingDisabled,
        required this.crosspostMetadata,
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
        required this.facepileTopLikers,
        required this.topLikers,
        required this.videoStickerLocales,
        required this.clipsTabPinnedUserIds,
        required this.canViewerSave,
        required this.canViewerReshare,
        required this.shopRoutingUserId,
        required this.isOrganicProductTaggingEligible,
        required this.igbioProduct,
        required this.featuredProducts,
        required this.productSuggestions,
        required this.isReuseAllowed,
        required this.hasMoreComments,
        required this.maxNumVisiblePreviewComments,
        required this.exploreHideComments,
        required this.isOpenToPublicSubmission,
        this.canModifyCarousel,
        this.commerceIntegrityReviewDecision,
        this.openCarouselSubmissionState,
        this.carouselMediaCount,
        this.carouselMedia,
        this.carouselMediaPendingPostCount,
        this.carouselMediaIds,
        this.location,
        this.lng,
        this.lat,
        this.collabFollowButtonInfo,
        this.shouldOpenCollabBottomsheetOnFacepileTap,
    });

    factory Item.fromJson(Map<dynamic, dynamic> json) => Item(
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

        photoOfYou: json["photo_of_you"],
        canSeeInsightsAsBrand: json["can_see_insights_as_brand"],
        mediaType: json["media_type"],
        code: json["code"],
        caption: json["caption"] == null ? null : Caption.fromJson(json["caption"]),
        sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        timelinePinnedUserIds: List<dynamic>.from(json["timeline_pinned_user_ids"].map((x) => x)),
        hasViewsFetching: json["has_views_fetching"],
        accessibilityCaption: json["accessibility_caption"],
        originalMediaHasVisualReplyMedia: json["original_media_has_visual_reply_media"],
 
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
        mediaNotes: MediaNotes.fromJson(json["media_notes"]),
        mediaReposterBottomsheetEnabled: json["media_reposter_bottomsheet_enabled"],
        enableMediaNotesProduction: json["enable_media_notes_production"],
        productType: itemProductTypeValues.map[json["product_type"]]!,
        isPaidPartnership: json["is_paid_partnership"],
        musicMetadata: MusicMetadata.fromJson(json["music_metadata"]),
        socialContext: List<SocialContext>.from(json["social_context"].map((x) => SocialContext.fromJson(x))),
        organicTrackingToken: json["organic_tracking_token"],
        igMediaSharingDisabled: json["ig_media_sharing_disabled"],
        crosspostMetadata: CrosspostMetadata.fromJson(json["crosspost_metadata"]),
        boostUnavailableIdentifier: json["boost_unavailable_identifier"],
        boostUnavailableReason: json["boost_unavailable_reason"],
        boostUnavailableReasonV2: json["boost_unavailable_reason_v2"],
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
        facepileTopLikers: List<User>.from(json["facepile_top_likers"].map((x) => User.fromJson(x))),
        topLikers: List<dynamic>.from(json["top_likers"].map((x) => x)),
        videoStickerLocales: List<dynamic>.from(json["video_sticker_locales"].map((x) => x)),
        clipsTabPinnedUserIds: List<dynamic>.from(json["clips_tab_pinned_user_ids"].map((x) => x)),
        canViewerSave: json["can_viewer_save"],
        canViewerReshare: json["can_viewer_reshare"],
        shopRoutingUserId: json["shop_routing_user_id"],
        isOrganicProductTaggingEligible: json["is_organic_product_tagging_eligible"],
        igbioProduct: json["igbio_product"],
        featuredProducts: List<dynamic>.from(json["featured_products"].map((x) => x)),
        productSuggestions: List<dynamic>.from(json["product_suggestions"].map((x) => x)),
        isReuseAllowed: json["is_reuse_allowed"],
        hasMoreComments: json["has_more_comments"],
        maxNumVisiblePreviewComments: json["max_num_visible_preview_comments"],
        exploreHideComments: json["explore_hide_comments"],
        isOpenToPublicSubmission: json["is_open_to_public_submission"],
        canModifyCarousel: json["can_modify_carousel"],
        commerceIntegrityReviewDecision: json["commerce_integrity_review_decision"],
        openCarouselSubmissionState: json["open_carousel_submission_state"],
        carouselMediaCount: json["carousel_media_count"],
        carouselMedia: json["carousel_media"] == null ? [] : List<CarouselMedia>.from(json["carousel_media"]!.map((x) => CarouselMedia.fromJson(x))),
        carouselMediaPendingPostCount: json["carousel_media_pending_post_count"],
        carouselMediaIds: json["carousel_media_ids"] == null ? [] : List<dynamic>.from(json["carousel_media_ids"]!.map((x) => x)),
        location: json["location"] == null ? null : Location.fromJson(json["location"]),
        lng: json["lng"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
        collabFollowButtonInfo: json["collab_follow_button_info"] == null ? null : CollabFollowButtonInfo.fromJson(json["collab_follow_button_info"]),
        shouldOpenCollabBottomsheetOnFacepileTap: json["should_open_collab_bottomsheet_on_facepile_tap"],
    );

    Map<dynamic, dynamic> toJson() => {
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
        "media_notes": mediaNotes.toJson(),
        "media_reposter_bottomsheet_enabled": mediaReposterBottomsheetEnabled,
        "enable_media_notes_production": enableMediaNotesProduction,
        "product_type": itemProductTypeValues.reverse[productType],
        "is_paid_partnership": isPaidPartnership,
        "music_metadata": musicMetadata.toJson(),
        "social_context": List<dynamic>.from(socialContext.map((x) => x.toJson())),
        "organic_tracking_token": organicTrackingToken,
        "ig_media_sharing_disabled": igMediaSharingDisabled,
        "crosspost_metadata": crosspostMetadata.toJson(),
        "boost_unavailable_identifier": boostUnavailableIdentifier,
        "boost_unavailable_reason": boostUnavailableReason,
        "boost_unavailable_reason_v2": boostUnavailableReasonV2,
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
        "facepile_top_likers": List<dynamic>.from(facepileTopLikers.map((x) => x.toJson())),
        "top_likers": List<dynamic>.from(topLikers.map((x) => x)),
        "video_sticker_locales": List<dynamic>.from(videoStickerLocales.map((x) => x)),
        "clips_tab_pinned_user_ids": List<dynamic>.from(clipsTabPinnedUserIds.map((x) => x)),
        "can_viewer_save": canViewerSave,
        "can_viewer_reshare": canViewerReshare,
        "shop_routing_user_id": shopRoutingUserId,
        "is_organic_product_tagging_eligible": isOrganicProductTaggingEligible,
        "igbio_product": igbioProduct,
        "featured_products": List<dynamic>.from(featuredProducts.map((x) => x)),
        "product_suggestions": List<dynamic>.from(productSuggestions.map((x) => x)),
        "is_reuse_allowed": isReuseAllowed,
        "has_more_comments": hasMoreComments,
        "max_num_visible_preview_comments": maxNumVisiblePreviewComments,
        "explore_hide_comments": exploreHideComments,
        "is_open_to_public_submission": isOpenToPublicSubmission,
        "can_modify_carousel": canModifyCarousel,
        "commerce_integrity_review_decision": commerceIntegrityReviewDecision,
        "open_carousel_submission_state": openCarouselSubmissionState,
        "carousel_media_count": carouselMediaCount,
        "carousel_media": carouselMedia == null ? [] : List<dynamic>.from(carouselMedia!.map((x) => x.toJson())),
        "carousel_media_pending_post_count": carouselMediaPendingPostCount,
        "carousel_media_ids": carouselMediaIds == null ? [] : List<dynamic>.from(carouselMediaIds!.map((x) => x)),
        "location": location?.toJson(),
        "lng": lng,
        "lat": lat,
        "collab_follow_button_info": collabFollowButtonInfo?.toJson(),
        "should_open_collab_bottomsheet_on_facepile_tap": shouldOpenCollabBottomsheetOnFacepileTap,
    };
}

class Caption {
    int bitFlags;
    int createdAt;
    int createdAtUtc;
    bool didReportAsSpam;
    bool isRankedComment;
    dynamic pk;
    bool shareEnabled;
    dynamic contentType;
    dynamic mediaId;
    dynamic status;
    int type;
    dynamic userId;
    dynamic strongId;
    dynamic text;
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

    factory Caption.fromJson(Map<dynamic, dynamic> json) => Caption(
        bitFlags: json["bit_flags"],
        createdAt: json["created_at"],
        createdAtUtc: json["created_at_utc"],
        didReportAsSpam: json["did_report_as_spam"],
        isRankedComment: json["is_ranked_comment"],
        pk: json["pk"],
        shareEnabled: json["share_enabled"],
        contentType: json["content_type"],
        mediaId: json["media_id"],
        status: json["status"],
        type: json["type"],
        userId: json["user_id"],
        strongId: json["strong_id__"],
        text: json["text"],
        user: User.fromJson(json["user"]),
        isCovered: json["is_covered"],
        privateReplyStatus: json["private_reply_status"],
    );

    Map<dynamic, dynamic> toJson() => {
        "bit_flags": bitFlags,
        "created_at": createdAt,
        "created_at_utc": createdAtUtc,
        "did_report_as_spam": didReportAsSpam,
        "is_ranked_comment": isRankedComment,
        "pk": pk,
        "share_enabled": shareEnabled,
        "content_type": contentType,
        "media_id": mediaId,
        "status": status,
        "type": type,
        "user_id": userId,
        "strong_id__": strongId,
        "text": text,
        "user": user.toJson(),
        "is_covered": isCovered,
        "private_reply_status": privateReplyStatus,
    };
}

class User {
    dynamic pk;
    dynamic pkId;
    dynamic id;
    dynamic username;
    dynamic fullName;
    bool isPrivate;
    bool? isUnpublished;
    dynamic strongId;
    dynamic fbidV2;
    bool isVerified;
    dynamic profilePicId;
    dynamic profilePicUrl;
    Map<dynamic, bool>? friendshipStatus;
    bool? isActiveOnTextPostApp;
    dynamic profileGridDisplayType;

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
        this.profilePicId,
        required this.profilePicUrl,
        this.friendshipStatus,
        this.isActiveOnTextPostApp,
        this.profileGridDisplayType,
    });

    factory User.fromJson(Map<dynamic, dynamic> json) => User(
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
        friendshipStatus: Map.from(json["friendship_status"]!).map((k, v) => MapEntry<dynamic, bool>(k, v)),
        isActiveOnTextPostApp: json["is_active_on_text_post_app"],
        profileGridDisplayType: json["profile_grid_display_type"],
    );

    Map<dynamic, dynamic> toJson() => {
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
        "friendship_status": Map.from(friendshipStatus!).map((k, v) => MapEntry<dynamic, dynamic>(k, v)),
        "is_active_on_text_post_app": isActiveOnTextPostApp,
        "profile_grid_display_type": profileGridDisplayType,
    };
}

class CarouselMedia {
    dynamic id;
    bool explorePivotGrid;
    dynamic carouselParentId;
    dynamic strongId;
    dynamic pk;
    CommercialityStatus commercialityStatus;
    int takenAt;
    CarouselMediaProductType productType;
    int mediaType;
    dynamic accessibilityCaption;
    CarouselMediaImageVersions2 imageVersions2;
    int originalWidth;
    int originalHeight;
    dynamic preview;

    List<dynamic> featuredProducts;

    dynamic shopRoutingUserId;
    SharingFrictionInfo sharingFrictionInfo;
    List<dynamic> productSuggestions;
    List<dynamic> videoStickerLocales;
    List<VideoVersion>? videoVersions;
    double? videoDuration;
    bool? hasAudio;
    int? isDashEligible;
    dynamic videoDashManifest;
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
    
        required this.featuredProducts,
     
        required this.shopRoutingUserId,
        required this.sharingFrictionInfo,
        required this.productSuggestions,
        required this.videoStickerLocales,
        this.videoVersions,
        this.videoDuration,
        this.hasAudio,
        this.isDashEligible,
        this.videoDashManifest,
        this.numberOfQualities,
    });

    factory CarouselMedia.fromJson(Map<dynamic, dynamic> json) => CarouselMedia(
        id: json["id"],
        explorePivotGrid: json["explore_pivot_grid"],
        carouselParentId: json["carousel_parent_id"],
        strongId: json["strong_id__"],
        pk: json["pk"],
        commercialityStatus: commercialityStatusValues.map[json["commerciality_status"]]!,
        takenAt: json["taken_at"],
        productType: carouselMediaProductTypeValues.map[json["product_type"]]!,
        mediaType: json["media_type"],
        accessibilityCaption: json["accessibility_caption"],
        imageVersions2: CarouselMediaImageVersions2.fromJson(json["image_versions2"]),
        originalWidth: json["original_width"],
        originalHeight: json["original_height"],
        preview: json["preview"],

        featuredProducts: List<dynamic>.from(json["featured_products"].map((x) => x)),
      
        shopRoutingUserId: json["shop_routing_user_id"],
        sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        productSuggestions: List<dynamic>.from(json["product_suggestions"].map((x) => x)),
        videoStickerLocales: List<dynamic>.from(json["video_sticker_locales"].map((x) => x)),
        videoVersions: json["video_versions"] == null ? [] : List<VideoVersion>.from(json["video_versions"]!.map((x) => VideoVersion.fromJson(x))),
        videoDuration: json["video_duration"]?.toDouble(),
        hasAudio: json["has_audio"],
        isDashEligible: json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"],
        numberOfQualities: json["number_of_qualities"],
    );

    Map<dynamic, dynamic> toJson() => {
        "id": id,
        "explore_pivot_grid": explorePivotGrid,
        "carousel_parent_id": carouselParentId,
        "strong_id__": strongId,
        "pk": pk,
        "commerciality_status": commercialityStatusValues.reverse[commercialityStatus],
        "taken_at": takenAt,
        "product_type": carouselMediaProductTypeValues.reverse[productType],
        "media_type": mediaType,
        "accessibility_caption": accessibilityCaption,
        "image_versions2": imageVersions2.toJson(),
        "original_width": originalWidth,
        "original_height": originalHeight,
        "preview": preview,
      

        "shop_routing_user_id": shopRoutingUserId,
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "product_suggestions": List<dynamic>.from(productSuggestions.map((x) => x)),
        "video_sticker_locales": List<dynamic>.from(videoStickerLocales.map((x) => x)),
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

    factory Tags.fromJson(Map<dynamic, dynamic> json) => Tags(
        tagsIn: List<In>.from(json["in"].map((x) => In.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
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

    factory In.fromJson(Map<dynamic, dynamic> json) => In(
        position: List<double>.from(json["position"].map((x) => x?.toDouble())),
        user: User.fromJson(json["user"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "position": List<dynamic>.from(position.map((x) => x)),
        "user": user.toJson(),
    };
}

class CarouselMediaImageVersions2 {
    List<HdProfilePicUrlInfo> candidates;
    ScrubberSpritesheetInfoCandidates? scrubberSpritesheetInfoCandidates;

    CarouselMediaImageVersions2({
        required this.candidates,
        this.scrubberSpritesheetInfoCandidates,
    });

    factory CarouselMediaImageVersions2.fromJson(Map<dynamic, dynamic> json) => CarouselMediaImageVersions2(
        candidates: List<HdProfilePicUrlInfo>.from(json["candidates"].map((x) => HdProfilePicUrlInfo.fromJson(x))),
        scrubberSpritesheetInfoCandidates: json["scrubber_spritesheet_info_candidates"] == null ? null : ScrubberSpritesheetInfoCandidates.fromJson(json["scrubber_spritesheet_info_candidates"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
        "scrubber_spritesheet_info_candidates": scrubberSpritesheetInfoCandidates?.toJson(),
    };
}

class HdProfilePicUrlInfo {
    int width;
    int height;
    dynamic url;

    HdProfilePicUrlInfo({
        required this.width,
        required this.height,
        required this.url,
    });

    factory HdProfilePicUrlInfo.fromJson(Map<dynamic, dynamic> json) => HdProfilePicUrlInfo(
        width: json["width"],
        height: json["height"],
        url: json["url"],
    );

    Map<dynamic, dynamic> toJson() => {
        "width": width,
        "height": height,
        "url": url,
    };
}

class ScrubberSpritesheetInfoCandidates {
    Default scrubberSpritesheetInfoCandidatesDefault;

    ScrubberSpritesheetInfoCandidates({
        required this.scrubberSpritesheetInfoCandidatesDefault,
    });

    factory ScrubberSpritesheetInfoCandidates.fromJson(Map<dynamic, dynamic> json) => ScrubberSpritesheetInfoCandidates(
        scrubberSpritesheetInfoCandidatesDefault: Default.fromJson(json["default"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "default": scrubberSpritesheetInfoCandidatesDefault.toJson(),
    };
}

class Default {
    double videoLength;
    int thumbnailWidth;
    int thumbnailHeight;
    double thumbnailDuration;
    List<dynamic> spriteUrls;
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

    factory Default.fromJson(Map<dynamic, dynamic> json) => Default(
        videoLength: json["video_length"]?.toDouble(),
        thumbnailWidth: json["thumbnail_width"],
        thumbnailHeight: json["thumbnail_height"],
        thumbnailDuration: json["thumbnail_duration"]?.toDouble(),
        spriteUrls: List<dynamic>.from(json["sprite_urls"].map((x) => x)),
        thumbnailsPerRow: json["thumbnails_per_row"],
        totalThumbnailNumPerSprite: json["total_thumbnail_num_per_sprite"],
        maxThumbnailsPerSprite: json["max_thumbnails_per_sprite"],
        spriteWidth: json["sprite_width"],
        spriteHeight: json["sprite_height"],
        renderedWidth: json["rendered_width"],
        fileSizeKb: json["file_size_kb"],
    );

    Map<dynamic, dynamic> toJson() => {
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

enum CarouselMediaProductType {
    CAROUSEL_ITEM
}

final carouselMediaProductTypeValues = EnumValues({
    "carousel_item": CarouselMediaProductType.CAROUSEL_ITEM
});

class SharingFrictionInfo {
    dynamic bloksAppUrl;
    bool shouldHaveSharingFriction;
    dynamic sharingFrictionPayload;

    SharingFrictionInfo({
        required this.bloksAppUrl,
        required this.shouldHaveSharingFriction,
        required this.sharingFrictionPayload,
    });

    factory SharingFrictionInfo.fromJson(Map<dynamic, dynamic> json) => SharingFrictionInfo(
        bloksAppUrl: json["bloks_app_url"],
        shouldHaveSharingFriction: json["should_have_sharing_friction"],
        sharingFrictionPayload: json["sharing_friction_payload"],
    );

    Map<dynamic, dynamic> toJson() => {
        "bloks_app_url": bloksAppUrl,
        "should_have_sharing_friction": shouldHaveSharingFriction,
        "sharing_friction_payload": sharingFrictionPayload,
    };
}

class VideoVersion {
    int bandwidth;
    int height;
    dynamic id;
    int type;
    dynamic url;
    int width;

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
    bool showFollowButton;
    bool isOwnerInAuthorExp;

    CollabFollowButtonInfo({
        required this.showFollowButton,
        required this.isOwnerInAuthorExp,
    });

    factory CollabFollowButtonInfo.fromJson(Map<dynamic, dynamic> json) => CollabFollowButtonInfo(
        showFollowButton: json["show_follow_button"],
        isOwnerInAuthorExp: json["is_owner_in_author_exp"],
    );

    Map<dynamic, dynamic> toJson() => {
        "show_follow_button": showFollowButton,
        "is_owner_in_author_exp": isOwnerInAuthorExp,
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

    factory CommentInformTreatment.fromJson(Map<dynamic, dynamic> json) => CommentInformTreatment(
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

    factory CrosspostMetadata.fromJson(Map<dynamic, dynamic> json) => CrosspostMetadata(
        fbDownstreamUseXpostMetadata: FbDownstreamUseXpostMetadata.fromJson(json["fb_downstream_use_xpost_metadata"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "fb_downstream_use_xpost_metadata": fbDownstreamUseXpostMetadata.toJson(),
    };
}

class FbDownstreamUseXpostMetadata {
    DetectionMethod downstreamUseXpostDenyReason;

    FbDownstreamUseXpostMetadata({
        required this.downstreamUseXpostDenyReason,
    });

    factory FbDownstreamUseXpostMetadata.fromJson(Map<dynamic, dynamic> json) => FbDownstreamUseXpostMetadata(
        downstreamUseXpostDenyReason: detectionMethodValues.map[json["downstream_use_xpost_deny_reason"]]!,
    );

    Map<dynamic, dynamic> toJson() => {
        "downstream_use_xpost_deny_reason": detectionMethodValues.reverse[downstreamUseXpostDenyReason],
    };
}

enum DetectionMethod {
    NONE
}

final detectionMethodValues = EnumValues({
    "NONE": DetectionMethod.NONE
});

class GenAiDetectionMethod {
    DetectionMethod detectionMethod;

    GenAiDetectionMethod({
        required this.detectionMethod,
    });

    factory GenAiDetectionMethod.fromJson(Map<dynamic, dynamic> json) => GenAiDetectionMethod(
        detectionMethod: detectionMethodValues.map[json["detection_method"]]!,
    );

    Map<dynamic, dynamic> toJson() => {
        "detection_method": detectionMethodValues.reverse[detectionMethod],
    };
}

class ItemImageVersions2 {
    List<HdProfilePicUrlInfo> candidates;

    ItemImageVersions2({
        required this.candidates,
    });

    factory ItemImageVersions2.fromJson(Map<dynamic, dynamic> json) => ItemImageVersions2(
        candidates: List<HdProfilePicUrlInfo>.from(json["candidates"].map((x) => HdProfilePicUrlInfo.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
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
    dynamic name;
    dynamic address;
    dynamic city;
    bool hasViewerSaved;
    dynamic pk;
    dynamic shortName;
    dynamic facebookPlacesId;
    dynamic externalSource;
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

    factory Location.fromJson(Map<dynamic, dynamic> json) => Location(
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

    Map<dynamic, dynamic> toJson() => {
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

class MusicMetadata {
    dynamic audioType;
    dynamic musicCanonicalId;
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

    factory MusicMetadata.fromJson(Map<dynamic, dynamic> json) => MusicMetadata(
        audioType: json["audio_type"],
        musicCanonicalId: json["music_canonical_id"],
        pinnedMediaIds: json["pinned_media_ids"],
        musicInfo: json["music_info"],
        originalSoundInfo: json["original_sound_info"],
    );

    Map<dynamic, dynamic> toJson() => {
        "audio_type": audioType,
        "music_canonical_id": musicCanonicalId,
        "pinned_media_ids": pinnedMediaIds,
        "music_info": musicInfo,
        "original_sound_info": originalSoundInfo,
    };
}

class Owner {
    dynamic fbidV2;
    bool feedPostReshareDisabled;
    FullName fullName;
    dynamic id;
    bool isPrivate;
    bool isUnpublished;
    dynamic pk;
    dynamic pkId;
    bool showAccountTransparencyDetails;
    dynamic strongId;
    int thirdPartyDownloadsEnabled;
    Username username;
    int accountType;
    bool? canSeeQuietPostAttribution;
    List<dynamic> accountBadges;
    FanClubInfo fanClubInfo;
    bool hasAnonymousProfilePicture;
    HdProfilePicUrlInfo hdProfilePicUrlInfo;
    List<HdProfilePicUrlInfo> hdProfilePicVersions;
    bool isFavorite;
    bool isVerified;
    ProfilePicId profilePicId;
    dynamic profilePicUrl;
    bool transparencyProductEnabled;
    bool isEmbedsDisabled;
    int latestReelMedia;

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
        required this.isFavorite,
        required this.isVerified,
        required this.profilePicId,
        required this.profilePicUrl,
        required this.transparencyProductEnabled,
        required this.isEmbedsDisabled,
        required this.latestReelMedia,
    });

    factory Owner.fromJson(Map<dynamic, dynamic> json) => Owner(
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
        isFavorite: json["is_favorite"],
        isVerified: json["is_verified"],
        profilePicId: profilePicIdValues.map[json["profile_pic_id"]]!,
        profilePicUrl: json["profile_pic_url"],
        transparencyProductEnabled: json["transparency_product_enabled"],
        isEmbedsDisabled: json["is_embeds_disabled"],
        latestReelMedia: json["latest_reel_media"],
    );

    Map<dynamic, dynamic> toJson() => {
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
        "is_favorite": isFavorite,
        "is_verified": isVerified,
        "profile_pic_id": profilePicIdValues.reverse[profilePicId],
        "profile_pic_url": profilePicUrl,
        "transparency_product_enabled": transparencyProductEnabled,
        "is_embeds_disabled": isEmbedsDisabled,
        "latest_reel_media": latestReelMedia,
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

    factory FanClubInfo.fromJson(Map<dynamic, dynamic> json) => FanClubInfo(
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

    Map<dynamic, dynamic> toJson() => {
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
    TRENT_ALEXANDER_ARNOLD
}

final fullNameValues = EnumValues({
    "Trent Alexander-Arnold": FullName.TRENT_ALEXANDER_ARNOLD
});

enum ProfilePicId {
    THE_3174294645814577759282989710
}

final profilePicIdValues = EnumValues({
    "3174294645814577759_282989710": ProfilePicId.THE_3174294645814577759282989710
});

enum Username {
    TRENTARNOLD66
}

final usernameValues = EnumValues({
    "trentarnold66": Username.TRENTARNOLD66
});

enum ItemProductType {
    CAROUSEL_CONTAINER,
    FEED
}

final itemProductTypeValues = EnumValues({
    "carousel_container": ItemProductType.CAROUSEL_CONTAINER,
    "feed": ItemProductType.FEED
});

enum ProfileGridThumbnailFittingStyle {
    UNSET
}

final profileGridThumbnailFittingStyleValues = EnumValues({
    "UNSET": ProfileGridThumbnailFittingStyle.UNSET
});

class SocialContext {
    dynamic socialContextType;
    int socialContextUsersCount;
    List<User> socialContextFacepileUsers;
    List<SocialContextActionMetadatum> socialContextActionMetadata;

    SocialContext({
        required this.socialContextType,
        required this.socialContextUsersCount,
        required this.socialContextFacepileUsers,
        required this.socialContextActionMetadata,
    });

    factory SocialContext.fromJson(Map<dynamic, dynamic> json) => SocialContext(
        socialContextType: json["social_context_type"],
        socialContextUsersCount: json["social_context_users_count"],
        socialContextFacepileUsers: List<User>.from(json["social_context_facepile_users"].map((x) => User.fromJson(x))),
        socialContextActionMetadata: List<SocialContextActionMetadatum>.from(json["social_context_action_metadata"].map((x) => SocialContextActionMetadatum.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "social_context_type": socialContextType,
        "social_context_users_count": socialContextUsersCount,
        "social_context_facepile_users": List<dynamic>.from(socialContextFacepileUsers.map((x) => x.toJson())),
        "social_context_action_metadata": List<dynamic>.from(socialContextActionMetadata.map((x) => x.toJson())),
    };
}

class SocialContextActionMetadatum {
    dynamic facepileUserId;
    bool isHighValue;

    SocialContextActionMetadatum({
        required this.facepileUserId,
        required this.isHighValue,
    });

    factory SocialContextActionMetadatum.fromJson(Map<dynamic, dynamic> json) => SocialContextActionMetadatum(
        facepileUserId: json["facepile_user_id"],
        isHighValue: json["is_high_value"],
    );

    Map<dynamic, dynamic> toJson() => {
        "facepile_user_id": facepileUserId,
        "is_high_value": isHighValue,
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
