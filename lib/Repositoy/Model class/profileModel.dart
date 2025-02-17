// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsondynamic);

import 'dart:convert';

ProfileModel profileModelFromJson(dynamic str) =>
    ProfileModel.fromJson(json.decode(str));

dynamic profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  Data data;

  ProfileModel({
    required this.data,
  });

  factory ProfileModel.fromJson(Map<dynamic, dynamic> json) => ProfileModel(
        data: Data.fromJson(json["data"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  dynamic about;
  List<dynamic> accountBadges;
  dynamic accountCategory;
  dynamic accountType;
  ActiveStandaloneFundraisers activeStandaloneFundraisers;
  List<dynamic> additionalBusinessAddresses;
  List<dynamic> adjustedBannersOrder;
  dynamic adsIncentiveExpirationDate;
  dynamic adsPageId;
  dynamic adsPageName;
  dynamic autoExpandChaining;
  AvatarStatus avatarStatus;
  List<dynamic> bioLinks;
  dynamic biography;
  dynamic biographyEmail;
  BiographyWithEntities biographyWithEntities;
  dynamic birthdayTodayVisibilityForViewer;
  dynamic businessContactMethod;
  dynamic canAddFbGroupLinkOnProfile;
  dynamic canHideCategory;
  dynamic canHidePublicContacts;
  dynamic canUseAffiliatePartnershipMessagingAsBrand;
  dynamic canUseAffiliatePartnershipMessagingAsCreator;
  dynamic canUseBrandedContentDiscoveryAsBrand;
  dynamic canUseBrandedContentDiscoveryAsCreator;
  dynamic canUsePaidPartnershipMessagingAsCreator;
  dynamic category;
  dynamic categoryId;
  List<Chaining> chainingResults;
  List<Chaining> chainingSuggestions;
  List<dynamic> chainingUpsellCards;
  dynamic contactPhoneNumber;
  CreatorShoppingInfo creatorShoppingInfo;
  dynamic currentCatalogId;
  dynamic directMessaging;
  dynamic enableAddSchoolInEditProfile;
  dynamic existingUserAgeCollectionEnabled;
  dynamic externalUrl;
  FanClubInfo fanClubInfo;
  dynamic fbidV2;
  dynamic feedPostReshareDisabled;
  dynamic followFrictionType;
  dynamic followerCount;
  dynamic followingCount;
  dynamic fullName;
  dynamic hasAnonymousProfilePicture;
  dynamic hasBiographyTranslation;
  dynamic hasChaining;
  dynamic hasChains;
  dynamic hasCollabCollections;
  dynamic hasEverSelectedTopics;
  dynamic hasExclusiveFeedContent;
  dynamic hasFanClubSubscriptions;
  dynamic hasGenAiPersonasForProfileBanner;
  dynamic hasGuides;
  dynamic hasHighlightReels;
  dynamic hasIgProfile;
  dynamic hasLegacyBbPendingProfilePictureUpdate;
  dynamic hasMusicOnProfile;
  dynamic hasMv4BPendingProfilePictureUpdate;
  dynamic hasNmeBadge;
  dynamic hasPrivateCollections;
  dynamic hasPublicTabThreads;
  dynamic hasVideos;
  dynamic hasViewsFetching;
  HdProfilePic hdProfilePicUrlInfo;
  List<HdProfilePic> hdProfilePicVersions;
  dynamic highlightReshareDisabled;
  dynamic highlightsTrayType;
  dynamic id;
  dynamic includeDirectBlacklistStatus;
  dynamic instagramPk;
  dynamic dynamiceropMessagingUserFbid;
  dynamic isActiveOnTextPostApp;
  dynamic isAutoConfirmEnabledForAllReciprocalFollowRequests;
  dynamic isBestie;
  dynamic isBusiness;
  dynamic isCallToActionEnabled;
  dynamic isCategoryTappable;
  dynamic isCreatorAgentEnabled;
  dynamic isDirectRollCallEnabled;
  dynamic isEligibleForDiverseOwnedBusinessInfo;
  dynamic isEligibleForMetaVerifiedEnhancedLinkSheet;
  dynamic isEligibleForMetaVerifiedEnhancedLinkSheetConsumption;
  dynamic isEligibleForMetaVerifiedLabel;
  dynamic isEligibleForMetaVerifiedLinksInReels;
  dynamic isEligibleForMetaVerifiedMultipleAddressesConsumption;
  dynamic isEligibleForMetaVerifiedMultipleAddressesCreation;
  dynamic isEligibleForMetaVerifiedRelatedAccounts;
  dynamic isEligibleForPostBoostMvUpsell;
  dynamic isEligibleForRequestMessage;
  dynamic isEligibleToDisplayDiverseOwnedBusinessInfo;
  dynamic isFavorite;
  dynamic isFavoriteForClips;
  dynamic isFavoriteForHighlights;
  dynamic isFavoriteForIgtv;
  dynamic isFavoriteForStories;
  dynamic isInCanada;
  dynamic isdynamicerestAccount;
  dynamic isLegacyVerifiedMaxProfilePicEditReached;
  dynamic isMemorialized;
  dynamic isMetaVerifiedRelatedAccountsDisplayEnabled;
  dynamic isMv4BApplicationMaturedForProfileEdit;
  dynamic isMv4BBizAssetProfileLocked;
  dynamic isMv4BMaxProfileEditReached;
  dynamic isNewToInstagram;
  dynamic isOpalEnabled;
  dynamic isOpenToCollab;
  dynamic isOregonCustomGenderConsented;
  dynamic isParentingAccount;
  dynamic isPotentialBusiness;
  dynamic isPrivate;
  dynamic isProfileAudioCallEnabled;
  dynamic isProfileBroadcastSharingEnabled;
  dynamic isProfilePictureExpansionEnabled;
  dynamic isReconAdCtaOnProfileEligibleWithViewer;
  dynamic isRegulatedC18;
  dynamic isRegulatedNewsInViewerLocation;
  dynamic isRemixSettingEnabledForPosts;
  dynamic isRemixSettingEnabledForReels;
  dynamic isSecondaryAccountCreation;
  dynamic isStoriesTeaserMuted;
  dynamic isSupervisionFeaturesEnabled;
  dynamic isVerified;
  dynamic isWhatsappLinked;
  dynamic latestBestiesReelMedia;
  dynamic latestReelMedia;
  dynamic liveSubscriptionStatus;
  LocationData locationData;
  dynamic mediaCount;
  dynamic merchantCheckoutStyle;
  MetaVerifiedBenefitsInfo metaVerifiedBenefitsInfo;
  dynamic metaVerifiedRelatedAccountsCount;
  Nametag nametag;
  dynamic nonproCanMaybeSeeProfileHypercard;
  NotMetaVerifiedFrictionInfo notMetaVerifiedFrictionInfo;
  dynamic openExternalUrlWithInAppBrowser;
  dynamic pageId;
  dynamic pageName;
  PinnedChannelsInfo pinnedChannelsInfo;
  dynamic primaryProfileLinkType;
  dynamic professionalConversionSuggestedAccountType;
  dynamic profileContext;
  List<dynamic> profileContextFacepileUsers;
  List<dynamic> profileContextLinksWithUserIds;
  List<dynamic> profilePicGenaiToolInfo;
  dynamic profilePicId;
  dynamic profilePicUrl;
  dynamic profilePicUrlHd;
  dynamic profileReelsSortingEligibility;
  dynamic profileType;
  List<dynamic> pronouns;
  dynamic publicEmail;
  dynamic publicPhoneCountryCode;
  dynamic publicPhoneNumber;
  ReconFeatures reconFeatures;
  RecsFromFriends recsFromFriends;
  List<dynamic> relevantNewsRegulationLocations;
  dynamic removeMessageEntrypodynamic;
  dynamic sellerShoppableFeedType;
  dynamic showAccountTransparencyDetails;
  dynamic showBlueBadgeOnMainProfile;
  dynamic showPostInsightsEntryPodynamic;
  dynamic showSchoolsBadge;
  dynamic showShoppableFeed;
  dynamic spamFollowerSettingEnabled;
  dynamic textAppLastVisitedTime;
  dynamic textPostAppBadgeLabel;
  dynamic textPostNewPostCount;
  dynamic thirdPartyDownloadsEnabled;
  dynamic threadsProfileGlyphUrl;
  dynamic totalArEffects;
  dynamic totalIgtvVideos;
  dynamic transparencyProductEnabled;
  List<dynamic> upcomingEvents;
  dynamic username;
  dynamic viewsOnGridStatus;

  Data({
    required this.about,
    required this.accountBadges,
    required this.accountCategory,
    required this.accountType,
    required this.activeStandaloneFundraisers,
    required this.additionalBusinessAddresses,
    required this.adjustedBannersOrder,
    required this.adsIncentiveExpirationDate,
    required this.adsPageId,
    required this.adsPageName,
    required this.autoExpandChaining,
    required this.avatarStatus,
    required this.bioLinks,
    required this.biography,
    required this.biographyEmail,
    required this.biographyWithEntities,
    required this.birthdayTodayVisibilityForViewer,
    required this.businessContactMethod,
    required this.canAddFbGroupLinkOnProfile,
    required this.canHideCategory,
    required this.canHidePublicContacts,
    required this.canUseAffiliatePartnershipMessagingAsBrand,
    required this.canUseAffiliatePartnershipMessagingAsCreator,
    required this.canUseBrandedContentDiscoveryAsBrand,
    required this.canUseBrandedContentDiscoveryAsCreator,
    required this.canUsePaidPartnershipMessagingAsCreator,
    required this.category,
    required this.categoryId,
    required this.chainingResults,
    required this.chainingSuggestions,
    required this.chainingUpsellCards,
    required this.contactPhoneNumber,
    required this.creatorShoppingInfo,
    required this.currentCatalogId,
    required this.directMessaging,
    required this.enableAddSchoolInEditProfile,
    required this.existingUserAgeCollectionEnabled,
    required this.externalUrl,
    required this.fanClubInfo,
    required this.fbidV2,
    required this.feedPostReshareDisabled,
    required this.followFrictionType,
    required this.followerCount,
    required this.followingCount,
    required this.fullName,
    required this.hasAnonymousProfilePicture,
    required this.hasBiographyTranslation,
    required this.hasChaining,
    required this.hasChains,
    required this.hasCollabCollections,
    required this.hasEverSelectedTopics,
    required this.hasExclusiveFeedContent,
    required this.hasFanClubSubscriptions,
    required this.hasGenAiPersonasForProfileBanner,
    required this.hasGuides,
    required this.hasHighlightReels,
    required this.hasIgProfile,
    required this.hasLegacyBbPendingProfilePictureUpdate,
    required this.hasMusicOnProfile,
    required this.hasMv4BPendingProfilePictureUpdate,
    required this.hasNmeBadge,
    required this.hasPrivateCollections,
    required this.hasPublicTabThreads,
    required this.hasVideos,
    required this.hasViewsFetching,
    required this.hdProfilePicUrlInfo,
    required this.hdProfilePicVersions,
    required this.highlightReshareDisabled,
    required this.highlightsTrayType,
    required this.id,
    required this.includeDirectBlacklistStatus,
    required this.instagramPk,
    required this.dynamiceropMessagingUserFbid,
    required this.isActiveOnTextPostApp,
    required this.isAutoConfirmEnabledForAllReciprocalFollowRequests,
    required this.isBestie,
    required this.isBusiness,
    required this.isCallToActionEnabled,
    required this.isCategoryTappable,
    required this.isCreatorAgentEnabled,
    required this.isDirectRollCallEnabled,
    required this.isEligibleForDiverseOwnedBusinessInfo,
    required this.isEligibleForMetaVerifiedEnhancedLinkSheet,
    required this.isEligibleForMetaVerifiedEnhancedLinkSheetConsumption,
    required this.isEligibleForMetaVerifiedLabel,
    required this.isEligibleForMetaVerifiedLinksInReels,
    required this.isEligibleForMetaVerifiedMultipleAddressesConsumption,
    required this.isEligibleForMetaVerifiedMultipleAddressesCreation,
    required this.isEligibleForMetaVerifiedRelatedAccounts,
    required this.isEligibleForPostBoostMvUpsell,
    required this.isEligibleForRequestMessage,
    required this.isEligibleToDisplayDiverseOwnedBusinessInfo,
    required this.isFavorite,
    required this.isFavoriteForClips,
    required this.isFavoriteForHighlights,
    required this.isFavoriteForIgtv,
    required this.isFavoriteForStories,
    required this.isInCanada,
    required this.isdynamicerestAccount,
    required this.isLegacyVerifiedMaxProfilePicEditReached,
    required this.isMemorialized,
    required this.isMetaVerifiedRelatedAccountsDisplayEnabled,
    required this.isMv4BApplicationMaturedForProfileEdit,
    required this.isMv4BBizAssetProfileLocked,
    required this.isMv4BMaxProfileEditReached,
    required this.isNewToInstagram,
    required this.isOpalEnabled,
    required this.isOpenToCollab,
    required this.isOregonCustomGenderConsented,
    required this.isParentingAccount,
    required this.isPotentialBusiness,
    required this.isPrivate,
    required this.isProfileAudioCallEnabled,
    required this.isProfileBroadcastSharingEnabled,
    required this.isProfilePictureExpansionEnabled,
    required this.isReconAdCtaOnProfileEligibleWithViewer,
    required this.isRegulatedC18,
    required this.isRegulatedNewsInViewerLocation,
    required this.isRemixSettingEnabledForPosts,
    required this.isRemixSettingEnabledForReels,
    required this.isSecondaryAccountCreation,
    required this.isStoriesTeaserMuted,
    required this.isSupervisionFeaturesEnabled,
    required this.isVerified,
    required this.isWhatsappLinked,
    required this.latestBestiesReelMedia,
    required this.latestReelMedia,
    required this.liveSubscriptionStatus,
    required this.locationData,
    required this.mediaCount,
    required this.merchantCheckoutStyle,
    required this.metaVerifiedBenefitsInfo,
    required this.metaVerifiedRelatedAccountsCount,
    required this.nametag,
    required this.nonproCanMaybeSeeProfileHypercard,
    required this.notMetaVerifiedFrictionInfo,
    required this.openExternalUrlWithInAppBrowser,
    required this.pageId,
    required this.pageName,
    required this.pinnedChannelsInfo,
    required this.primaryProfileLinkType,
    required this.professionalConversionSuggestedAccountType,
    required this.profileContext,
    required this.profileContextFacepileUsers,
    required this.profileContextLinksWithUserIds,
    required this.profilePicGenaiToolInfo,
    required this.profilePicId,
    required this.profilePicUrl,
    required this.profilePicUrlHd,
    required this.profileReelsSortingEligibility,
    required this.profileType,
    required this.pronouns,
    required this.publicEmail,
    required this.publicPhoneCountryCode,
    required this.publicPhoneNumber,
    required this.reconFeatures,
    required this.recsFromFriends,
    required this.relevantNewsRegulationLocations,
    required this.removeMessageEntrypodynamic,
    required this.sellerShoppableFeedType,
    required this.showAccountTransparencyDetails,
    required this.showBlueBadgeOnMainProfile,
    required this.showPostInsightsEntryPodynamic,
    required this.showSchoolsBadge,
    required this.showShoppableFeed,
    required this.spamFollowerSettingEnabled,
    required this.textAppLastVisitedTime,
    required this.textPostAppBadgeLabel,
    required this.textPostNewPostCount,
    required this.thirdPartyDownloadsEnabled,
    required this.threadsProfileGlyphUrl,
    required this.totalArEffects,
    required this.totalIgtvVideos,
    required this.transparencyProductEnabled,
    required this.upcomingEvents,
    required this.username,
    required this.viewsOnGridStatus,
  });

  factory Data.fromJson(Map<dynamic, dynamic> json) => Data(
        about: json["about"],
        accountBadges: List<dynamic>.from(json["account_badges"].map((x) => x)),
        accountCategory: json["account_category"],
        accountType: json["account_type"],
        activeStandaloneFundraisers: ActiveStandaloneFundraisers.fromJson(
            json["active_standalone_fundraisers"]),
        additionalBusinessAddresses: List<dynamic>.from(
            json["additional_business_addresses"].map((x) => x)),
        adjustedBannersOrder:
            List<dynamic>.from(json["adjusted_banners_order"].map((x) => x)),
        adsIncentiveExpirationDate: json["ads_incentive_expiration_date"],
        adsPageId: json["ads_page_id"],
        adsPageName: json["ads_page_name"],
        autoExpandChaining: json["auto_expand_chaining"],
        avatarStatus: AvatarStatus.fromJson(json["avatar_status"]),
        bioLinks: List<dynamic>.from(json["bio_links"].map((x) => x)),
        biography: json["biography"],
        biographyEmail: json["biography_email"],
        biographyWithEntities:
            BiographyWithEntities.fromJson(json["biography_with_entities"]),
        birthdayTodayVisibilityForViewer:
            json["birthday_today_visibility_for_viewer"],
        businessContactMethod: json["business_contact_method"],
        canAddFbGroupLinkOnProfile: json["can_add_fb_group_link_on_profile"],
        canHideCategory: json["can_hide_category"],
        canHidePublicContacts: json["can_hide_public_contacts"],
        canUseAffiliatePartnershipMessagingAsBrand:
            json["can_use_affiliate_partnership_messaging_as_brand"],
        canUseAffiliatePartnershipMessagingAsCreator:
            json["can_use_affiliate_partnership_messaging_as_creator"],
        canUseBrandedContentDiscoveryAsBrand:
            json["can_use_branded_content_discovery_as_brand"],
        canUseBrandedContentDiscoveryAsCreator:
            json["can_use_branded_content_discovery_as_creator"],
        canUsePaidPartnershipMessagingAsCreator:
            json["can_use_paid_partnership_messaging_as_creator"],
        category: json["category"],
        categoryId: json["category_id"],
        chainingResults: List<Chaining>.from(
            json["chaining_results"].map((x) => Chaining.fromJson(x))),
        chainingSuggestions: List<Chaining>.from(
            json["chaining_suggestions"].map((x) => Chaining.fromJson(x))),
        chainingUpsellCards:
            List<dynamic>.from(json["chaining_upsell_cards"].map((x) => x)),
        contactPhoneNumber: json["contact_phone_number"],
        creatorShoppingInfo:
            CreatorShoppingInfo.fromJson(json["creator_shopping_info"]),
        currentCatalogId: json["current_catalog_id"],
        directMessaging: json["direct_messaging"],
        enableAddSchoolInEditProfile: json["enable_add_school_in_edit_profile"],
        existingUserAgeCollectionEnabled:
            json["existing_user_age_collection_enabled"],
        externalUrl: json["external_url"],
        fanClubInfo: FanClubInfo.fromJson(json["fan_club_info"]),
        fbidV2: json["fbid_v2"],
        feedPostReshareDisabled: json["feed_post_reshare_disabled"],
        followFrictionType: json["follow_friction_type"],
        followerCount: json["follower_count"],
        followingCount: json["following_count"],
        fullName: json["full_name"],
        hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
        hasBiographyTranslation: json["has_biography_translation"],
        hasChaining: json["has_chaining"],
        hasChains: json["has_chains"],
        hasCollabCollections: json["has_collab_collections"],
        hasEverSelectedTopics: json["has_ever_selected_topics"],
        hasExclusiveFeedContent: json["has_exclusive_feed_content"],
        hasFanClubSubscriptions: json["has_fan_club_subscriptions"],
        hasGenAiPersonasForProfileBanner:
            json["has_gen_ai_personas_for_profile_banner"],
        hasGuides: json["has_guides"],
        hasHighlightReels: json["has_highlight_reels"],
        hasIgProfile: json["has_ig_profile"],
        hasLegacyBbPendingProfilePictureUpdate:
            json["has_legacy_bb_pending_profile_picture_update"],
        hasMusicOnProfile: json["has_music_on_profile"],
        hasMv4BPendingProfilePictureUpdate:
            json["has_mv4b_pending_profile_picture_update"],
        hasNmeBadge: json["has_nme_badge"],
        hasPrivateCollections: json["has_private_collections"],
        hasPublicTabThreads: json["has_public_tab_threads"],
        hasVideos: json["has_videos"],
        hasViewsFetching: json["has_views_fetching"],
        hdProfilePicUrlInfo:
            HdProfilePic.fromJson(json["hd_profile_pic_url_info"]),
        hdProfilePicVersions: List<HdProfilePic>.from(
            json["hd_profile_pic_versions"]
                .map((x) => HdProfilePic.fromJson(x))),
        highlightReshareDisabled: json["highlight_reshare_disabled"],
        highlightsTrayType: json["highlights_tray_type"],
        id: json["id"],
        includeDirectBlacklistStatus: json["include_direct_blacklist_status"],
        instagramPk: json["instagram_pk"],
        dynamiceropMessagingUserFbid:
            json["dynamicerop_messaging_user_fbid"]?.todynamic(),
        isActiveOnTextPostApp: json["is_active_on_text_post_app"],
        isAutoConfirmEnabledForAllReciprocalFollowRequests:
            json["is_auto_confirm_enabled_for_all_reciprocal_follow_requests"],
        isBestie: json["is_bestie"],
        isBusiness: json["is_business"],
        isCallToActionEnabled: json["is_call_to_action_enabled"],
        isCategoryTappable: json["is_category_tappable"],
        isCreatorAgentEnabled: json["is_creator_agent_enabled"],
        isDirectRollCallEnabled: json["is_direct_roll_call_enabled"],
        isEligibleForDiverseOwnedBusinessInfo:
            json["is_eligible_for_diverse_owned_business_info"],
        isEligibleForMetaVerifiedEnhancedLinkSheet:
            json["is_eligible_for_meta_verified_enhanced_link_sheet"],
        isEligibleForMetaVerifiedEnhancedLinkSheetConsumption: json[
            "is_eligible_for_meta_verified_enhanced_link_sheet_consumption"],
        isEligibleForMetaVerifiedLabel:
            json["is_eligible_for_meta_verified_label"],
        isEligibleForMetaVerifiedLinksInReels:
            json["is_eligible_for_meta_verified_links_in_reels"],
        isEligibleForMetaVerifiedMultipleAddressesConsumption: json[
            "is_eligible_for_meta_verified_multiple_addresses_consumption"],
        isEligibleForMetaVerifiedMultipleAddressesCreation:
            json["is_eligible_for_meta_verified_multiple_addresses_creation"],
        isEligibleForMetaVerifiedRelatedAccounts:
            json["is_eligible_for_meta_verified_related_accounts"],
        isEligibleForPostBoostMvUpsell:
            json["is_eligible_for_post_boost_mv_upsell"],
        isEligibleForRequestMessage: json["is_eligible_for_request_message"],
        isEligibleToDisplayDiverseOwnedBusinessInfo:
            json["is_eligible_to_display_diverse_owned_business_info"],
        isFavorite: json["is_favorite"],
        isFavoriteForClips: json["is_favorite_for_clips"],
        isFavoriteForHighlights: json["is_favorite_for_highlights"],
        isFavoriteForIgtv: json["is_favorite_for_igtv"],
        isFavoriteForStories: json["is_favorite_for_stories"],
        isInCanada: json["is_in_canada"],
        isdynamicerestAccount: json["is_dynamicerest_account"],
        isLegacyVerifiedMaxProfilePicEditReached:
            json["is_legacy_verified_max_profile_pic_edit_reached"],
        isMemorialized: json["is_memorialized"],
        isMetaVerifiedRelatedAccountsDisplayEnabled:
            json["is_meta_verified_related_accounts_display_enabled"],
        isMv4BApplicationMaturedForProfileEdit:
            json["is_mv4b_application_matured_for_profile_edit"],
        isMv4BBizAssetProfileLocked: json["is_mv4b_biz_asset_profile_locked"],
        isMv4BMaxProfileEditReached: json["is_mv4b_max_profile_edit_reached"],
        isNewToInstagram: json["is_new_to_instagram"],
        isOpalEnabled: json["is_opal_enabled"],
        isOpenToCollab: json["is_open_to_collab"],
        isOregonCustomGenderConsented:
            json["is_oregon_custom_gender_consented"],
        isParentingAccount: json["is_parenting_account"],
        isPotentialBusiness: json["is_potential_business"],
        isPrivate: json["is_private"],
        isProfileAudioCallEnabled: json["is_profile_audio_call_enabled"],
        isProfileBroadcastSharingEnabled:
            json["is_profile_broadcast_sharing_enabled"],
        isProfilePictureExpansionEnabled:
            json["is_profile_picture_expansion_enabled"],
        isReconAdCtaOnProfileEligibleWithViewer:
            json["is_recon_ad_cta_on_profile_eligible_with_viewer"],
        isRegulatedC18: json["is_regulated_c18"],
        isRegulatedNewsInViewerLocation:
            json["is_regulated_news_in_viewer_location"],
        isRemixSettingEnabledForPosts:
            json["is_remix_setting_enabled_for_posts"],
        isRemixSettingEnabledForReels:
            json["is_remix_setting_enabled_for_reels"],
        isSecondaryAccountCreation: json["is_secondary_account_creation"],
        isStoriesTeaserMuted: json["is_stories_teaser_muted"],
        isSupervisionFeaturesEnabled: json["is_supervision_features_enabled"],
        isVerified: json["is_verified"],
        isWhatsappLinked: json["is_whatsapp_linked"],
        latestBestiesReelMedia: json["latest_besties_reel_media"],
        latestReelMedia: json["latest_reel_media"],
        liveSubscriptionStatus: json["live_subscription_status"],
        locationData: LocationData.fromJson(json["location_data"]),
        mediaCount: json["media_count"],
        merchantCheckoutStyle: json["merchant_checkout_style"],
        metaVerifiedBenefitsInfo: MetaVerifiedBenefitsInfo.fromJson(
            json["meta_verified_benefits_info"]),
        metaVerifiedRelatedAccountsCount:
            json["meta_verified_related_accounts_count"],
        nametag: Nametag.fromJson(json["nametag"]),
        nonproCanMaybeSeeProfileHypercard:
            json["nonpro_can_maybe_see_profile_hypercard"],
        notMetaVerifiedFrictionInfo: NotMetaVerifiedFrictionInfo.fromJson(
            json["not_meta_verified_friction_info"]),
        openExternalUrlWithInAppBrowser:
            json["open_external_url_with_in_app_browser"],
        pageId: json["page_id"],
        pageName: json["page_name"],
        pinnedChannelsInfo:
            PinnedChannelsInfo.fromJson(json["pinned_channels_info"]),
        primaryProfileLinkType: json["primary_profile_link_type"],
        professionalConversionSuggestedAccountType:
            json["professional_conversion_suggested_account_type"],
        profileContext: json["profile_context"],
        profileContextFacepileUsers: List<dynamic>.from(
            json["profile_context_facepile_users"].map((x) => x)),
        profileContextLinksWithUserIds: List<dynamic>.from(
            json["profile_context_links_with_user_ids"].map((x) => x)),
        profilePicGenaiToolInfo: List<dynamic>.from(
            json["profile_pic_genai_tool_info"].map((x) => x)),
        profilePicId: json["profile_pic_id"],
        profilePicUrl: json["profile_pic_url"],
        profilePicUrlHd: json["profile_pic_url_hd"],
        profileReelsSortingEligibility:
            json["profile_reels_sorting_eligibility"],
        profileType: json["profile_type"],
        pronouns: List<dynamic>.from(json["pronouns"].map((x) => x)),
        publicEmail: json["public_email"],
        publicPhoneCountryCode: json["public_phone_country_code"],
        publicPhoneNumber: json["public_phone_number"],
        reconFeatures: ReconFeatures.fromJson(json["recon_features"]),
        recsFromFriends: RecsFromFriends.fromJson(json["recs_from_friends"]),
        relevantNewsRegulationLocations: List<dynamic>.from(
            json["relevant_news_regulation_locations"].map((x) => x)),
        removeMessageEntrypodynamic: json["remove_message_entrypodynamic"],
        sellerShoppableFeedType: json["seller_shoppable_feed_type"],
        showAccountTransparencyDetails:
            json["show_account_transparency_details"],
        showBlueBadgeOnMainProfile: json["show_blue_badge_on_main_profile"],
        showPostInsightsEntryPodynamic:
            json["show_post_insights_entry_podynamic"],
        showSchoolsBadge: json["show_schools_badge"],
        showShoppableFeed: json["show_shoppable_feed"],
        spamFollowerSettingEnabled: json["spam_follower_setting_enabled"],
        textAppLastVisitedTime: json["text_app_last_visited_time"],
        textPostAppBadgeLabel: json["text_post_app_badge_label"],
        textPostNewPostCount: json["text_post_new_post_count"],
        thirdPartyDownloadsEnabled: json["third_party_downloads_enabled"],
        threadsProfileGlyphUrl: json["threads_profile_glyph_url"],
        totalArEffects: json["total_ar_effects"],
        totalIgtvVideos: json["total_igtv_videos"],
        transparencyProductEnabled: json["transparency_product_enabled"],
        upcomingEvents:
            List<dynamic>.from(json["upcoming_events"].map((x) => x)),
        username: json["username"],
        viewsOnGridStatus: json["views_on_grid_status"],
      );

  Map<dynamic, dynamic> toJson() => {
        "about": about,
        "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
        "account_category": accountCategory,
        "account_type": accountType,
        "active_standalone_fundraisers": activeStandaloneFundraisers.toJson(),
        "additional_business_addresses":
            List<dynamic>.from(additionalBusinessAddresses.map((x) => x)),
        "adjusted_banners_order":
            List<dynamic>.from(adjustedBannersOrder.map((x) => x)),
        "ads_incentive_expiration_date": adsIncentiveExpirationDate,
        "ads_page_id": adsPageId,
        "ads_page_name": adsPageName,
        "auto_expand_chaining": autoExpandChaining,
        "avatar_status": avatarStatus.toJson(),
        "bio_links": List<dynamic>.from(bioLinks.map((x) => x)),
        "biography": biography,
        "biography_email": biographyEmail,
        "biography_with_entities": biographyWithEntities.toJson(),
        "birthday_today_visibility_for_viewer":
            birthdayTodayVisibilityForViewer,
        "business_contact_method": businessContactMethod,
        "can_add_fb_group_link_on_profile": canAddFbGroupLinkOnProfile,
        "can_hide_category": canHideCategory,
        "can_hide_public_contacts": canHidePublicContacts,
        "can_use_affiliate_partnership_messaging_as_brand":
            canUseAffiliatePartnershipMessagingAsBrand,
        "can_use_affiliate_partnership_messaging_as_creator":
            canUseAffiliatePartnershipMessagingAsCreator,
        "can_use_branded_content_discovery_as_brand":
            canUseBrandedContentDiscoveryAsBrand,
        "can_use_branded_content_discovery_as_creator":
            canUseBrandedContentDiscoveryAsCreator,
        "can_use_paid_partnership_messaging_as_creator":
            canUsePaidPartnershipMessagingAsCreator,
        "category": category,
        "category_id": categoryId,
        "chaining_results":
            List<dynamic>.from(chainingResults.map((x) => x.toJson())),
        "chaining_suggestions":
            List<dynamic>.from(chainingSuggestions.map((x) => x.toJson())),
        "chaining_upsell_cards":
            List<dynamic>.from(chainingUpsellCards.map((x) => x)),
        "contact_phone_number": contactPhoneNumber,
        "creator_shopping_info": creatorShoppingInfo.toJson(),
        "current_catalog_id": currentCatalogId,
        "direct_messaging": directMessaging,
        "enable_add_school_in_edit_profile": enableAddSchoolInEditProfile,
        "existing_user_age_collection_enabled":
            existingUserAgeCollectionEnabled,
        "external_url": externalUrl,
        "fan_club_info": fanClubInfo.toJson(),
        "fbid_v2": fbidV2,
        "feed_post_reshare_disabled": feedPostReshareDisabled,
        "follow_friction_type": followFrictionType,
        "follower_count": followerCount,
        "following_count": followingCount,
        "full_name": fullName,
        "has_anonymous_profile_picture": hasAnonymousProfilePicture,
        "has_biography_translation": hasBiographyTranslation,
        "has_chaining": hasChaining,
        "has_chains": hasChains,
        "has_collab_collections": hasCollabCollections,
        "has_ever_selected_topics": hasEverSelectedTopics,
        "has_exclusive_feed_content": hasExclusiveFeedContent,
        "has_fan_club_subscriptions": hasFanClubSubscriptions,
        "has_gen_ai_personas_for_profile_banner":
            hasGenAiPersonasForProfileBanner,
        "has_guides": hasGuides,
        "has_highlight_reels": hasHighlightReels,
        "has_ig_profile": hasIgProfile,
        "has_legacy_bb_pending_profile_picture_update":
            hasLegacyBbPendingProfilePictureUpdate,
        "has_music_on_profile": hasMusicOnProfile,
        "has_mv4b_pending_profile_picture_update":
            hasMv4BPendingProfilePictureUpdate,
        "has_nme_badge": hasNmeBadge,
        "has_private_collections": hasPrivateCollections,
        "has_public_tab_threads": hasPublicTabThreads,
        "has_videos": hasVideos,
        "has_views_fetching": hasViewsFetching,
        "hd_profile_pic_url_info": hdProfilePicUrlInfo.toJson(),
        "hd_profile_pic_versions":
            List<dynamic>.from(hdProfilePicVersions.map((x) => x.toJson())),
        "highlight_reshare_disabled": highlightReshareDisabled,
        "highlights_tray_type": highlightsTrayType,
        "id": id,
        "include_direct_blacklist_status": includeDirectBlacklistStatus,
        "instagram_pk": instagramPk,
        "dynamicerop_messaging_user_fbid": dynamiceropMessagingUserFbid,
        "is_active_on_text_post_app": isActiveOnTextPostApp,
        "is_auto_confirm_enabled_for_all_reciprocal_follow_requests":
            isAutoConfirmEnabledForAllReciprocalFollowRequests,
        "is_bestie": isBestie,
        "is_business": isBusiness,
        "is_call_to_action_enabled": isCallToActionEnabled,
        "is_category_tappable": isCategoryTappable,
        "is_creator_agent_enabled": isCreatorAgentEnabled,
        "is_direct_roll_call_enabled": isDirectRollCallEnabled,
        "is_eligible_for_diverse_owned_business_info":
            isEligibleForDiverseOwnedBusinessInfo,
        "is_eligible_for_meta_verified_enhanced_link_sheet":
            isEligibleForMetaVerifiedEnhancedLinkSheet,
        "is_eligible_for_meta_verified_enhanced_link_sheet_consumption":
            isEligibleForMetaVerifiedEnhancedLinkSheetConsumption,
        "is_eligible_for_meta_verified_label": isEligibleForMetaVerifiedLabel,
        "is_eligible_for_meta_verified_links_in_reels":
            isEligibleForMetaVerifiedLinksInReels,
        "is_eligible_for_meta_verified_multiple_addresses_consumption":
            isEligibleForMetaVerifiedMultipleAddressesConsumption,
        "is_eligible_for_meta_verified_multiple_addresses_creation":
            isEligibleForMetaVerifiedMultipleAddressesCreation,
        "is_eligible_for_meta_verified_related_accounts":
            isEligibleForMetaVerifiedRelatedAccounts,
        "is_eligible_for_post_boost_mv_upsell": isEligibleForPostBoostMvUpsell,
        "is_eligible_for_request_message": isEligibleForRequestMessage,
        "is_eligible_to_display_diverse_owned_business_info":
            isEligibleToDisplayDiverseOwnedBusinessInfo,
        "is_favorite": isFavorite,
        "is_favorite_for_clips": isFavoriteForClips,
        "is_favorite_for_highlights": isFavoriteForHighlights,
        "is_favorite_for_igtv": isFavoriteForIgtv,
        "is_favorite_for_stories": isFavoriteForStories,
        "is_in_canada": isInCanada,
        "is_dynamicerest_account": isdynamicerestAccount,
        "is_legacy_verified_max_profile_pic_edit_reached":
            isLegacyVerifiedMaxProfilePicEditReached,
        "is_memorialized": isMemorialized,
        "is_meta_verified_related_accounts_display_enabled":
            isMetaVerifiedRelatedAccountsDisplayEnabled,
        "is_mv4b_application_matured_for_profile_edit":
            isMv4BApplicationMaturedForProfileEdit,
        "is_mv4b_biz_asset_profile_locked": isMv4BBizAssetProfileLocked,
        "is_mv4b_max_profile_edit_reached": isMv4BMaxProfileEditReached,
        "is_new_to_instagram": isNewToInstagram,
        "is_opal_enabled": isOpalEnabled,
        "is_open_to_collab": isOpenToCollab,
        "is_oregon_custom_gender_consented": isOregonCustomGenderConsented,
        "is_parenting_account": isParentingAccount,
        "is_potential_business": isPotentialBusiness,
        "is_private": isPrivate,
        "is_profile_audio_call_enabled": isProfileAudioCallEnabled,
        "is_profile_broadcast_sharing_enabled":
            isProfileBroadcastSharingEnabled,
        "is_profile_picture_expansion_enabled":
            isProfilePictureExpansionEnabled,
        "is_recon_ad_cta_on_profile_eligible_with_viewer":
            isReconAdCtaOnProfileEligibleWithViewer,
        "is_regulated_c18": isRegulatedC18,
        "is_regulated_news_in_viewer_location": isRegulatedNewsInViewerLocation,
        "is_remix_setting_enabled_for_posts": isRemixSettingEnabledForPosts,
        "is_remix_setting_enabled_for_reels": isRemixSettingEnabledForReels,
        "is_secondary_account_creation": isSecondaryAccountCreation,
        "is_stories_teaser_muted": isStoriesTeaserMuted,
        "is_supervision_features_enabled": isSupervisionFeaturesEnabled,
        "is_verified": isVerified,
        "is_whatsapp_linked": isWhatsappLinked,
        "latest_besties_reel_media": latestBestiesReelMedia,
        "latest_reel_media": latestReelMedia,
        "live_subscription_status": liveSubscriptionStatus,
        "location_data": locationData.toJson(),
        "media_count": mediaCount,
        "merchant_checkout_style": merchantCheckoutStyle,
        "meta_verified_benefits_info": metaVerifiedBenefitsInfo.toJson(),
        "meta_verified_related_accounts_count":
            metaVerifiedRelatedAccountsCount,
        "nametag": nametag.toJson(),
        "nonpro_can_maybe_see_profile_hypercard":
            nonproCanMaybeSeeProfileHypercard,
        "not_meta_verified_friction_info": notMetaVerifiedFrictionInfo.toJson(),
        "open_external_url_with_in_app_browser":
            openExternalUrlWithInAppBrowser,
        "page_id": pageId,
        "page_name": pageName,
        "pinned_channels_info": pinnedChannelsInfo.toJson(),
        "primary_profile_link_type": primaryProfileLinkType,
        "professional_conversion_suggested_account_type":
            professionalConversionSuggestedAccountType,
        "profile_context": profileContext,
        "profile_context_facepile_users":
            List<dynamic>.from(profileContextFacepileUsers.map((x) => x)),
        "profile_context_links_with_user_ids":
            List<dynamic>.from(profileContextLinksWithUserIds.map((x) => x)),
        "profile_pic_genai_tool_info":
            List<dynamic>.from(profilePicGenaiToolInfo.map((x) => x)),
        "profile_pic_id": profilePicId,
        "profile_pic_url": profilePicUrl,
        "profile_pic_url_hd": profilePicUrlHd,
        "profile_reels_sorting_eligibility": profileReelsSortingEligibility,
        "profile_type": profileType,
        "pronouns": List<dynamic>.from(pronouns.map((x) => x)),
        "public_email": publicEmail,
        "public_phone_country_code": publicPhoneCountryCode,
        "public_phone_number": publicPhoneNumber,
        "recon_features": reconFeatures.toJson(),
        "recs_from_friends": recsFromFriends.toJson(),
        "relevant_news_regulation_locations":
            List<dynamic>.from(relevantNewsRegulationLocations.map((x) => x)),
        "remove_message_entrypodynamic": removeMessageEntrypodynamic,
        "seller_shoppable_feed_type": sellerShoppableFeedType,
        "show_account_transparency_details": showAccountTransparencyDetails,
        "show_blue_badge_on_main_profile": showBlueBadgeOnMainProfile,
        "show_post_insights_entry_podynamic": showPostInsightsEntryPodynamic,
        "show_schools_badge": showSchoolsBadge,
        "show_shoppable_feed": showShoppableFeed,
        "spam_follower_setting_enabled": spamFollowerSettingEnabled,
        "text_app_last_visited_time": textAppLastVisitedTime,
        "text_post_app_badge_label": textPostAppBadgeLabel,
        "text_post_new_post_count": textPostNewPostCount,
        "third_party_downloads_enabled": thirdPartyDownloadsEnabled,
        "threads_profile_glyph_url": threadsProfileGlyphUrl,
        "total_ar_effects": totalArEffects,
        "total_igtv_videos": totalIgtvVideos,
        "transparency_product_enabled": transparencyProductEnabled,
        "upcoming_events": List<dynamic>.from(upcomingEvents.map((x) => x)),
        "username": username,
        "views_on_grid_status": viewsOnGridStatus,
      };
}

class ActiveStandaloneFundraisers {
  List<dynamic> fundraisers;
  dynamic totalCount;

  ActiveStandaloneFundraisers({
    required this.fundraisers,
    required this.totalCount,
  });

  factory ActiveStandaloneFundraisers.fromJson(Map<dynamic, dynamic> json) =>
      ActiveStandaloneFundraisers(
        fundraisers: List<dynamic>.from(json["fundraisers"].map((x) => x)),
        totalCount: json["total_count"],
      );

  Map<dynamic, dynamic> toJson() => {
        "fundraisers": List<dynamic>.from(fundraisers.map((x) => x)),
        "total_count": totalCount,
      };
}

class AvatarStatus {
  dynamic hasAvatar;

  AvatarStatus({
    required this.hasAvatar,
  });

  factory AvatarStatus.fromJson(Map<dynamic, dynamic> json) => AvatarStatus(
        hasAvatar: json["has_avatar"],
      );

  Map<dynamic, dynamic> toJson() => {
        "has_avatar": hasAvatar,
      };
}

class BiographyWithEntities {
  List<Entity> entities;
  dynamic rawText;

  BiographyWithEntities({
    required this.entities,
    required this.rawText,
  });

  factory BiographyWithEntities.fromJson(Map<dynamic, dynamic> json) =>
      BiographyWithEntities(
        entities:
            List<Entity>.from(json["entities"].map((x) => Entity.fromJson(x))),
        rawText: json["raw_text"],
      );

  Map<dynamic, dynamic> toJson() => {
        "entities": List<dynamic>.from(entities.map((x) => x.toJson())),
        "raw_text": rawText,
      };
}

class Entity {
  User user;

  Entity({
    required this.user,
  });

  factory Entity.fromJson(Map<dynamic, dynamic> json) => Entity(
        user: User.fromJson(json["user"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "user": user.toJson(),
      };
}

class User {
  dynamic id;
  dynamic username;

  User({
    required this.id,
    required this.username,
  });

  factory User.fromJson(Map<dynamic, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
      );

  Map<dynamic, dynamic> toJson() => {
        "id": id,
        "username": username,
      };
}

class Chaining {
  ChainingInfo chainingInfo;
  dynamic fullName;
  dynamic id;
  dynamic isPrivate;
  dynamic isVerified;
  dynamic profileChainingSecondaryLabel;
  dynamic profilePicId;
  dynamic profilePicUrl;
  dynamic socialContext;
  dynamic username;

  Chaining({
    required this.chainingInfo,
    required this.fullName,
    required this.id,
    required this.isPrivate,
    required this.isVerified,
    required this.profileChainingSecondaryLabel,
    this.profilePicId,
    this.profilePicUrl,
    required this.socialContext,
    required this.username,
  });

  factory Chaining.fromJson(Map<dynamic, dynamic> json) => Chaining(
        chainingInfo: ChainingInfo.fromJson(json["chaining_info"]),
        fullName: json["full_name"],
        id: json["id"],
        isPrivate: json["is_private"],
        isVerified: json["is_verified"],
        profileChainingSecondaryLabel: json["profile_chaining_secondary_label"],
        profilePicId: json["profile_pic_id"],
        profilePicUrl: json["profile_pic_url"],
        socialContext: json["social_context"],
        username: json["username"],
      );

  Map<dynamic, dynamic> toJson() => {
        "chaining_info": chainingInfo.toJson(),
        "full_name": fullName,
        "id": id,
        "is_private": isPrivate,
        "is_verified": isVerified,
        "profile_chaining_secondary_label": profileChainingSecondaryLabel,
        "profile_pic_id": profilePicId,
        "profile_pic_url": profilePicUrl,
        "social_context": socialContext,
        "username": username,
      };
}

class ChainingInfo {
  dynamic algorithm;
  dynamic sources;

  ChainingInfo({
    required this.algorithm,
    required this.sources,
  });

  factory ChainingInfo.fromJson(Map<dynamic, dynamic> json) => ChainingInfo(
        algorithm: json["algorithm"],
        sources: json["sources"],
      );

  Map<dynamic, dynamic> toJson() => {
        "algorithm": algorithm,
        "sources": sources,
      };
}

class CreatorShoppingInfo {
  List<dynamic> linkedMerchantAccounts;

  CreatorShoppingInfo({
    required this.linkedMerchantAccounts,
  });

  factory CreatorShoppingInfo.fromJson(Map<dynamic, dynamic> json) =>
      CreatorShoppingInfo(
        linkedMerchantAccounts:
            List<dynamic>.from(json["linked_merchant_accounts"].map((x) => x)),
      );

  Map<dynamic, dynamic> toJson() => {
        "linked_merchant_accounts":
            List<dynamic>.from(linkedMerchantAccounts.map((x) => x)),
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

class HdProfilePic {
  dynamic height;
  dynamic url;
  dynamic width;

  HdProfilePic({
    required this.height,
    required this.url,
    required this.width,
  });

  factory HdProfilePic.fromJson(Map<dynamic, dynamic> json) => HdProfilePic(
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

class LocationData {
  dynamic addressStreet;
  dynamic cityId;
  dynamic cityName;
  dynamic instagramLocationId;
  dynamic latitude;
  dynamic longitude;
  dynamic zip;

  LocationData({
    required this.addressStreet,
    required this.cityId,
    required this.cityName,
    required this.instagramLocationId,
    required this.latitude,
    required this.longitude,
    required this.zip,
  });

  factory LocationData.fromJson(Map<dynamic, dynamic> json) => LocationData(
        addressStreet: json["address_street"],
        cityId: json["city_id"],
        cityName: json["city_name"],
        instagramLocationId: json["instagram_location_id"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        zip: json["zip"],
      );

  Map<dynamic, dynamic> toJson() => {
        "address_street": addressStreet,
        "city_id": cityId,
        "city_name": cityName,
        "instagram_location_id": instagramLocationId,
        "latitude": latitude,
        "longitude": longitude,
        "zip": zip,
      };
}

class MetaVerifiedBenefitsInfo {
  dynamic isEligibleForMetaVerifiedContentProtection;

  MetaVerifiedBenefitsInfo({
    required this.isEligibleForMetaVerifiedContentProtection,
  });

  factory MetaVerifiedBenefitsInfo.fromJson(Map<dynamic, dynamic> json) =>
      MetaVerifiedBenefitsInfo(
        isEligibleForMetaVerifiedContentProtection:
            json["is_eligible_for_meta_verified_content_protection"],
      );

  Map<dynamic, dynamic> toJson() => {
        "is_eligible_for_meta_verified_content_protection":
            isEligibleForMetaVerifiedContentProtection,
      };
}

class Nametag {
  List<dynamic> availableThemeColors;
  dynamic backgroundImageUrl;
  dynamic emoji;
  dynamic emojiColor;
  dynamic gradient;
  dynamic isBackgroundImageBlurred;
  dynamic mode;
  dynamic selectedThemeColor;
  dynamic selfieSticker;
  dynamic selfieUrl;
  ThemeColor themeColor;

  Nametag({
    required this.availableThemeColors,
    required this.backgroundImageUrl,
    required this.emoji,
    required this.emojiColor,
    required this.gradient,
    required this.isBackgroundImageBlurred,
    required this.mode,
    required this.selectedThemeColor,
    required this.selfieSticker,
    required this.selfieUrl,
    required this.themeColor,
  });

  factory Nametag.fromJson(Map<dynamic, dynamic> json) => Nametag(
        availableThemeColors:
            List<dynamic>.from(json["available_theme_colors"].map((x) => x)),
        backgroundImageUrl: json["background_image_url"],
        emoji: json["emoji"],
        emojiColor: json["emoji_color"],
        gradient: json["gradient"],
        isBackgroundImageBlurred: json["is_background_image_blurred"],
        mode: json["mode"],
        selectedThemeColor: json["selected_theme_color"],
        selfieSticker: json["selfie_sticker"],
        selfieUrl: json["selfie_url"],
        themeColor: ThemeColor.fromJson(json["theme_color"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "available_theme_colors":
            List<dynamic>.from(availableThemeColors.map((x) => x)),
        "background_image_url": backgroundImageUrl,
        "emoji": emoji,
        "emoji_color": emojiColor,
        "gradient": gradient,
        "is_background_image_blurred": isBackgroundImageBlurred,
        "mode": mode,
        "selected_theme_color": selectedThemeColor,
        "selfie_sticker": selfieSticker,
        "selfie_url": selfieUrl,
        "theme_color": themeColor.toJson(),
      };
}

class ThemeColor {
  List<SelectedThemeColorElement> availableThemeColors;
  SelectedThemeColorElement selectedThemeColor;

  ThemeColor({
    required this.availableThemeColors,
    required this.selectedThemeColor,
  });

  factory ThemeColor.fromJson(Map<dynamic, dynamic> json) => ThemeColor(
        availableThemeColors: List<SelectedThemeColorElement>.from(
            json["available_theme_colors"]
                .map((x) => SelectedThemeColorElement.fromJson(x))),
        selectedThemeColor:
            SelectedThemeColorElement.fromJson(json["selected_theme_color"]),
      );

  Map<dynamic, dynamic> toJson() => {
        "available_theme_colors":
            List<dynamic>.from(availableThemeColors.map((x) => x.toJson())),
        "selected_theme_color": selectedThemeColor.toJson(),
      };
}

class SelectedThemeColorElement {
  dynamic displayLabel;
  dynamic dynamicValue;

  SelectedThemeColorElement({
    required this.displayLabel,
    required this.dynamicValue,
  });

  factory SelectedThemeColorElement.fromJson(Map<dynamic, dynamic> json) =>
      SelectedThemeColorElement(
        displayLabel: json["display_label"],
        dynamicValue: json["dynamic_value"],
      );

  Map<dynamic, dynamic> toJson() => {
        "display_label": displayLabel,
        "dynamic_value": dynamicValue,
      };
}

class NotMetaVerifiedFrictionInfo {
  dynamic isEligibleForLabelFriction;
  dynamic labelFrictionContent;

  NotMetaVerifiedFrictionInfo({
    required this.isEligibleForLabelFriction,
    required this.labelFrictionContent,
  });

  factory NotMetaVerifiedFrictionInfo.fromJson(Map<dynamic, dynamic> json) =>
      NotMetaVerifiedFrictionInfo(
        isEligibleForLabelFriction: json["is_eligible_for_label_friction"],
        labelFrictionContent: json["label_friction_content"],
      );

  Map<dynamic, dynamic> toJson() => {
        "is_eligible_for_label_friction": isEligibleForLabelFriction,
        "label_friction_content": labelFrictionContent,
      };
}

class PinnedChannelsInfo {
  dynamic hasPublicChannels;
  List<dynamic> pinnedChannelsList;

  PinnedChannelsInfo({
    required this.hasPublicChannels,
    required this.pinnedChannelsList,
  });

  factory PinnedChannelsInfo.fromJson(Map<dynamic, dynamic> json) =>
      PinnedChannelsInfo(
        hasPublicChannels: json["has_public_channels"],
        pinnedChannelsList:
            List<dynamic>.from(json["pinned_channels_list"].map((x) => x)),
      );

  Map<dynamic, dynamic> toJson() => {
        "has_public_channels": hasPublicChannels,
        "pinned_channels_list":
            List<dynamic>.from(pinnedChannelsList.map((x) => x)),
      };
}

class ReconFeatures {
  dynamic enableReconCta;

  ReconFeatures({
    required this.enableReconCta,
  });

  factory ReconFeatures.fromJson(Map<dynamic, dynamic> json) => ReconFeatures(
        enableReconCta: json["enable_recon_cta"],
      );

  Map<dynamic, dynamic> toJson() => {
        "enable_recon_cta": enableReconCta,
      };
}

class RecsFromFriends {
  dynamic enableRecsFromFriends;
  dynamic recsFromFriendsEntryPodynamicType;

  RecsFromFriends({
    required this.enableRecsFromFriends,
    required this.recsFromFriendsEntryPodynamicType,
  });

  factory RecsFromFriends.fromJson(Map<dynamic, dynamic> json) =>
      RecsFromFriends(
        enableRecsFromFriends: json["enable_recs_from_friends"],
        recsFromFriendsEntryPodynamicType:
            json["recs_from_friends_entry_podynamic_type"],
      );

  Map<dynamic, dynamic> toJson() => {
        "enable_recs_from_friends": enableRecsFromFriends,
        "recs_from_friends_entry_podynamic_type":
            recsFromFriendsEntryPodynamicType,
      };
}
