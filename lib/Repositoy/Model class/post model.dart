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
    dynamic numResults;
    dynamic moreAvailable;
    List<Item> items;
    dynamic nextMaxId;
    User user;
    dynamic autoLoadMoreEnabled;
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
    dynamic takenAt;
    dynamic pk;
    dynamic id;
    dynamic fbid;
    dynamic deviceTimestamp;
    dynamic captionIsEdited;
    dynamic strongId;
    dynamic deletedReason;
    dynamic hasSharedToFb;
    dynamic hasDelayedMetadata;
    dynamic mezqlToken;
    dynamic shareCountDisabled;
    dynamic shouldRequestAds;
    dynamic isReshareOfTextPostAppMediaInIg;
    dynamic isVisualReplyCommenterNoticeEnabled;
    dynamic likeAndViewCountsDisabled;
    dynamic isPostLiveClipsMedia;
    dynamic isQuietPost;
    ProfileGridThumbnailFittingStyle profileGridThumbnailFittingStyle;
    dynamic commentThreadingEnabled;
    dynamic isUnifiedVideo;
    CommercialityStatus commercialityStatus;
    dynamic clientCacheKey;
    IntegrityReviewDecision integrityReviewDecision;
    dynamic hasPrivatelyLiked;
    dynamic filterType;
  
    dynamic? photoOfYou;
    dynamic canSeeInsightsAsBrand;
    dynamic mediaType;
    dynamic code;
    Caption caption;
    SharingFrictionInfo sharingFrictionInfo;
    List<dynamic> timelinePinnedUserIds;
    dynamic hasViewsFetching;
    dynamic? accessibilityCaption;
    dynamic? originalMediaHasVisualReplyMedia;
    Tags fbUserTags;
    List<User> coauthorProducers;
    dynamic coauthorProducerCanSeeOrganicInsights;
    List<dynamic> invitedCoauthorProducers;
    dynamic isInProfileGrid;
    dynamic profileGridControlEnabled;
    Owner user;
    Owner owner;
    ItemImageVersions2 imageVersions2;
    dynamic originalWidth;
    dynamic originalHeight;
    MediaNotes mediaNotes;
    dynamic mediaReposterBottomsheetEnabled;
    dynamic enableMediaNotesProduction;
    ClipsCreationEntryPointEnum productType;
    dynamic isPaidPartnership;
    MusicMetadata? musicMetadata;
    List<dynamic> socialContext;
    dynamic organicTrackingToken;
    dynamic igMediaSharingDisabled;
    CrosspostMetadata crosspostMetadata;
    dynamic boostUnavailableIdentifier;
    dynamic boostUnavailableReason;
    dynamic boostUnavailableReasonV2;
    dynamic subscribeCtaVisible;
    dynamic isCutoutStickerAllowed;
    GenAiDetectionMethod genAiDetectionMethod;
    CommunityNotesInfo communityNotesInfo;
    dynamic fbAggregatedLikeCount;
    dynamic fbAggregatedCommentCount;
    dynamic hasHighRiskGenAiInformTreatment;
    dynamic openCarouselShowFollowButton;
    dynamic isTaggedMediaSharedToViewerProfileGrid;
    dynamic shouldShowAuthorPogForTaggedMediaSharedToProfileGrid;
    dynamic isEligibleForMediaNoteRecsNux;
    dynamic isSocialUfiDisabled;
    dynamic isEligibleForMetaAiShare;
    List<dynamic> metaAiSuggestedPrompts;
    dynamic canReply;
    dynamic isEligibleContentForPostRollAd;
    dynamic canViewMorePreviewComments;
    List<dynamic> previewComments;
    dynamic commentCount;
    dynamic hideViewAllCommentEntrypoint;
    InlineComposerDisplayCondition inlineComposerDisplayCondition;
    dynamic isCommentsGifComposerEnabled;
    CommentInformTreatment commentInformTreatment;
    dynamic hasLiked;
    dynamic likeCount;
    List<dynamic> facepileTopLikers;
    List<dynamic> topLikers;
    List<dynamic> videoStickerLocales;
    List<dynamic> clipsTabPinnedUserIds;
    dynamic canViewerSave;
    dynamic canViewerReshare;
    dynamic shopRoutingUserId;
    dynamic isOrganicProductTaggingEligible;
    dynamic igbioProduct;
    List<dynamic> featuredProducts;
    List<dynamic> productSuggestions;
    dynamic isReuseAllowed;
    dynamic hasMoreComments;
    dynamic maxNumVisiblePreviewComments;
    dynamic exploreHideComments;
    dynamic isOpenToPublicSubmission;
    Location? location;
    double? lng;
    double? lat;
    dynamic playCount;
    dynamic igPlayCount;
    List<dynamic>? creatorViewerInsights;
    MediaCroppingInfo? mediaCroppingInfo;
    dynamic isArtistPick;
    dynamic isThirdPartyDownloadsEligible;
    dynamic areRemixesCrosspostable;
    dynamic videoSubtitlesLocale;
    dynamic isDashEligible;
    dynamic videoDashManifest;
    dynamic numberOfQualities;
    List<VideoVersion>? videoVersions;
    double? videoDuration;
    dynamic hasAudio;
    ClipsMetadata? clipsMetadata;
    dynamic videoSubtitlesConfidence;
    List<SponsorTag>? sponsorTags;
    dynamic canModifyCarousel;
    dynamic openCarouselSubmissionState;
    dynamic carouselMediaCount;
    List<CarouselMedia>? carouselMedia;
    dynamic carouselMediaPendingPostCount;
    List<dynamic>? carouselMediaIds;
    CollabFollowButtonInfo? collabFollowButtonInfo;
    dynamic shouldOpenCollabBottomsheetOnFacepileTap;

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
        this.accessibilityCaption,
        this.originalMediaHasVisualReplyMedia,
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
        required this.communityNotesInfo,
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
        this.location,
        this.lng,
        this.lat,
        this.playCount,
        this.igPlayCount,
        this.creatorViewerInsights,
        this.mediaCroppingInfo,
        this.isArtistPick,
        this.isThirdPartyDownloadsEligible,
        this.areRemixesCrosspostable,
        this.videoSubtitlesLocale,
        this.isDashEligible,
        this.videoDashManifest,
        this.numberOfQualities,
        this.videoVersions,
        this.videoDuration,
        this.hasAudio,
        this.clipsMetadata,
        this.videoSubtitlesConfidence,
        this.sponsorTags,
        this.canModifyCarousel,
        this.openCarouselSubmissionState,
        this.carouselMediaCount,
        this.carouselMedia,
        this.carouselMediaPendingPostCount,
        this.carouselMediaIds,
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
        caption: Caption.fromJson(json["caption"]),
        sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        timelinePinnedUserIds: List<dynamic>.from(json["timeline_pinned_user_ids"].map((x) => x)),
        hasViewsFetching: json["has_views_fetching"],
        accessibilityCaption: json["accessibility_caption"],
        originalMediaHasVisualReplyMedia: json["original_media_has_visual_reply_media"],
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
        mediaNotes: MediaNotes.fromJson(json["media_notes"]),
        mediaReposterBottomsheetEnabled: json["media_reposter_bottomsheet_enabled"],
        enableMediaNotesProduction: json["enable_media_notes_production"],
        productType: clipsCreationEntryPointEnumValues.map[json["product_type"]]!,
        isPaidPartnership: json["is_paid_partnership"],
        musicMetadata: json["music_metadata"] == null ? null : MusicMetadata.fromJson(json["music_metadata"]),
        socialContext: List<dynamic>.from(json["social_context"].map((x) => x)),
        organicTrackingToken: json["organic_tracking_token"],
        igMediaSharingDisabled: json["ig_media_sharing_disabled"],
        crosspostMetadata: CrosspostMetadata.fromJson(json["crosspost_metadata"]),
        boostUnavailableIdentifier: json["boost_unavailable_identifier"],
        boostUnavailableReason: json["boost_unavailable_reason"],
        boostUnavailableReasonV2: json["boost_unavailable_reason_v2"],
        subscribeCtaVisible: json["subscribe_cta_visible"],
        isCutoutStickerAllowed: json["is_cutout_sticker_allowed"],
        genAiDetectionMethod: GenAiDetectionMethod.fromJson(json["gen_ai_detection_method"]),
        communityNotesInfo: CommunityNotesInfo.fromJson(json["community_notes_info"]),
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
        facepileTopLikers: List<dynamic>.from(json["facepile_top_likers"].map((x) => x)),
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
        location: json["location"] == null ? null : Location.fromJson(json["location"]),
        lng: json["lng"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
        playCount: json["play_count"],
        igPlayCount: json["ig_play_count"],
        creatorViewerInsights: json["creator_viewer_insights"] == null ? [] : List<dynamic>.from(json["creator_viewer_insights"]!.map((x) => x)),
        mediaCroppingInfo: json["media_cropping_info"] == null ? null : MediaCroppingInfo.fromJson(json["media_cropping_info"]),
        isArtistPick: json["is_artist_pick"],
        isThirdPartyDownloadsEligible: json["is_third_party_downloads_eligible"],
        areRemixesCrosspostable: json["are_remixes_crosspostable"],
        videoSubtitlesLocale: json["video_subtitles_locale"],
        isDashEligible: json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"],
        numberOfQualities: json["number_of_qualities"],
        videoVersions: json["video_versions"] == null ? [] : List<VideoVersion>.from(json["video_versions"]!.map((x) => VideoVersion.fromJson(x))),
        videoDuration: json["video_duration"]?.toDouble(),
        hasAudio: json["has_audio"],
        clipsMetadata: json["clips_metadata"] == null ? null : ClipsMetadata.fromJson(json["clips_metadata"]),
        videoSubtitlesConfidence: json["video_subtitles_confidence"],
        sponsorTags: json["sponsor_tags"] == null ? [] : List<SponsorTag>.from(json["sponsor_tags"]!.map((x) => SponsorTag.fromJson(x))),
        canModifyCarousel: json["can_modify_carousel"],
        openCarouselSubmissionState: json["open_carousel_submission_state"],
        carouselMediaCount: json["carousel_media_count"],
        carouselMedia: json["carousel_media"] == null ? [] : List<CarouselMedia>.from(json["carousel_media"]!.map((x) => CarouselMedia.fromJson(x))),
        carouselMediaPendingPostCount: json["carousel_media_pending_post_count"],
        carouselMediaIds: json["carousel_media_ids"] == null ? [] : List<dynamic>.from(json["carousel_media_ids"]!.map((x) => x)),
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
        "caption": caption.toJson(),
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "timeline_pinned_user_ids": List<dynamic>.from(timelinePinnedUserIds.map((x) => x)),
        "has_views_fetching": hasViewsFetching,
        "accessibility_caption": accessibilityCaption,
        "original_media_has_visual_reply_media": originalMediaHasVisualReplyMedia,
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
        "media_notes": mediaNotes.toJson(),
        "media_reposter_bottomsheet_enabled": mediaReposterBottomsheetEnabled,
        "enable_media_notes_production": enableMediaNotesProduction,
        "product_type": clipsCreationEntryPointEnumValues.reverse[productType],
        "is_paid_partnership": isPaidPartnership,
        "music_metadata": musicMetadata?.toJson(),
        "social_context": List<dynamic>.from(socialContext.map((x) => x)),
        "organic_tracking_token": organicTrackingToken,
        "ig_media_sharing_disabled": igMediaSharingDisabled,
        "crosspost_metadata": crosspostMetadata.toJson(),
        "boost_unavailable_identifier": boostUnavailableIdentifier,
        "boost_unavailable_reason": boostUnavailableReason,
        "boost_unavailable_reason_v2": boostUnavailableReasonV2,
        "subscribe_cta_visible": subscribeCtaVisible,
        "is_cutout_sticker_allowed": isCutoutStickerAllowed,
        "gen_ai_detection_method": genAiDetectionMethod.toJson(),
        "community_notes_info": communityNotesInfo.toJson(),
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
        "facepile_top_likers": List<dynamic>.from(facepileTopLikers.map((x) => x)),
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
        "location": location?.toJson(),
        "lng": lng,
        "lat": lat,
        "play_count": playCount,
        "ig_play_count": igPlayCount,
        "creator_viewer_insights": creatorViewerInsights == null ? [] : List<dynamic>.from(creatorViewerInsights!.map((x) => x)),
        "media_cropping_info": mediaCroppingInfo?.toJson(),
        "is_artist_pick": isArtistPick,
        "is_third_party_downloads_eligible": isThirdPartyDownloadsEligible,
        "are_remixes_crosspostable": areRemixesCrosspostable,
        "video_subtitles_locale": videoSubtitlesLocale,
        "is_dash_eligible": isDashEligible,
        "video_dash_manifest": videoDashManifest,
        "number_of_qualities": numberOfQualities,
        "video_versions": videoVersions == null ? [] : List<dynamic>.from(videoVersions!.map((x) => x.toJson())),
        "video_duration": videoDuration,
        "has_audio": hasAudio,
        "clips_metadata": clipsMetadata?.toJson(),
        "video_subtitles_confidence": videoSubtitlesConfidence,
        "sponsor_tags": sponsorTags == null ? [] : List<dynamic>.from(sponsorTags!.map((x) => x.toJson())),
        "can_modify_carousel": canModifyCarousel,
        "open_carousel_submission_state": openCarouselSubmissionState,
        "carousel_media_count": carouselMediaCount,
        "carousel_media": carouselMedia == null ? [] : List<dynamic>.from(carouselMedia!.map((x) => x.toJson())),
        "carousel_media_pending_post_count": carouselMediaPendingPostCount,
        "carousel_media_ids": carouselMediaIds == null ? [] : List<dynamic>.from(carouselMediaIds!.map((x) => x)),
        "collab_follow_button_info": collabFollowButtonInfo?.toJson(),
        "should_open_collab_bottomsheet_on_facepile_tap": shouldOpenCollabBottomsheetOnFacepileTap,
    };
}

class Caption {
    dynamic bitFlags;
    dynamic createdAt;
    dynamic createdAtUtc;
    dynamic didReportAsSpam;
    dynamic isRankedComment;
    dynamic pk;
    dynamic shareEnabled;
    ContentType contentType;
    dynamic mediaId;
    Status status;
    dynamic type;
    dynamic userId;
    dynamic strongId;
    dynamic text;
    User user;
    dynamic isCovered;
    dynamic privateReplyStatus;

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

    Map<dynamic, dynamic> toJson() => {
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
    dynamic pk;
    dynamic pkId;
    dynamic id;
    dynamic username;
    dynamic fullName;
    dynamic isPrivate;
    dynamic isUnpublished;
    dynamic strongId;
    dynamic fbidV2;
    dynamic isVerified;
    dynamic profilePicId;
    dynamic profilePicUrl;
    Map<dynamic, dynamic>? friendshipStatus;
    dynamic followerCount;
    dynamic isActiveOnTextPostApp;
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
        required this.profilePicId,
        required this.profilePicUrl,
        this.friendshipStatus,
        this.followerCount,
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
        friendshipStatus: Map.from(json["friendship_status"]!).map((k, v) => MapEntry<dynamic, dynamic>(k, v)),
        followerCount: json["follower_count"],
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
        "follower_count": followerCount,
        "is_active_on_text_post_app": isActiveOnTextPostApp,
        "profile_grid_display_type": profileGridDisplayType,
    };
}

class CarouselMedia {
    dynamic id;
    dynamic explorePivotGrid;
    CarouselParentId carouselParentId;
    dynamic strongId;
    dynamic pk;
    CommercialityStatus commercialityStatus;
    dynamic takenAt;
    CarouselMediaProductType productType;
    dynamic mediaType;
    dynamic accessibilityCaption;
    CarouselMediaImageVersions2 imageVersions2;
    dynamic originalWidth;
    dynamic originalHeight;
    dynamic preview;
    List<dynamic> featuredProducts;
    Tags fbUserTags;
    dynamic shopRoutingUserId;
    SharingFrictionInfo sharingFrictionInfo;
    List<dynamic> productSuggestions;
    List<dynamic> videoStickerLocales;
    Tags? usertags;

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
        required this.accessibilityCaption,
        required this.imageVersions2,
        required this.originalWidth,
        required this.originalHeight,
        this.preview,
        required this.featuredProducts,
        required this.fbUserTags,
        required this.shopRoutingUserId,
        required this.sharingFrictionInfo,
        required this.productSuggestions,
        required this.videoStickerLocales,
        this.usertags,
    });

    factory CarouselMedia.fromJson(Map<dynamic, dynamic> json) => CarouselMedia(
        id: json["id"],
        explorePivotGrid: json["explore_pivot_grid"],
        carouselParentId: carouselParentIdValues.map[json["carousel_parent_id"]]!,
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
        fbUserTags: Tags.fromJson(json["fb_user_tags"]),
        shopRoutingUserId: json["shop_routing_user_id"],
        sharingFrictionInfo: SharingFrictionInfo.fromJson(json["sharing_friction_info"]),
        productSuggestions: List<dynamic>.from(json["product_suggestions"].map((x) => x)),
        videoStickerLocales: List<dynamic>.from(json["video_sticker_locales"].map((x) => x)),
        usertags: json["usertags"] == null ? null : Tags.fromJson(json["usertags"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "id": id,
        "explore_pivot_grid": explorePivotGrid,
        "carousel_parent_id": carouselParentIdValues.reverse[carouselParentId],
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
        "featured_products": List<dynamic>.from(featuredProducts.map((x) => x)),
        "fb_user_tags": fbUserTags.toJson(),
        "shop_routing_user_id": shopRoutingUserId,
        "sharing_friction_info": sharingFrictionInfo.toJson(),
        "product_suggestions": List<dynamic>.from(productSuggestions.map((x) => x)),
        "video_sticker_locales": List<dynamic>.from(videoStickerLocales.map((x) => x)),
        "usertags": usertags?.toJson(),
    };
}

enum CarouselParentId {
    THE_3585232599830283479187102427,
    THE_3585280550349663295187102427,
    THE_3585303697681696054187102427,
    THE_3585318907930833210187102427,
    THE_3585331165759157267187102427
}

final carouselParentIdValues = EnumValues({
    "3585232599830283479_187102427": CarouselParentId.THE_3585232599830283479187102427,
    "3585280550349663295_187102427": CarouselParentId.THE_3585280550349663295187102427,
    "3585303697681696054_187102427": CarouselParentId.THE_3585303697681696054187102427,
    "3585318907930833210_187102427": CarouselParentId.THE_3585318907930833210187102427,
    "3585331165759157267_187102427": CarouselParentId.THE_3585331165759157267187102427
});

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

    CarouselMediaImageVersions2({
        required this.candidates,
    });

    factory CarouselMediaImageVersions2.fromJson(Map<dynamic, dynamic> json) => CarouselMediaImageVersions2(
        candidates: List<HdProfilePicUrlInfo>.from(json["candidates"].map((x) => HdProfilePicUrlInfo.fromJson(x))),
    );

    Map<dynamic, dynamic> toJson() => {
        "candidates": List<dynamic>.from(candidates.map((x) => x.toJson())),
    };
}

class HdProfilePicUrlInfo {
    dynamic height;
    dynamic url;
    dynamic width;

    HdProfilePicUrlInfo({
        required this.height,
        required this.url,
        required this.width,
    });

    factory HdProfilePicUrlInfo.fromJson(Map<dynamic, dynamic> json) => HdProfilePicUrlInfo(
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

enum CarouselMediaProductType {
    CAROUSEL_ITEM
}

final carouselMediaProductTypeValues = EnumValues({
    "carousel_item": CarouselMediaProductType.CAROUSEL_ITEM
});

class SharingFrictionInfo {
    dynamic bloksAppUrl;
    dynamic shouldHaveSharingFriction;
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

class ClipsMetadata {
    dynamic breakingContentInfo;
    dynamic breakingCreatorInfo;
    ClipsCreationEntryPointEnum clipsCreationEntryPoint;
    dynamic featuredLabel;
    dynamic isPublicChatWelcomeVideo;
    dynamic isSharedToFb;
    dynamic professionalClipsUpsellType;
    dynamic reelsOnTheRiseInfo;
    dynamic showTips;
    AchievementsInfo achievementsInfo;
    AdditionalAudioInfo additionalAudioInfo;
    dynamic assetRecommendationInfo;
    AudioRankingInfo audioRankingInfo;
    dynamic audioType;
    BrandedContentTagInfo brandedContentTagInfo;
    dynamic challengeInfo;
    ContentAppreciationInfo contentAppreciationInfo;
    dynamic contextualHighlightInfo;
    List<dynamic> cutoutStickerInfo;
    dynamic disableUseInClipsClientCache;
    dynamic externalMediaInfo;
    dynamic isFanClubPromoVideo;
    MashupInfo mashupInfo;
    dynamic merchandisingPillInfo;
    dynamic musicCanonicalId;
    dynamic musicInfo;
    dynamic nuxInfo;
    OriginalSoundInfo originalSoundInfo;
    dynamic originalityInfo;
    dynamic reusableTextAttributeString;
    dynamic reusableTextInfo;
    dynamic shoppingInfo;
    dynamic showAchievements;
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

    factory ClipsMetadata.fromJson(Map<dynamic, dynamic> json) => ClipsMetadata(
        breakingContentInfo: json["breaking_content_info"],
        breakingCreatorInfo: json["breaking_creator_info"],
        clipsCreationEntryPoint: clipsCreationEntryPointEnumValues.map[json["clips_creation_entry_point"]]!,
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
        musicInfo: json["music_info"],
        nuxInfo: json["nux_info"],
        originalSoundInfo: OriginalSoundInfo.fromJson(json["original_sound_info"]),
        originalityInfo: json["originality_info"],
        reusableTextAttributeString: json["reusable_text_attribute_string"],
        reusableTextInfo: json["reusable_text_info"],
        shoppingInfo: json["shopping_info"],
        showAchievements: json["show_achievements"],
        templateInfo: json["template_info"],
        viewerInteractionSettings: json["viewer_interaction_settings"],
    );

    Map<dynamic, dynamic> toJson() => {
        "breaking_content_info": breakingContentInfo,
        "breaking_creator_info": breakingCreatorInfo,
        "clips_creation_entry_point": clipsCreationEntryPointEnumValues.reverse[clipsCreationEntryPoint],
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
        "music_info": musicInfo,
        "nux_info": nuxInfo,
        "original_sound_info": originalSoundInfo.toJson(),
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
    dynamic showAchievements;

    AchievementsInfo({
        required this.numEarnedAchievements,
        required this.showAchievements,
    });

    factory AchievementsInfo.fromJson(Map<dynamic, dynamic> json) => AchievementsInfo(
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

    factory AdditionalAudioInfo.fromJson(Map<dynamic, dynamic> json) => AdditionalAudioInfo(
        additionalAudioUsername: json["additional_audio_username"],
        audioReattributionInfo: AudioReattributionInfo.fromJson(json["audio_reattribution_info"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "additional_audio_username": additionalAudioUsername,
        "audio_reattribution_info": audioReattributionInfo.toJson(),
    };
}

class AudioReattributionInfo {
    dynamic shouldAllowRestore;

    AudioReattributionInfo({
        required this.shouldAllowRestore,
    });

    factory AudioReattributionInfo.fromJson(Map<dynamic, dynamic> json) => AudioReattributionInfo(
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

    factory AudioRankingInfo.fromJson(Map<dynamic, dynamic> json) => AudioRankingInfo(
        bestAudioClusterId: json["best_audio_cluster_id"],
    );

    Map<dynamic, dynamic> toJson() => {
        "best_audio_cluster_id": bestAudioClusterId,
    };
}

class BrandedContentTagInfo {
    dynamic canAddTag;

    BrandedContentTagInfo({
        required this.canAddTag,
    });

    factory BrandedContentTagInfo.fromJson(Map<dynamic, dynamic> json) => BrandedContentTagInfo(
        canAddTag: json["can_add_tag"],
    );

    Map<dynamic, dynamic> toJson() => {
        "can_add_tag": canAddTag,
    };
}

enum ClipsCreationEntryPointEnum {
    CAROUSEL_CONTAINER,
    CLIPS,
    FEED
}

final clipsCreationEntryPointEnumValues = EnumValues({
    "carousel_container": ClipsCreationEntryPointEnum.CAROUSEL_CONTAINER,
    "clips": ClipsCreationEntryPointEnum.CLIPS,
    "feed": ClipsCreationEntryPointEnum.FEED
});

class ContentAppreciationInfo {
    dynamic enabled;
    dynamic entryPointContainer;

    ContentAppreciationInfo({
        required this.enabled,
        required this.entryPointContainer,
    });

    factory ContentAppreciationInfo.fromJson(Map<dynamic, dynamic> json) => ContentAppreciationInfo(
        enabled: json["enabled"],
        entryPointContainer: json["entry_point_container"],
    );

    Map<dynamic, dynamic> toJson() => {
        "enabled": enabled,
        "entry_point_container": entryPointContainer,
    };
}

class MashupInfo {
    dynamic canToggleMashupsAllowed;
    dynamic formattedMashupsCount;
    dynamic hasBeenMashedUp;
    dynamic hasNonmimicableAdditionalAudio;
    dynamic isCreatorRequestingMashup;
    dynamic isLightWeightCheck;
    dynamic isLightWeightReuseAllowedCheck;
    dynamic isPivotPageAvailable;
    dynamic isReuseAllowed;
    dynamic mashupType;
    dynamic mashupsAllowed;
    dynamic nonPrivacyFilteredMashupsMediaCount;
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

    factory MashupInfo.fromJson(Map<dynamic, dynamic> json) => MashupInfo(
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
        "non_privacy_filtered_mashups_media_count": nonPrivacyFilteredMashupsMediaCount,
        "privacy_filtered_mashups_media_count": privacyFilteredMashupsMediaCount,
        "original_media": originalMedia,
    };
}

class OriginalSoundInfo {
    dynamic allowCreatorToRename;
    dynamic audioAssetId;
    dynamic attributedCustomAudioAssetId;
    dynamic canRemixBeSharedToFb;
    dynamic canRemixBeSharedToFbExpansion;
    dynamic dashManifest;
    dynamic durationInMs;
    dynamic formattedClipsMediaCount;
    dynamic hideRemixing;
    User igArtist;
    dynamic isAudioAutomaticallyAttributed;
    dynamic isEligibleForAudioEffects;
    dynamic isEligibleForVinylSticker;
    dynamic isExplicit;
    dynamic isOriginalAudioDownloadEligible;
    dynamic isReuseDisabled;
    dynamic isXpostFromFb;
    dynamic musicCanonicalId;
    dynamic oaOwnerIsMusicArtist;
    dynamic originalAudioSubtype;
    dynamic originalAudioTitle;
    dynamic originalMediaId;
    dynamic progressiveDownloadUrl;
    dynamic shouldMuteAudio;
    dynamic timeCreated;
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

    factory OriginalSoundInfo.fromJson(Map<dynamic, dynamic> json) => OriginalSoundInfo(
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

    Map<dynamic, dynamic> toJson() => {
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
    dynamic isBookmarked;
    dynamic isTrendingInClips;
    dynamic shouldMuteAudioReason;
    dynamic shouldMuteAudioReasonType;

    ConsumptionInfo({
        required this.displayMediaId,
        required this.isBookmarked,
        required this.isTrendingInClips,
        required this.shouldMuteAudioReason,
        required this.shouldMuteAudioReasonType,
    });

    factory ConsumptionInfo.fromJson(Map<dynamic, dynamic> json) => ConsumptionInfo(
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

class CollabFollowButtonInfo {
    dynamic showFollowButton;
    dynamic isOwnerInAuthorExp;

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
    dynamic shouldHaveInformTreatment;
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

class CommunityNotesInfo {
    dynamic hasViewerSubmittedNote;
    dynamic noteSubmissionDisabled;
    dynamic enableSubmissionFriction;

    CommunityNotesInfo({
        required this.hasViewerSubmittedNote,
        required this.noteSubmissionDisabled,
        required this.enableSubmissionFriction,
    });

    factory CommunityNotesInfo.fromJson(Map<dynamic, dynamic> json) => CommunityNotesInfo(
        hasViewerSubmittedNote: json["has_viewer_submitted_note"],
        noteSubmissionDisabled: json["note_submission_disabled"],
        enableSubmissionFriction: json["enable_submission_friction"],
    );

    Map<dynamic, dynamic> toJson() => {
        "has_viewer_submitted_note": hasViewerSubmittedNote,
        "note_submission_disabled": noteSubmissionDisabled,
        "enable_submission_friction": enableSubmissionFriction,
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
    AdditionalCandidates? additionalCandidates;
    ScrubberSpritesheetInfoCandidates? scrubberSpritesheetInfoCandidates;

    ItemImageVersions2({
        required this.candidates,
        this.additionalCandidates,
        this.scrubberSpritesheetInfoCandidates,
    });

    factory ItemImageVersions2.fromJson(Map<dynamic, dynamic> json) => ItemImageVersions2(
        candidates: List<HdProfilePicUrlInfo>.from(json["candidates"].map((x) => HdProfilePicUrlInfo.fromJson(x))),
        additionalCandidates: json["additional_candidates"] == null ? null : AdditionalCandidates.fromJson(json["additional_candidates"]),
        scrubberSpritesheetInfoCandidates: json["scrubber_spritesheet_info_candidates"] == null ? null : ScrubberSpritesheetInfoCandidates.fromJson(json["scrubber_spritesheet_info_candidates"]),
    );

    Map<dynamic, dynamic> toJson() => {
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

    factory AdditionalCandidates.fromJson(Map<dynamic, dynamic> json) => AdditionalCandidates(
        igtvFirstFrame: HdProfilePicUrlInfo.fromJson(json["igtv_first_frame"]),
        firstFrame: HdProfilePicUrlInfo.fromJson(json["first_frame"]),
        smartFrame: json["smart_frame"],
    );

    Map<dynamic, dynamic> toJson() => {
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

    factory ScrubberSpritesheetInfoCandidates.fromJson(Map<dynamic, dynamic> json) => ScrubberSpritesheetInfoCandidates(
        scrubberSpritesheetInfoCandidatesDefault: Default.fromJson(json["default"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "default": scrubberSpritesheetInfoCandidatesDefault.toJson(),
    };
}

class Default {
    double videoLength;
    dynamic thumbnailWidth;
    dynamic thumbnailHeight;
    double thumbnailDuration;
    List<dynamic> spriteUrls;
    dynamic thumbnailsPerRow;
    dynamic totalThumbnailNumPerSprite;
    dynamic maxThumbnailsPerSprite;
    dynamic spriteWidth;
    dynamic spriteHeight;
    dynamic renderedWidth;
    dynamic fileSizeKb;

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
    dynamic hasViewerSaved;
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

class MediaCroppingInfo {
    FourByThreeCrop fourByThreeCrop;

    MediaCroppingInfo({
        required this.fourByThreeCrop,
    });

    factory MediaCroppingInfo.fromJson(Map<dynamic, dynamic> json) => MediaCroppingInfo(
        fourByThreeCrop: FourByThreeCrop.fromJson(json["four_by_three_crop"]),
    );

    Map<dynamic, dynamic> toJson() => {
        "four_by_three_crop": fourByThreeCrop.toJson(),
    };
}

class FourByThreeCrop {
    dynamic cropLeft;
    dynamic cropRight;
    double cropTop;
    double cropBottom;

    FourByThreeCrop({
        required this.cropLeft,
        required this.cropRight,
        required this.cropTop,
        required this.cropBottom,
    });

    factory FourByThreeCrop.fromJson(Map<dynamic, dynamic> json) => FourByThreeCrop(
        cropLeft: json["crop_left"],
        cropRight: json["crop_right"],
        cropTop: json["crop_top"]?.toDouble(),
        cropBottom: json["crop_bottom"]?.toDouble(),
    );

    Map<dynamic, dynamic> toJson() => {
        "crop_left": cropLeft,
        "crop_right": cropRight,
        "crop_top": cropTop,
        "crop_bottom": cropBottom,
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
    dynamic feedPostReshareDisabled;
    FullName fullName;
    dynamic id;
    dynamic isPrivate;
    dynamic isUnpublished;
    dynamic pk;
    dynamic pkId;
    dynamic showAccountTransparencyDetails;
    dynamic strongId;
    dynamic thirdPartyDownloadsEnabled;
    Username username;
    dynamic accountType;
    dynamic canSeeQuietPostAttribution;
    List<dynamic> accountBadges;
    FanClubInfo fanClubInfo;
    dynamic hasAnonymousProfilePicture;
    HdProfilePicUrlInfo hdProfilePicUrlInfo;
    List<HdProfilePicUrlInfo> hdProfilePicVersions;
    dynamic isFavorite;
    dynamic isVerified;
    ProfilePicId profilePicId;
    dynamic profilePicUrl;
    dynamic transparencyProductEnabled;
    dynamic isEmbedsDisabled;
    dynamic latestReelMedia;

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
    LIVERPOOL_FOOTBALL_CLUB
}

final fullNameValues = EnumValues({
    "Liverpool Football Club": FullName.LIVERPOOL_FOOTBALL_CLUB
});

enum ProfilePicId {
    THE_3499591847171584592187102427
}

final profilePicIdValues = EnumValues({
    "3499591847171584592_187102427": ProfilePicId.THE_3499591847171584592187102427
});

enum Username {
    LIVERPOOLFC
}

final usernameValues = EnumValues({
    "liverpoolfc": Username.LIVERPOOLFC
});

enum ProfileGridThumbnailFittingStyle {
    UNSET
}

final profileGridThumbnailFittingStyleValues = EnumValues({
    "UNSET": ProfileGridThumbnailFittingStyle.UNSET
});

class SponsorTag {
    User sponsor;
    dynamic permission;
    dynamic sponsorId;
    dynamic username;
    dynamic isPending;

    SponsorTag({
        required this.sponsor,
        required this.permission,
        required this.sponsorId,
        required this.username,
        required this.isPending,
    });

    factory SponsorTag.fromJson(Map<dynamic, dynamic> json) => SponsorTag(
        sponsor: User.fromJson(json["sponsor"]),
        permission: json["permission"],
        sponsorId: json["sponsor_id"],
        username: json["username"],
        isPending: json["is_pending"],
    );

    Map<dynamic, dynamic> toJson() => {
        "sponsor": sponsor.toJson(),
        "permission": permission,
        "sponsor_id": sponsorId,
        "username": username,
        "is_pending": isPending,
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
