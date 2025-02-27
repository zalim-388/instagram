class ProfileModel {
  Data? data;

  ProfileModel({this.data});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
  }

  static List<ProfileModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(ProfileModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  dynamic about;
  List<dynamic>? accountBadges;
  String? accountCategory;
  dynamic accountType;
  ActiveStandaloneFundraisers? activeStandaloneFundraisers;
  List<dynamic>? additionalBusinessAddresses;
  List<dynamic>? adjustedBannersOrder;
  dynamic adsIncentiveExpirationDate;
  dynamic adsPageId;
  dynamic adsPageName;
  bool? autoExpandChaining;
  AvatarStatus? avatarStatus;
  List<BioLinks>? bioLinks;
  String? biography;
  dynamic biographyEmail;
  BiographyWithEntities? biographyWithEntities;
  String? birthdayTodayVisibilityForViewer;
  String? businessContactMethod;
  bool? canAddFbGroupLinkOnProfile;
  bool? canHideCategory;
  bool? canHidePublicContacts;
  bool? canUseAffiliatePartnershipMessagingAsBrand;
  bool? canUseAffiliatePartnershipMessagingAsCreator;
  bool? canUseBrandedContentDiscoveryAsBrand;
  bool? canUseBrandedContentDiscoveryAsCreator;
  bool? canUsePaidPartnershipMessagingAsCreator;
  String? category;
  dynamic categoryId;
  List<ChainingResults>? chainingResults;
  List<ChainingSuggestions>? chainingSuggestions;
  List<dynamic>? chainingUpsellCards;
  String? contactPhoneNumber;
  dynamic currentCatalogId;
  String? directMessaging;
  bool? enableAddSchoolInEditProfile;
  bool? existingUserAgeCollectionEnabled;
  String? externalLynxUrl;
  String? externalUrl;
  FanClubInfo? fanClubInfo;
  String? fbidV2;
  bool? feedPostReshareDisabled;
  dynamic followFrictionType;
  dynamic followerCount;
  dynamic followingCount;
  String? fullName;
  bool? hasAnonymousProfilePicture;
  bool? hasBiographyTranslation;
  bool? hasChaining;
  bool? hasChains;
  bool? hasCollabCollections;
  bool? hasEverSelectedTopics;
  bool? hasExclusiveFeedContent;
  bool? hasFanClubSubscriptions;
  bool? hasGenAiPersonasForProfileBanner;
  bool? hasGuides;
  bool? hasHighlightReels;
  bool? hasIgProfile;
  bool? hasLegacyBbPendingProfilePictureUpdate;
  bool? hasMusicOnProfile;
  bool? hasMv4BPendingProfilePictureUpdate;
  bool? hasNmeBadge;
  bool? hasPrivateCollections;
  bool? hasPublicTabThreads;
  bool? hasVideos;
  bool? hasViewsFetching;
  HdProfilePicUrlInfo? hdProfilePicUrlInfo;
  List<HdProfilePicVersions>? hdProfilePicVersions;
  bool? highlightReshareDisabled;
  String? highlightsTrayType;
  String? id;
  bool? includeDirectBlacklistStatus;
  String? instagramPk;
  dynamic interopMessagingUserFbid;
  bool? isActiveOnTextPostApp;
  bool? isAutoConfirmEnabledForAllReciprocalFollowRequests;
  bool? isBestie;
  bool? isBusiness;
  bool? isCallToActionEnabled;
  bool? isCategoryTappable;
  bool? isCreatorAgentEnabled;
  bool? isDirectRollCallEnabled;
  bool? isEligibleForDiverseOwnedBusinessInfo;
  bool? isEligibleForMetaVerifiedEnhancedLinkSheet;
  bool? isEligibleForMetaVerifiedEnhancedLinkSheetConsumption;
  bool? isEligibleForMetaVerifiedLabel;
  bool? isEligibleForMetaVerifiedLinksInReels;
  bool? isEligibleForMetaVerifiedMultipleAddressesConsumption;
  bool? isEligibleForMetaVerifiedMultipleAddressesCreation;
  bool? isEligibleForMetaVerifiedRelatedAccounts;
  bool? isEligibleForPostBoostMvUpsell;
  bool? isEligibleForRequestMessage;
  bool? isEligibleToDisplayDiverseOwnedBusinessInfo;
  bool? isFavorite;
  bool? isFavoriteForClips;
  bool? isFavoriteForHighlights;
  bool? isFavoriteForIgtv;
  bool? isFavoriteForStories;
  bool? isInCanada;
  bool? isInterestAccount;
  bool? isLegacyVerifiedMaxProfilePicEditReached;
  bool? isMemorialized;
  bool? isMetaVerifiedRelatedAccountsDisplayEnabled;
  bool? isMv4BApplicationMaturedForProfileEdit;
  bool? isMv4BBizAssetProfileLocked;
  bool? isMv4BMaxProfileEditReached;
  bool? isNewToInstagram;
  bool? isOpalEnabled;
  bool? isOpenToCollab;
  bool? isOregonCustomGenderConsented;
  bool? isParentingAccount;
  bool? isPotentialBusiness;
  bool? isPrivate;
  bool? isProfileAudioCallEnabled;
  bool? isProfileBroadcastSharingEnabled;
  bool? isProfilePictureExpansionEnabled;
  bool? isReconAdCtaOnProfileEligibleWithViewer;
  bool? isRegulatedC18;
  bool? isRegulatedNewsInViewerLocation;
  bool? isRemixSettingEnabledForPosts;
  bool? isRemixSettingEnabledForReels;
  bool? isSecondaryAccountCreation;
  bool? isStoriesTeaserMuted;
  bool? isSupervisionFeaturesEnabled;
  bool? isVerified;
  bool? isWhatsappLinked;
  dynamic latestBestiesReelMedia;
  dynamic latestReelMedia;
  String? liveSubscriptionStatus;
  LocationData? locationData;
  dynamic mediaCount;
  MetaVerifiedBenefitsInfo? metaVerifiedBenefitsInfo;
  dynamic metaVerifiedRelatedAccountsCount;
  Nametag? nametag;
  bool? nonproCanMaybeSeeProfileHypercard;
  NotMetaVerifiedFrictionInfo? notMetaVerifiedFrictionInfo;
  bool? openExternalUrlWithInAppBrowser;
  dynamic pageId;
  dynamic pageName;
  PinnedChannelsInfo? pinnedChannelsInfo;
  dynamic primaryProfileLinkType;
  dynamic professionalConversionSuggestedAccountType;
  String? profileContext;
  List<dynamic>? profileContextFacepileUsers;
  List<dynamic>? profileContextLinksWithUserIds;
  List<dynamic>? profilePicGenaiToolInfo;
  String? profilePicUrl;
  String? profilePicUrlHd;
  String? profileReelsSortingEligibility;
  dynamic profileType;
  List<dynamic>? pronouns;
  String? publicEmail;
  String? publicPhoneCountryCode;
  String? publicPhoneNumber;
  ReconFeatures? reconFeatures;
  RecsFromFriends? recsFromFriends;
  List<dynamic>? relevantNewsRegulationLocations;
  bool? removeMessageEntrypoint;
  bool? showAccountTransparencyDetails;
  bool? showBlueBadgeOnMainProfile;
  bool? showPostInsightsEntryPoint;
  dynamic showSchoolsBadge;
  bool? spamFollowerSettingEnabled;
  dynamic textAppLastVisitedTime;
  String? textPostAppBadgeLabel;
  dynamic textPostNewPostCount;
  dynamic thirdPartyDownloadsEnabled;
  String? threadsProfileGlyphUrl;
  dynamic totalArEffects;
  dynamic totalIgtvVideos;
  bool? transparencyProductEnabled;
  List<dynamic>? upcomingEvents;
  String? username;
  String? viewsOnGridStatus;

  Data(
      {this.about,
      this.accountBadges,
      this.accountCategory,
      this.accountType,
      this.activeStandaloneFundraisers,
      this.additionalBusinessAddresses,
      this.adjustedBannersOrder,
      this.adsIncentiveExpirationDate,
      this.adsPageId,
      this.adsPageName,
      this.autoExpandChaining,
      this.avatarStatus,
      this.bioLinks,
      this.biography,
      this.biographyEmail,
      this.biographyWithEntities,
      this.birthdayTodayVisibilityForViewer,
      this.businessContactMethod,
      this.canAddFbGroupLinkOnProfile,
      this.canHideCategory,
      this.canHidePublicContacts,
      this.canUseAffiliatePartnershipMessagingAsBrand,
      this.canUseAffiliatePartnershipMessagingAsCreator,
      this.canUseBrandedContentDiscoveryAsBrand,
      this.canUseBrandedContentDiscoveryAsCreator,
      this.canUsePaidPartnershipMessagingAsCreator,
      this.category,
      this.categoryId,
      this.chainingResults,
      this.chainingSuggestions,
      this.chainingUpsellCards,
      this.contactPhoneNumber,
      this.currentCatalogId,
      this.directMessaging,
      this.enableAddSchoolInEditProfile,
      this.existingUserAgeCollectionEnabled,
      this.externalLynxUrl,
      this.externalUrl,
      this.fanClubInfo,
      this.fbidV2,
      this.feedPostReshareDisabled,
      this.followFrictionType,
      this.followerCount,
      this.followingCount,
      this.fullName,
      this.hasAnonymousProfilePicture,
      this.hasBiographyTranslation,
      this.hasChaining,
      this.hasChains,
      this.hasCollabCollections,
      this.hasEverSelectedTopics,
      this.hasExclusiveFeedContent,
      this.hasFanClubSubscriptions,
      this.hasGenAiPersonasForProfileBanner,
      this.hasGuides,
      this.hasHighlightReels,
      this.hasIgProfile,
      this.hasLegacyBbPendingProfilePictureUpdate,
      this.hasMusicOnProfile,
      this.hasMv4BPendingProfilePictureUpdate,
      this.hasNmeBadge,
      this.hasPrivateCollections,
      this.hasPublicTabThreads,
      this.hasVideos,
      this.hasViewsFetching,
      this.hdProfilePicUrlInfo,
      this.hdProfilePicVersions,
      this.highlightReshareDisabled,
      this.highlightsTrayType,
      this.id,
      this.includeDirectBlacklistStatus,
      this.instagramPk,
      this.interopMessagingUserFbid,
      this.isActiveOnTextPostApp,
      this.isAutoConfirmEnabledForAllReciprocalFollowRequests,
      this.isBestie,
      this.isBusiness,
      this.isCallToActionEnabled,
      this.isCategoryTappable,
      this.isCreatorAgentEnabled,
      this.isDirectRollCallEnabled,
      this.isEligibleForDiverseOwnedBusinessInfo,
      this.isEligibleForMetaVerifiedEnhancedLinkSheet,
      this.isEligibleForMetaVerifiedEnhancedLinkSheetConsumption,
      this.isEligibleForMetaVerifiedLabel,
      this.isEligibleForMetaVerifiedLinksInReels,
      this.isEligibleForMetaVerifiedMultipleAddressesConsumption,
      this.isEligibleForMetaVerifiedMultipleAddressesCreation,
      this.isEligibleForMetaVerifiedRelatedAccounts,
      this.isEligibleForPostBoostMvUpsell,
      this.isEligibleForRequestMessage,
      this.isEligibleToDisplayDiverseOwnedBusinessInfo,
      this.isFavorite,
      this.isFavoriteForClips,
      this.isFavoriteForHighlights,
      this.isFavoriteForIgtv,
      this.isFavoriteForStories,
      this.isInCanada,
      this.isInterestAccount,
      this.isLegacyVerifiedMaxProfilePicEditReached,
      this.isMemorialized,
      this.isMetaVerifiedRelatedAccountsDisplayEnabled,
      this.isMv4BApplicationMaturedForProfileEdit,
      this.isMv4BBizAssetProfileLocked,
      this.isMv4BMaxProfileEditReached,
      this.isNewToInstagram,
      this.isOpalEnabled,
      this.isOpenToCollab,
      this.isOregonCustomGenderConsented,
      this.isParentingAccount,
      this.isPotentialBusiness,
      this.isPrivate,
      this.isProfileAudioCallEnabled,
      this.isProfileBroadcastSharingEnabled,
      this.isProfilePictureExpansionEnabled,
      this.isReconAdCtaOnProfileEligibleWithViewer,
      this.isRegulatedC18,
      this.isRegulatedNewsInViewerLocation,
      this.isRemixSettingEnabledForPosts,
      this.isRemixSettingEnabledForReels,
      this.isSecondaryAccountCreation,
      this.isStoriesTeaserMuted,
      this.isSupervisionFeaturesEnabled,
      this.isVerified,
      this.isWhatsappLinked,
      this.latestBestiesReelMedia,
      this.latestReelMedia,
      this.liveSubscriptionStatus,
      this.locationData,
      this.mediaCount,
      this.metaVerifiedBenefitsInfo,
      this.metaVerifiedRelatedAccountsCount,
      this.nametag,
      this.nonproCanMaybeSeeProfileHypercard,
      this.notMetaVerifiedFrictionInfo,
      this.openExternalUrlWithInAppBrowser,
      this.pageId,
      this.pageName,
      this.pinnedChannelsInfo,
      this.primaryProfileLinkType,
      this.professionalConversionSuggestedAccountType,
      this.profileContext,
      this.profileContextFacepileUsers,
      this.profileContextLinksWithUserIds,
      this.profilePicGenaiToolInfo,
      this.profilePicUrl,
      this.profilePicUrlHd,
      this.profileReelsSortingEligibility,
      this.profileType,
      this.pronouns,
      this.publicEmail,
      this.publicPhoneCountryCode,
      this.publicPhoneNumber,
      this.reconFeatures,
      this.recsFromFriends,
      this.relevantNewsRegulationLocations,
      this.removeMessageEntrypoint,
      this.showAccountTransparencyDetails,
      this.showBlueBadgeOnMainProfile,
      this.showPostInsightsEntryPoint,
      this.showSchoolsBadge,
      this.spamFollowerSettingEnabled,
      this.textAppLastVisitedTime,
      this.textPostAppBadgeLabel,
      this.textPostNewPostCount,
      this.thirdPartyDownloadsEnabled,
      this.threadsProfileGlyphUrl,
      this.totalArEffects,
      this.totalIgtvVideos,
      this.transparencyProductEnabled,
      this.upcomingEvents,
      this.username,
      this.viewsOnGridStatus});

  Data.fromJson(Map<String, dynamic> json) {
    about = json["about"];
    accountBadges = json["account_badges"] ?? [];
    accountCategory = json["account_category"];
    accountType = json["account_type"];
    activeStandaloneFundraisers = json["active_standalone_fundraisers"] == null
        ? null
        : ActiveStandaloneFundraisers.fromJson(
            json["active_standalone_fundraisers"]);
    additionalBusinessAddresses = json["additional_business_addresses"] ?? [];
    adjustedBannersOrder = json["adjusted_banners_order"] ?? [];
    adsIncentiveExpirationDate = json["ads_incentive_expiration_date"];
    adsPageId = json["ads_page_id"];
    adsPageName = json["ads_page_name"];
    autoExpandChaining = json["auto_expand_chaining"];
    avatarStatus = json["avatar_status"] == null
        ? null
        : AvatarStatus.fromJson(json["avatar_status"]);
    bioLinks = json["bio_links"] == null
        ? null
        : (json["bio_links"] as List).map((e) => BioLinks.fromJson(e)).toList();
    biography = json["biography"];
    biographyEmail = json["biography_email"];
    biographyWithEntities = json["biography_with_entities"] == null
        ? null
        : BiographyWithEntities.fromJson(json["biography_with_entities"]);
    birthdayTodayVisibilityForViewer =
        json["birthday_today_visibility_for_viewer"];
    businessContactMethod = json["business_contact_method"];
    canAddFbGroupLinkOnProfile = json["can_add_fb_group_link_on_profile"];
    canHideCategory = json["can_hide_category"];
    canHidePublicContacts = json["can_hide_public_contacts"];
    canUseAffiliatePartnershipMessagingAsBrand =
        json["can_use_affiliate_partnership_messaging_as_brand"];
    canUseAffiliatePartnershipMessagingAsCreator =
        json["can_use_affiliate_partnership_messaging_as_creator"];
    canUseBrandedContentDiscoveryAsBrand =
        json["can_use_branded_content_discovery_as_brand"];
    canUseBrandedContentDiscoveryAsCreator =
        json["can_use_branded_content_discovery_as_creator"];
    canUsePaidPartnershipMessagingAsCreator =
        json["can_use_paid_partnership_messaging_as_creator"];
    category = json["category"];
    categoryId = json["category_id"];
    chainingResults = json["chaining_results"] == null
        ? null
        : (json["chaining_results"] as List)
            .map((e) => ChainingResults.fromJson(e))
            .toList();
    chainingSuggestions = json["chaining_suggestions"] == null
        ? null
        : (json["chaining_suggestions"] as List)
            .map((e) => ChainingSuggestions.fromJson(e))
            .toList();
    chainingUpsellCards = json["chaining_upsell_cards"] ?? [];
    contactPhoneNumber = json["contact_phone_number"];
    currentCatalogId = json["current_catalog_id"];
    directMessaging = json["direct_messaging"];
    enableAddSchoolInEditProfile = json["enable_add_school_in_edit_profile"];
    existingUserAgeCollectionEnabled =
        json["existing_user_age_collection_enabled"];
    externalLynxUrl = json["external_lynx_url"];
    externalUrl = json["external_url"];
    fanClubInfo = json["fan_club_info"] == null
        ? null
        : FanClubInfo.fromJson(json["fan_club_info"]);
    fbidV2 = json["fbid_v2"];
    feedPostReshareDisabled = json["feed_post_reshare_disabled"];
    followFrictionType = json["follow_friction_type"];
    followerCount = json["follower_count"];
    followingCount = json["following_count"];
    fullName = json["full_name"];
    hasAnonymousProfilePicture = json["has_anonymous_profile_picture"];
    hasBiographyTranslation = json["has_biography_translation"];
    hasChaining = json["has_chaining"];
    hasChains = json["has_chains"];
    hasCollabCollections = json["has_collab_collections"];
    hasEverSelectedTopics = json["has_ever_selected_topics"];
    hasExclusiveFeedContent = json["has_exclusive_feed_content"];
    hasFanClubSubscriptions = json["has_fan_club_subscriptions"];
    hasGenAiPersonasForProfileBanner =
        json["has_gen_ai_personas_for_profile_banner"];
    hasGuides = json["has_guides"];
    hasHighlightReels = json["has_highlight_reels"];
    hasIgProfile = json["has_ig_profile"];
    hasLegacyBbPendingProfilePictureUpdate =
        json["has_legacy_bb_pending_profile_picture_update"];
    hasMusicOnProfile = json["has_music_on_profile"];
    hasMv4BPendingProfilePictureUpdate =
        json["has_mv4b_pending_profile_picture_update"];
    hasNmeBadge = json["has_nme_badge"];
    hasPrivateCollections = json["has_private_collections"];
    hasPublicTabThreads = json["has_public_tab_threads"];
    hasVideos = json["has_videos"];
    hasViewsFetching = json["has_views_fetching"];
    hdProfilePicUrlInfo = json["hd_profile_pic_url_info"] == null
        ? null
        : HdProfilePicUrlInfo.fromJson(json["hd_profile_pic_url_info"]);
    hdProfilePicVersions = json["hd_profile_pic_versions"] == null
        ? null
        : (json["hd_profile_pic_versions"] as List)
            .map((e) => HdProfilePicVersions.fromJson(e))
            .toList();
    highlightReshareDisabled = json["highlight_reshare_disabled"];
    highlightsTrayType = json["highlights_tray_type"];
    id = json["id"];
    includeDirectBlacklistStatus = json["include_direct_blacklist_status"];
    instagramPk = json["instagram_pk"];
    interopMessagingUserFbid = json["interop_messaging_user_fbid"];
    isActiveOnTextPostApp = json["is_active_on_text_post_app"];
    isAutoConfirmEnabledForAllReciprocalFollowRequests =
        json["is_auto_confirm_enabled_for_all_reciprocal_follow_requests"];
    isBestie = json["is_bestie"];
    isBusiness = json["is_business"];
    isCallToActionEnabled = json["is_call_to_action_enabled"];
    isCategoryTappable = json["is_category_tappable"];
    isCreatorAgentEnabled = json["is_creator_agent_enabled"];
    isDirectRollCallEnabled = json["is_direct_roll_call_enabled"];
    isEligibleForDiverseOwnedBusinessInfo =
        json["is_eligible_for_diverse_owned_business_info"];
    isEligibleForMetaVerifiedEnhancedLinkSheet =
        json["is_eligible_for_meta_verified_enhanced_link_sheet"];
    isEligibleForMetaVerifiedEnhancedLinkSheetConsumption =
        json["is_eligible_for_meta_verified_enhanced_link_sheet_consumption"];
    isEligibleForMetaVerifiedLabel =
        json["is_eligible_for_meta_verified_label"];
    isEligibleForMetaVerifiedLinksInReels =
        json["is_eligible_for_meta_verified_links_in_reels"];
    isEligibleForMetaVerifiedMultipleAddressesConsumption =
        json["is_eligible_for_meta_verified_multiple_addresses_consumption"];
    isEligibleForMetaVerifiedMultipleAddressesCreation =
        json["is_eligible_for_meta_verified_multiple_addresses_creation"];
    isEligibleForMetaVerifiedRelatedAccounts =
        json["is_eligible_for_meta_verified_related_accounts"];
    isEligibleForPostBoostMvUpsell =
        json["is_eligible_for_post_boost_mv_upsell"];
    isEligibleForRequestMessage = json["is_eligible_for_request_message"];
    isEligibleToDisplayDiverseOwnedBusinessInfo =
        json["is_eligible_to_display_diverse_owned_business_info"];
    isFavorite = json["is_favorite"];
    isFavoriteForClips = json["is_favorite_for_clips"];
    isFavoriteForHighlights = json["is_favorite_for_highlights"];
    isFavoriteForIgtv = json["is_favorite_for_igtv"];
    isFavoriteForStories = json["is_favorite_for_stories"];
    isInCanada = json["is_in_canada"];
    isInterestAccount = json["is_interest_account"];
    isLegacyVerifiedMaxProfilePicEditReached =
        json["is_legacy_verified_max_profile_pic_edit_reached"];
    isMemorialized = json["is_memorialized"];
    isMetaVerifiedRelatedAccountsDisplayEnabled =
        json["is_meta_verified_related_accounts_display_enabled"];
    isMv4BApplicationMaturedForProfileEdit =
        json["is_mv4b_application_matured_for_profile_edit"];
    isMv4BBizAssetProfileLocked = json["is_mv4b_biz_asset_profile_locked"];
    isMv4BMaxProfileEditReached = json["is_mv4b_max_profile_edit_reached"];
    isNewToInstagram = json["is_new_to_instagram"];
    isOpalEnabled = json["is_opal_enabled"];
    isOpenToCollab = json["is_open_to_collab"];
    isOregonCustomGenderConsented = json["is_oregon_custom_gender_consented"];
    isParentingAccount = json["is_parenting_account"];
    isPotentialBusiness = json["is_potential_business"];
    isPrivate = json["is_private"];
    isProfileAudioCallEnabled = json["is_profile_audio_call_enabled"];
    isProfileBroadcastSharingEnabled =
        json["is_profile_broadcast_sharing_enabled"];
    isProfilePictureExpansionEnabled =
        json["is_profile_picture_expansion_enabled"];
    isReconAdCtaOnProfileEligibleWithViewer =
        json["is_recon_ad_cta_on_profile_eligible_with_viewer"];
    isRegulatedC18 = json["is_regulated_c18"];
    isRegulatedNewsInViewerLocation =
        json["is_regulated_news_in_viewer_location"];
    isRemixSettingEnabledForPosts = json["is_remix_setting_enabled_for_posts"];
    isRemixSettingEnabledForReels = json["is_remix_setting_enabled_for_reels"];
    isSecondaryAccountCreation = json["is_secondary_account_creation"];
    isStoriesTeaserMuted = json["is_stories_teaser_muted"];
    isSupervisionFeaturesEnabled = json["is_supervision_features_enabled"];
    isVerified = json["is_verified"];
    isWhatsappLinked = json["is_whatsapp_linked"];
    latestBestiesReelMedia = json["latest_besties_reel_media"];
    latestReelMedia = json["latest_reel_media"];
    liveSubscriptionStatus = json["live_subscription_status"];
    locationData = json["location_data"] == null
        ? null
        : LocationData.fromJson(json["location_data"]);
    mediaCount = json["media_count"];
    metaVerifiedBenefitsInfo = json["meta_verified_benefits_info"] == null
        ? null
        : MetaVerifiedBenefitsInfo.fromJson(
            json["meta_verified_benefits_info"]);
    metaVerifiedRelatedAccountsCount =
        json["meta_verified_related_accounts_count"];
    nametag =
        json["nametag"] == null ? null : Nametag.fromJson(json["nametag"]);
    nonproCanMaybeSeeProfileHypercard =
        json["nonpro_can_maybe_see_profile_hypercard"];
    notMetaVerifiedFrictionInfo =
        json["not_meta_verified_friction_info"] == null
            ? null
            : NotMetaVerifiedFrictionInfo.fromJson(
                json["not_meta_verified_friction_info"]);
    openExternalUrlWithInAppBrowser =
        json["open_external_url_with_in_app_browser"];
    pageId = json["page_id"];
    pageName = json["page_name"];
    pinnedChannelsInfo = json["pinned_channels_info"] == null
        ? null
        : PinnedChannelsInfo.fromJson(json["pinned_channels_info"]);
    primaryProfileLinkType = json["primary_profile_link_type"];
    professionalConversionSuggestedAccountType =
        json["professional_conversion_suggested_account_type"];
    profileContext = json["profile_context"];
    profileContextFacepileUsers = json["profile_context_facepile_users"] ?? [];
    profileContextLinksWithUserIds =
        json["profile_context_links_with_user_ids"] ?? [];
    profilePicGenaiToolInfo = json["profile_pic_genai_tool_info"] ?? [];
    profilePicUrl = json["profile_pic_url"];
    profilePicUrlHd = json["profile_pic_url_hd"];
    profileReelsSortingEligibility = json["profile_reels_sorting_eligibility"];
    profileType = json["profile_type"];
    pronouns = json["pronouns"] ?? [];
    publicEmail = json["public_email"];
    publicPhoneCountryCode = json["public_phone_country_code"];
    publicPhoneNumber = json["public_phone_number"];
    reconFeatures = json["recon_features"] == null
        ? null
        : ReconFeatures.fromJson(json["recon_features"]);
    recsFromFriends = json["recs_from_friends"] == null
        ? null
        : RecsFromFriends.fromJson(json["recs_from_friends"]);
    relevantNewsRegulationLocations =
        json["relevant_news_regulation_locations"] ?? [];
    removeMessageEntrypoint = json["remove_message_entrypoint"];
    showAccountTransparencyDetails = json["show_account_transparency_details"];
    showBlueBadgeOnMainProfile = json["show_blue_badge_on_main_profile"];
    showPostInsightsEntryPoint = json["show_post_insights_entry_point"];
    showSchoolsBadge = json["show_schools_badge"];
    spamFollowerSettingEnabled = json["spam_follower_setting_enabled"];
    textAppLastVisitedTime = json["text_app_last_visited_time"];
    textPostAppBadgeLabel = json["text_post_app_badge_label"];
    textPostNewPostCount = json["text_post_new_post_count"];
    thirdPartyDownloadsEnabled = json["third_party_downloads_enabled"];
    threadsProfileGlyphUrl = json["threads_profile_glyph_url"];
    totalArEffects = json["total_ar_effects"];
    totalIgtvVideos = json["total_igtv_videos"];
    transparencyProductEnabled = json["transparency_product_enabled"];
    upcomingEvents = json["upcoming_events"] ?? [];
    username = json["username"];
    viewsOnGridStatus = json["views_on_grid_status"];
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map(Data.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["about"] = about;
    if (accountBadges != null) {
      _data["account_badges"] = accountBadges;
    }
    _data["account_category"] = accountCategory;
    _data["account_type"] = accountType;
    if (activeStandaloneFundraisers != null) {
      _data["active_standalone_fundraisers"] =
          activeStandaloneFundraisers?.toJson();
    }
    if (additionalBusinessAddresses != null) {
      _data["additional_business_addresses"] = additionalBusinessAddresses;
    }
    if (adjustedBannersOrder != null) {
      _data["adjusted_banners_order"] = adjustedBannersOrder;
    }
    _data["ads_incentive_expiration_date"] = adsIncentiveExpirationDate;
    _data["ads_page_id"] = adsPageId;
    _data["ads_page_name"] = adsPageName;
    _data["auto_expand_chaining"] = autoExpandChaining;
    if (avatarStatus != null) {
      _data["avatar_status"] = avatarStatus?.toJson();
    }
    if (bioLinks != null) {
      _data["bio_links"] = bioLinks?.map((e) => e.toJson()).toList();
    }
    _data["biography"] = biography;
    _data["biography_email"] = biographyEmail;
    if (biographyWithEntities != null) {
      _data["biography_with_entities"] = biographyWithEntities?.toJson();
    }
    _data["birthday_today_visibility_for_viewer"] =
        birthdayTodayVisibilityForViewer;
    _data["business_contact_method"] = businessContactMethod;
    _data["can_add_fb_group_link_on_profile"] = canAddFbGroupLinkOnProfile;
    _data["can_hide_category"] = canHideCategory;
    _data["can_hide_public_contacts"] = canHidePublicContacts;
    _data["can_use_affiliate_partnership_messaging_as_brand"] =
        canUseAffiliatePartnershipMessagingAsBrand;
    _data["can_use_affiliate_partnership_messaging_as_creator"] =
        canUseAffiliatePartnershipMessagingAsCreator;
    _data["can_use_branded_content_discovery_as_brand"] =
        canUseBrandedContentDiscoveryAsBrand;
    _data["can_use_branded_content_discovery_as_creator"] =
        canUseBrandedContentDiscoveryAsCreator;
    _data["can_use_paid_partnership_messaging_as_creator"] =
        canUsePaidPartnershipMessagingAsCreator;
    _data["category"] = category;
    _data["category_id"] = categoryId;
    if (chainingResults != null) {
      _data["chaining_results"] =
          chainingResults?.map((e) => e.toJson()).toList();
    }
    if (chainingSuggestions != null) {
      _data["chaining_suggestions"] =
          chainingSuggestions?.map((e) => e.toJson()).toList();
    }
    if (chainingUpsellCards != null) {
      _data["chaining_upsell_cards"] = chainingUpsellCards;
    }
    _data["contact_phone_number"] = contactPhoneNumber;
    _data["current_catalog_id"] = currentCatalogId;
    _data["direct_messaging"] = directMessaging;
    _data["enable_add_school_in_edit_profile"] = enableAddSchoolInEditProfile;
    _data["existing_user_age_collection_enabled"] =
        existingUserAgeCollectionEnabled;
    _data["external_lynx_url"] = externalLynxUrl;
    _data["external_url"] = externalUrl;
    if (fanClubInfo != null) {
      _data["fan_club_info"] = fanClubInfo?.toJson();
    }
    _data["fbid_v2"] = fbidV2;
    _data["feed_post_reshare_disabled"] = feedPostReshareDisabled;
    _data["follow_friction_type"] = followFrictionType;
    _data["follower_count"] = followerCount;
    _data["following_count"] = followingCount;
    _data["full_name"] = fullName;
    _data["has_anonymous_profile_picture"] = hasAnonymousProfilePicture;
    _data["has_biography_translation"] = hasBiographyTranslation;
    _data["has_chaining"] = hasChaining;
    _data["has_chains"] = hasChains;
    _data["has_collab_collections"] = hasCollabCollections;
    _data["has_ever_selected_topics"] = hasEverSelectedTopics;
    _data["has_exclusive_feed_content"] = hasExclusiveFeedContent;
    _data["has_fan_club_subscriptions"] = hasFanClubSubscriptions;
    _data["has_gen_ai_personas_for_profile_banner"] =
        hasGenAiPersonasForProfileBanner;
    _data["has_guides"] = hasGuides;
    _data["has_highlight_reels"] = hasHighlightReels;
    _data["has_ig_profile"] = hasIgProfile;
    _data["has_legacy_bb_pending_profile_picture_update"] =
        hasLegacyBbPendingProfilePictureUpdate;
    _data["has_music_on_profile"] = hasMusicOnProfile;
    _data["has_mv4b_pending_profile_picture_update"] =
        hasMv4BPendingProfilePictureUpdate;
    _data["has_nme_badge"] = hasNmeBadge;
    _data["has_private_collections"] = hasPrivateCollections;
    _data["has_public_tab_threads"] = hasPublicTabThreads;
    _data["has_videos"] = hasVideos;
    _data["has_views_fetching"] = hasViewsFetching;
    if (hdProfilePicUrlInfo != null) {
      _data["hd_profile_pic_url_info"] = hdProfilePicUrlInfo?.toJson();
    }
    if (hdProfilePicVersions != null) {
      _data["hd_profile_pic_versions"] =
          hdProfilePicVersions?.map((e) => e.toJson()).toList();
    }
    _data["highlight_reshare_disabled"] = highlightReshareDisabled;
    _data["highlights_tray_type"] = highlightsTrayType;
    _data["id"] = id;
    _data["include_direct_blacklist_status"] = includeDirectBlacklistStatus;
    _data["instagram_pk"] = instagramPk;
    _data["interop_messaging_user_fbid"] = interopMessagingUserFbid;
    _data["is_active_on_text_post_app"] = isActiveOnTextPostApp;
    _data["is_auto_confirm_enabled_for_all_reciprocal_follow_requests"] =
        isAutoConfirmEnabledForAllReciprocalFollowRequests;
    _data["is_bestie"] = isBestie;
    _data["is_business"] = isBusiness;
    _data["is_call_to_action_enabled"] = isCallToActionEnabled;
    _data["is_category_tappable"] = isCategoryTappable;
    _data["is_creator_agent_enabled"] = isCreatorAgentEnabled;
    _data["is_direct_roll_call_enabled"] = isDirectRollCallEnabled;
    _data["is_eligible_for_diverse_owned_business_info"] =
        isEligibleForDiverseOwnedBusinessInfo;
    _data["is_eligible_for_meta_verified_enhanced_link_sheet"] =
        isEligibleForMetaVerifiedEnhancedLinkSheet;
    _data["is_eligible_for_meta_verified_enhanced_link_sheet_consumption"] =
        isEligibleForMetaVerifiedEnhancedLinkSheetConsumption;
    _data["is_eligible_for_meta_verified_label"] =
        isEligibleForMetaVerifiedLabel;
    _data["is_eligible_for_meta_verified_links_in_reels"] =
        isEligibleForMetaVerifiedLinksInReels;
    _data["is_eligible_for_meta_verified_multiple_addresses_consumption"] =
        isEligibleForMetaVerifiedMultipleAddressesConsumption;
    _data["is_eligible_for_meta_verified_multiple_addresses_creation"] =
        isEligibleForMetaVerifiedMultipleAddressesCreation;
    _data["is_eligible_for_meta_verified_related_accounts"] =
        isEligibleForMetaVerifiedRelatedAccounts;
    _data["is_eligible_for_post_boost_mv_upsell"] =
        isEligibleForPostBoostMvUpsell;
    _data["is_eligible_for_request_message"] = isEligibleForRequestMessage;
    _data["is_eligible_to_display_diverse_owned_business_info"] =
        isEligibleToDisplayDiverseOwnedBusinessInfo;
    _data["is_favorite"] = isFavorite;
    _data["is_favorite_for_clips"] = isFavoriteForClips;
    _data["is_favorite_for_highlights"] = isFavoriteForHighlights;
    _data["is_favorite_for_igtv"] = isFavoriteForIgtv;
    _data["is_favorite_for_stories"] = isFavoriteForStories;
    _data["is_in_canada"] = isInCanada;
    _data["is_interest_account"] = isInterestAccount;
    _data["is_legacy_verified_max_profile_pic_edit_reached"] =
        isLegacyVerifiedMaxProfilePicEditReached;
    _data["is_memorialized"] = isMemorialized;
    _data["is_meta_verified_related_accounts_display_enabled"] =
        isMetaVerifiedRelatedAccountsDisplayEnabled;
    _data["is_mv4b_application_matured_for_profile_edit"] =
        isMv4BApplicationMaturedForProfileEdit;
    _data["is_mv4b_biz_asset_profile_locked"] = isMv4BBizAssetProfileLocked;
    _data["is_mv4b_max_profile_edit_reached"] = isMv4BMaxProfileEditReached;
    _data["is_new_to_instagram"] = isNewToInstagram;
    _data["is_opal_enabled"] = isOpalEnabled;
    _data["is_open_to_collab"] = isOpenToCollab;
    _data["is_oregon_custom_gender_consented"] = isOregonCustomGenderConsented;
    _data["is_parenting_account"] = isParentingAccount;
    _data["is_potential_business"] = isPotentialBusiness;
    _data["is_private"] = isPrivate;
    _data["is_profile_audio_call_enabled"] = isProfileAudioCallEnabled;
    _data["is_profile_broadcast_sharing_enabled"] =
        isProfileBroadcastSharingEnabled;
    _data["is_profile_picture_expansion_enabled"] =
        isProfilePictureExpansionEnabled;
    _data["is_recon_ad_cta_on_profile_eligible_with_viewer"] =
        isReconAdCtaOnProfileEligibleWithViewer;
    _data["is_regulated_c18"] = isRegulatedC18;
    _data["is_regulated_news_in_viewer_location"] =
        isRegulatedNewsInViewerLocation;
    _data["is_remix_setting_enabled_for_posts"] = isRemixSettingEnabledForPosts;
    _data["is_remix_setting_enabled_for_reels"] = isRemixSettingEnabledForReels;
    _data["is_secondary_account_creation"] = isSecondaryAccountCreation;
    _data["is_stories_teaser_muted"] = isStoriesTeaserMuted;
    _data["is_supervision_features_enabled"] = isSupervisionFeaturesEnabled;
    _data["is_verified"] = isVerified;
    _data["is_whatsapp_linked"] = isWhatsappLinked;
    _data["latest_besties_reel_media"] = latestBestiesReelMedia;
    _data["latest_reel_media"] = latestReelMedia;
    _data["live_subscription_status"] = liveSubscriptionStatus;
    if (locationData != null) {
      _data["location_data"] = locationData?.toJson();
    }
    _data["media_count"] = mediaCount;
    if (metaVerifiedBenefitsInfo != null) {
      _data["meta_verified_benefits_info"] = metaVerifiedBenefitsInfo?.toJson();
    }
    _data["meta_verified_related_accounts_count"] =
        metaVerifiedRelatedAccountsCount;
    if (nametag != null) {
      _data["nametag"] = nametag?.toJson();
    }
    _data["nonpro_can_maybe_see_profile_hypercard"] =
        nonproCanMaybeSeeProfileHypercard;
    if (notMetaVerifiedFrictionInfo != null) {
      _data["not_meta_verified_friction_info"] =
          notMetaVerifiedFrictionInfo?.toJson();
    }
    _data["open_external_url_with_in_app_browser"] =
        openExternalUrlWithInAppBrowser;
    _data["page_id"] = pageId;
    _data["page_name"] = pageName;
    if (pinnedChannelsInfo != null) {
      _data["pinned_channels_info"] = pinnedChannelsInfo?.toJson();
    }
    _data["primary_profile_link_type"] = primaryProfileLinkType;
    _data["professional_conversion_suggested_account_type"] =
        professionalConversionSuggestedAccountType;
    _data["profile_context"] = profileContext;
    if (profileContextFacepileUsers != null) {
      _data["profile_context_facepile_users"] = profileContextFacepileUsers;
    }
    if (profileContextLinksWithUserIds != null) {
      _data["profile_context_links_with_user_ids"] =
          profileContextLinksWithUserIds;
    }
    if (profilePicGenaiToolInfo != null) {
      _data["profile_pic_genai_tool_info"] = profilePicGenaiToolInfo;
    }
    _data["profile_pic_url"] = profilePicUrl;
    _data["profile_pic_url_hd"] = profilePicUrlHd;
    _data["profile_reels_sorting_eligibility"] = profileReelsSortingEligibility;
    _data["profile_type"] = profileType;
    if (pronouns != null) {
      _data["pronouns"] = pronouns;
    }
    _data["public_email"] = publicEmail;
    _data["public_phone_country_code"] = publicPhoneCountryCode;
    _data["public_phone_number"] = publicPhoneNumber;
    if (reconFeatures != null) {
      _data["recon_features"] = reconFeatures?.toJson();
    }
    if (recsFromFriends != null) {
      _data["recs_from_friends"] = recsFromFriends?.toJson();
    }
    if (relevantNewsRegulationLocations != null) {
      _data["relevant_news_regulation_locations"] =
          relevantNewsRegulationLocations;
    }
    _data["remove_message_entrypoint"] = removeMessageEntrypoint;
    _data["show_account_transparency_details"] = showAccountTransparencyDetails;
    _data["show_blue_badge_on_main_profile"] = showBlueBadgeOnMainProfile;
    _data["show_post_insights_entry_point"] = showPostInsightsEntryPoint;
    _data["show_schools_badge"] = showSchoolsBadge;
    _data["spam_follower_setting_enabled"] = spamFollowerSettingEnabled;
    _data["text_app_last_visited_time"] = textAppLastVisitedTime;
    _data["text_post_app_badge_label"] = textPostAppBadgeLabel;
    _data["text_post_new_post_count"] = textPostNewPostCount;
    _data["third_party_downloads_enabled"] = thirdPartyDownloadsEnabled;
    _data["threads_profile_glyph_url"] = threadsProfileGlyphUrl;
    _data["total_ar_effects"] = totalArEffects;
    _data["total_igtv_videos"] = totalIgtvVideos;
    _data["transparency_product_enabled"] = transparencyProductEnabled;
    if (upcomingEvents != null) {
      _data["upcoming_events"] = upcomingEvents;
    }
    _data["username"] = username;
    _data["views_on_grid_status"] = viewsOnGridStatus;
    return _data;
  }
}

class RecsFromFriends {
  bool? enableRecsFromFriends;
  String? recsFromFriendsEntryPointType;

  RecsFromFriends(
      {this.enableRecsFromFriends, this.recsFromFriendsEntryPointType});

  RecsFromFriends.fromJson(Map<String, dynamic> json) {
    enableRecsFromFriends = json["enable_recs_from_friends"];
    recsFromFriendsEntryPointType = json["recs_from_friends_entry_point_type"];
  }

  static List<RecsFromFriends> fromList(List<Map<String, dynamic>> list) {
    return list.map(RecsFromFriends.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enable_recs_from_friends"] = enableRecsFromFriends;
    _data["recs_from_friends_entry_point_type"] = recsFromFriendsEntryPointType;
    return _data;
  }
}

class ReconFeatures {
  bool? enableReconCta;

  ReconFeatures({this.enableReconCta});

  ReconFeatures.fromJson(Map<String, dynamic> json) {
    enableReconCta = json["enable_recon_cta"];
  }

  static List<ReconFeatures> fromList(List<Map<String, dynamic>> list) {
    return list.map(ReconFeatures.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["enable_recon_cta"] = enableReconCta;
    return _data;
  }
}

class PinnedChannelsInfo {
  bool? hasPublicChannels;
  List<dynamic>? pinnedChannelsList;

  PinnedChannelsInfo({this.hasPublicChannels, this.pinnedChannelsList});

  PinnedChannelsInfo.fromJson(Map<String, dynamic> json) {
    hasPublicChannels = json["has_public_channels"];
    pinnedChannelsList = json["pinned_channels_list"] ?? [];
  }

  static List<PinnedChannelsInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(PinnedChannelsInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has_public_channels"] = hasPublicChannels;
    if (pinnedChannelsList != null) {
      _data["pinned_channels_list"] = pinnedChannelsList;
    }
    return _data;
  }
}

class NotMetaVerifiedFrictionInfo {
  bool? isEligibleForLabelFriction;
  String? labelFrictionContent;

  NotMetaVerifiedFrictionInfo(
      {this.isEligibleForLabelFriction, this.labelFrictionContent});

  NotMetaVerifiedFrictionInfo.fromJson(Map<String, dynamic> json) {
    isEligibleForLabelFriction = json["is_eligible_for_label_friction"];
    labelFrictionContent = json["label_friction_content"];
  }

  static List<NotMetaVerifiedFrictionInfo> fromList(
      List<Map<String, dynamic>> list) {
    return list.map(NotMetaVerifiedFrictionInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["is_eligible_for_label_friction"] = isEligibleForLabelFriction;
    _data["label_friction_content"] = labelFrictionContent;
    return _data;
  }
}

class Nametag {
  List<int>? availableThemeColors;
  String? backgroundImageUrl;
  String? emoji;
  dynamic emojiColor;
  dynamic gradient;
  bool? isBackgroundImageBlurred;
  dynamic mode;
  dynamic selectedThemeColor;
  dynamic selfieSticker;
  String? selfieUrl;
  ThemeColor? themeColor;

  Nametag(
      {this.availableThemeColors,
      this.backgroundImageUrl,
      this.emoji,
      this.emojiColor,
      this.gradient,
      this.isBackgroundImageBlurred,
      this.mode,
      this.selectedThemeColor,
      this.selfieSticker,
      this.selfieUrl,
      this.themeColor});

  Nametag.fromJson(Map<String, dynamic> json) {
    availableThemeColors = json["available_theme_colors"] == null
        ? null
        : List<int>.from(json["available_theme_colors"]);
    backgroundImageUrl = json["background_image_url"];
    emoji = json["emoji"];
    emojiColor = json["emoji_color"];
    gradient = json["gradient"];
    isBackgroundImageBlurred = json["is_background_image_blurred"];
    mode = json["mode"];
    selectedThemeColor = json["selected_theme_color"];
    selfieSticker = json["selfie_sticker"];
    selfieUrl = json["selfie_url"];
    themeColor = json["theme_color"] == null
        ? null
        : ThemeColor.fromJson(json["theme_color"]);
  }

  static List<Nametag> fromList(List<Map<String, dynamic>> list) {
    return list.map(Nametag.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (availableThemeColors != null) {
      _data["available_theme_colors"] = availableThemeColors;
    }
    _data["background_image_url"] = backgroundImageUrl;
    _data["emoji"] = emoji;
    _data["emoji_color"] = emojiColor;
    _data["gradient"] = gradient;
    _data["is_background_image_blurred"] = isBackgroundImageBlurred;
    _data["mode"] = mode;
    _data["selected_theme_color"] = selectedThemeColor;
    _data["selfie_sticker"] = selfieSticker;
    _data["selfie_url"] = selfieUrl;
    if (themeColor != null) {
      _data["theme_color"] = themeColor?.toJson();
    }
    return _data;
  }
}

class ThemeColor {
  List<AvailableThemeColors>? availableThemeColors;
  SelectedThemeColor? selectedThemeColor;

  ThemeColor({this.availableThemeColors, this.selectedThemeColor});

  ThemeColor.fromJson(Map<String, dynamic> json) {
    availableThemeColors = json["available_theme_colors"] == null
        ? null
        : (json["available_theme_colors"] as List)
            .map((e) => AvailableThemeColors.fromJson(e))
            .toList();
    selectedThemeColor = json["selected_theme_color"] == null
        ? null
        : SelectedThemeColor.fromJson(json["selected_theme_color"]);
  }

  static List<ThemeColor> fromList(List<Map<String, dynamic>> list) {
    return list.map(ThemeColor.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (availableThemeColors != null) {
      _data["available_theme_colors"] =
          availableThemeColors?.map((e) => e.toJson()).toList();
    }
    if (selectedThemeColor != null) {
      _data["selected_theme_color"] = selectedThemeColor?.toJson();
    }
    return _data;
  }
}

class SelectedThemeColor {
  String? displayLabel;
  dynamic intValue;

  SelectedThemeColor({this.displayLabel, this.intValue});

  SelectedThemeColor.fromJson(Map<String, dynamic> json) {
    displayLabel = json["display_label"];
    intValue = json["int_value"];
  }

  static List<SelectedThemeColor> fromList(List<Map<String, dynamic>> list) {
    return list.map(SelectedThemeColor.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["display_label"] = displayLabel;
    _data["int_value"] = intValue;
    return _data;
  }
}

class AvailableThemeColors {
  String? displayLabel;
  dynamic intValue;

  AvailableThemeColors({this.displayLabel, this.intValue});

  AvailableThemeColors.fromJson(Map<String, dynamic> json) {
    displayLabel = json["display_label"];
    intValue = json["int_value"];
  }

  static List<AvailableThemeColors> fromList(List<Map<String, dynamic>> list) {
    return list.map(AvailableThemeColors.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["display_label"] = displayLabel;
    _data["int_value"] = intValue;
    return _data;
  }
}

class MetaVerifiedBenefitsInfo {
  bool? isEligibleForMetaVerifiedContentProtection;

  MetaVerifiedBenefitsInfo({this.isEligibleForMetaVerifiedContentProtection});

  MetaVerifiedBenefitsInfo.fromJson(Map<String, dynamic> json) {
    isEligibleForMetaVerifiedContentProtection =
        json["is_eligible_for_meta_verified_content_protection"];
  }

  static List<MetaVerifiedBenefitsInfo> fromList(
      List<Map<String, dynamic>> list) {
    return list.map(MetaVerifiedBenefitsInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["is_eligible_for_meta_verified_content_protection"] =
        isEligibleForMetaVerifiedContentProtection;
    return _data;
  }
}

class LocationData {
  String? addressStreet;
  dynamic cityId;
  String? cityName;
  String? instagramLocationId;
  dynamic latitude;
  dynamic longitude;
  String? zip;

  LocationData(
      {this.addressStreet,
      this.cityId,
      this.cityName,
      this.instagramLocationId,
      this.latitude,
      this.longitude,
      this.zip});

  LocationData.fromJson(Map<String, dynamic> json) {
    addressStreet = json["address_street"];
    cityId = json["city_id"];
    cityName = json["city_name"];
    instagramLocationId = json["instagram_location_id"];
    latitude = json["latitude"];
    longitude = json["longitude"];
    zip = json["zip"];
  }

  static List<LocationData> fromList(List<Map<String, dynamic>> list) {
    return list.map(LocationData.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["address_street"] = addressStreet;
    _data["city_id"] = cityId;
    _data["city_name"] = cityName;
    _data["instagram_location_id"] = instagramLocationId;
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["zip"] = zip;
    return _data;
  }
}

class HdProfilePicVersions {
  dynamic height;
  String? url;
  dynamic width;

  HdProfilePicVersions({this.height, this.url, this.width});

  HdProfilePicVersions.fromJson(Map<String, dynamic> json) {
    height = json["height"];
    url = json["url"];
    width = json["width"];
  }

  static List<HdProfilePicVersions> fromList(List<Map<String, dynamic>> list) {
    return list.map(HdProfilePicVersions.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class HdProfilePicUrlInfo {
  dynamic height;
  String? url;
  dynamic width;

  HdProfilePicUrlInfo({this.height, this.url, this.width});

  HdProfilePicUrlInfo.fromJson(Map<String, dynamic> json) {
    height = json["height"];
    url = json["url"];
    width = json["width"];
  }

  static List<HdProfilePicUrlInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(HdProfilePicUrlInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
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

  FanClubInfo(
      {this.autosaveToExclusiveHighlight,
      this.connectedMemberCount,
      this.fanClubId,
      this.fanClubName,
      this.fanConsiderationPageRevampEligiblity,
      this.hasCreatedSsc,
      this.hasEnoughSubscribersForSsc,
      this.isFanClubGiftingEligible,
      this.isFanClubReferralEligible,
      this.isFreeTrialEligible,
      this.largestPublicBcId,
      this.subscriberCount});

  FanClubInfo.fromJson(Map<String, dynamic> json) {
    autosaveToExclusiveHighlight = json["autosave_to_exclusive_highlight"];
    connectedMemberCount = json["connected_member_count"];
    fanClubId = json["fan_club_id"];
    fanClubName = json["fan_club_name"];
    fanConsiderationPageRevampEligiblity =
        json["fan_consideration_page_revamp_eligiblity"];
    hasCreatedSsc = json["has_created_ssc"];
    hasEnoughSubscribersForSsc = json["has_enough_subscribers_for_ssc"];
    isFanClubGiftingEligible = json["is_fan_club_gifting_eligible"];
    isFanClubReferralEligible = json["is_fan_club_referral_eligible"];
    isFreeTrialEligible = json["is_free_trial_eligible"];
    largestPublicBcId = json["largest_public_bc_id"];
    subscriberCount = json["subscriber_count"];
  }

  static List<FanClubInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(FanClubInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["autosave_to_exclusive_highlight"] = autosaveToExclusiveHighlight;
    _data["connected_member_count"] = connectedMemberCount;
    _data["fan_club_id"] = fanClubId;
    _data["fan_club_name"] = fanClubName;
    _data["fan_consideration_page_revamp_eligiblity"] =
        fanConsiderationPageRevampEligiblity;
    _data["has_created_ssc"] = hasCreatedSsc;
    _data["has_enough_subscribers_for_ssc"] = hasEnoughSubscribersForSsc;
    _data["is_fan_club_gifting_eligible"] = isFanClubGiftingEligible;
    _data["is_fan_club_referral_eligible"] = isFanClubReferralEligible;
    _data["is_free_trial_eligible"] = isFreeTrialEligible;
    _data["largest_public_bc_id"] = largestPublicBcId;
    _data["subscriber_count"] = subscriberCount;
    return _data;
  }
}

class ChainingSuggestions {
  ChainingInfo1? chainingInfo;
  String? fullName;
  String? id;
  bool? isPrivate;
  bool? isVerified;
  String? profileChainingSecondaryLabel;
  String? profilePicUrl;
  String? socialContext;
  String? username;

  ChainingSuggestions(
      {this.chainingInfo,
      this.fullName,
      this.id,
      this.isPrivate,
      this.isVerified,
      this.profileChainingSecondaryLabel,
      this.profilePicUrl,
      this.socialContext,
      this.username});

  ChainingSuggestions.fromJson(Map<String, dynamic> json) {
    chainingInfo = json["chaining_info"] == null
        ? null
        : ChainingInfo1.fromJson(json["chaining_info"]);
    fullName = json["full_name"];
    id = json["id"];
    isPrivate = json["is_private"];
    isVerified = json["is_verified"];
    profileChainingSecondaryLabel = json["profile_chaining_secondary_label"];
    profilePicUrl = json["profile_pic_url"];
    socialContext = json["social_context"];
    username = json["username"];
  }

  static List<ChainingSuggestions> fromList(List<Map<String, dynamic>> list) {
    return list.map(ChainingSuggestions.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (chainingInfo != null) {
      _data["chaining_info"] = chainingInfo?.toJson();
    }
    _data["full_name"] = fullName;
    _data["id"] = id;
    _data["is_private"] = isPrivate;
    _data["is_verified"] = isVerified;
    _data["profile_chaining_secondary_label"] = profileChainingSecondaryLabel;
    _data["profile_pic_url"] = profilePicUrl;
    _data["social_context"] = socialContext;
    _data["username"] = username;
    return _data;
  }
}

class ChainingInfo1 {
  dynamic algorithm;
  String? sources;

  ChainingInfo1({this.algorithm, this.sources});

  ChainingInfo1.fromJson(Map<String, dynamic> json) {
    algorithm = json["algorithm"];
    sources = json["sources"];
  }

  static List<ChainingInfo1> fromList(List<Map<String, dynamic>> list) {
    return list.map(ChainingInfo1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["algorithm"] = algorithm;
    _data["sources"] = sources;
    return _data;
  }
}

class ChainingResults {
  ChainingInfo? chainingInfo;
  String? fullName;
  String? id;
  bool? isPrivate;
  bool? isVerified;
  String? profileChainingSecondaryLabel;
  String? profilePicUrl;
  String? socialContext;
  String? username;

  ChainingResults(
      {this.chainingInfo,
      this.fullName,
      this.id,
      this.isPrivate,
      this.isVerified,
      this.profileChainingSecondaryLabel,
      this.profilePicUrl,
      this.socialContext,
      this.username});

  ChainingResults.fromJson(Map<String, dynamic> json) {
    chainingInfo = json["chaining_info"] == null
        ? null
        : ChainingInfo.fromJson(json["chaining_info"]);
    fullName = json["full_name"];
    id = json["id"];
    isPrivate = json["is_private"];
    isVerified = json["is_verified"];
    profileChainingSecondaryLabel = json["profile_chaining_secondary_label"];
    profilePicUrl = json["profile_pic_url"];
    socialContext = json["social_context"];
    username = json["username"];
  }

  static List<ChainingResults> fromList(List<Map<String, dynamic>> list) {
    return list.map(ChainingResults.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (chainingInfo != null) {
      _data["chaining_info"] = chainingInfo?.toJson();
    }
    _data["full_name"] = fullName;
    _data["id"] = id;
    _data["is_private"] = isPrivate;
    _data["is_verified"] = isVerified;
    _data["profile_chaining_secondary_label"] = profileChainingSecondaryLabel;
    _data["profile_pic_url"] = profilePicUrl;
    _data["social_context"] = socialContext;
    _data["username"] = username;
    return _data;
  }
}

class ChainingInfo {
  dynamic algorithm;
  String? sources;

  ChainingInfo({this.algorithm, this.sources});

  ChainingInfo.fromJson(Map<String, dynamic> json) {
    algorithm = json["algorithm"];
    sources = json["sources"];
  }

  static List<ChainingInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(ChainingInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["algorithm"] = algorithm;
    _data["sources"] = sources;
    return _data;
  }
}

class BiographyWithEntities {
  List<Entities>? entities;
  String? rawText;

  BiographyWithEntities({this.entities, this.rawText});

  BiographyWithEntities.fromJson(Map<String, dynamic> json) {
    entities = json["entities"] == null
        ? null
        : (json["entities"] as List).map((e) => Entities.fromJson(e)).toList();
    rawText = json["raw_text"];
  }

  static List<BiographyWithEntities> fromList(List<Map<String, dynamic>> list) {
    return list.map(BiographyWithEntities.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (entities != null) {
      _data["entities"] = entities?.map((e) => e.toJson()).toList();
    }
    _data["raw_text"] = rawText;
    return _data;
  }
}

class Entities {
  User? user;

  Entities({this.user});

  Entities.fromJson(Map<String, dynamic> json) {
    user = json["user"] == null ? null : User.fromJson(json["user"]);
  }

  static List<Entities> fromList(List<Map<String, dynamic>> list) {
    return list.map(Entities.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (user != null) {
      _data["user"] = user?.toJson();
    }
    return _data;
  }
}

class User {
  String? id;
  String? username;

  User({this.id, this.username});

  User.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    username = json["username"];
  }

  static List<User> fromList(List<Map<String, dynamic>> list) {
    return list.map(User.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["username"] = username;
    return _data;
  }
}

class BioLinks {
  String? iconUrl;
  String? imageUrl;
  bool? isPinned;
  bool? isVerified;
  dynamic linkId;
  String? linkType;
  String? lynxUrl;
  String? mediaType;
  bool? openExternalUrlWithInAppBrowser;
  String? title;
  String? url;

  BioLinks(
      {this.iconUrl,
      this.imageUrl,
      this.isPinned,
      this.isVerified,
      this.linkId,
      this.linkType,
      this.lynxUrl,
      this.mediaType,
      this.openExternalUrlWithInAppBrowser,
      this.title,
      this.url});

  BioLinks.fromJson(Map<String, dynamic> json) {
    iconUrl = json["icon_url"];
    imageUrl = json["image_url"];
    isPinned = json["is_pinned"];
    isVerified = json["is_verified"];
    linkId = json["link_id"];
    linkType = json["link_type"];
    lynxUrl = json["lynx_url"];
    mediaType = json["media_type"];
    openExternalUrlWithInAppBrowser =
        json["open_external_url_with_in_app_browser"];
    title = json["title"];
    url = json["url"];
  }

  static List<BioLinks> fromList(List<Map<String, dynamic>> list) {
    return list.map(BioLinks.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["icon_url"] = iconUrl;
    _data["image_url"] = imageUrl;
    _data["is_pinned"] = isPinned;
    _data["is_verified"] = isVerified;
    _data["link_id"] = linkId;
    _data["link_type"] = linkType;
    _data["lynx_url"] = lynxUrl;
    _data["media_type"] = mediaType;
    _data["open_external_url_with_in_app_browser"] =
        openExternalUrlWithInAppBrowser;
    _data["title"] = title;
    _data["url"] = url;
    return _data;
  }
}

class AvatarStatus {
  bool? hasAvatar;

  AvatarStatus({this.hasAvatar});

  AvatarStatus.fromJson(Map<String, dynamic> json) {
    hasAvatar = json["has_avatar"];
  }

  static List<AvatarStatus> fromList(List<Map<String, dynamic>> list) {
    return list.map(AvatarStatus.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has_avatar"] = hasAvatar;
    return _data;
  }
}

class ActiveStandaloneFundraisers {
  List<dynamic>? fundraisers;
  dynamic totalCount;

  ActiveStandaloneFundraisers({this.fundraisers, this.totalCount});

  ActiveStandaloneFundraisers.fromJson(Map<String, dynamic> json) {
    fundraisers = json["fundraisers"] ?? [];
    totalCount = json["total_count"];
  }

  static List<ActiveStandaloneFundraisers> fromList(
      List<Map<String, dynamic>> list) {
    return list.map(ActiveStandaloneFundraisers.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (fundraisers != null) {
      _data["fundraisers"] = fundraisers;
    }
    _data["total_count"] = totalCount;
    return _data;
  }
}
