// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResultImpl _$$LoginResultImplFromJson(Map<String, dynamic> json) =>
    _$LoginResultImpl(
      uid: json['uid'] as int,
      isSystem: json['is_system'] as bool,
      isAdmin: json['is_admin'] as bool,
      userContext: json['user_context'] as Map<String, dynamic>,
      db: json['db'] as String,
      serverVersion: json['server_version'] as String,
      serverVersionInfo: json['server_version_info'] as List<dynamic>,
      name: json['name'] as String,
      username: json['username'] as String,
      partnerDisplayName: json['partner_display_name'] as String,
      companyId: json['company_id'] as int,
      partnerId: json['partner_id'] as int,
      webBaseUrl: json['web.base.url'] as String,
      activeIdsLimit: json['active_ids_limit'] as int,
      maxFileUploadSize: json['max_file_upload_size'] as int,
      userCompanies: json['user_companies'] as Map<String, dynamic>,
      currencies: json['currencies'] as Map<String, dynamic>,
      showEffect: json['show_effect'] as String,
      displaySwitchCompanyMenu: json['display_switch_company_menu'] as bool,
      cacheHashes: json['cache_hashes'] as Map<String, dynamic>,
      userId: (json['user_id'] as List<dynamic>).map((e) => e as int).toList(),
      webTours: json['web_tours'] as List<dynamic>,
      notificationType: json['notification_type'] as String,
      odoobotInitialized: json['odoobot_initialized'] as bool,
    );

Map<String, dynamic> _$$LoginResultImplToJson(_$LoginResultImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'is_system': instance.isSystem,
      'is_admin': instance.isAdmin,
      'user_context': instance.userContext,
      'db': instance.db,
      'server_version': instance.serverVersion,
      'server_version_info': instance.serverVersionInfo,
      'name': instance.name,
      'username': instance.username,
      'partner_display_name': instance.partnerDisplayName,
      'company_id': instance.companyId,
      'partner_id': instance.partnerId,
      'web.base.url': instance.webBaseUrl,
      'active_ids_limit': instance.activeIdsLimit,
      'max_file_upload_size': instance.maxFileUploadSize,
      'user_companies': instance.userCompanies,
      'currencies': instance.currencies,
      'show_effect': instance.showEffect,
      'display_switch_company_menu': instance.displaySwitchCompanyMenu,
      'cache_hashes': instance.cacheHashes,
      'user_id': instance.userId,
      'web_tours': instance.webTours,
      'notification_type': instance.notificationType,
      'odoobot_initialized': instance.odoobotInitialized,
    };
