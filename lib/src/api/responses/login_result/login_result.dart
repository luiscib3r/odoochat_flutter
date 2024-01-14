import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_result.freezed.dart';
part 'login_result.g.dart';

@freezed
class LoginResult with _$LoginResult {
  const factory LoginResult({
    required int uid,
    @JsonKey(name: 'is_system') required bool isSystem,
    @JsonKey(name: 'is_admin') required bool isAdmin,
    @JsonKey(name: 'user_context') required Map<String, dynamic> userContext,
    required String db,
    @JsonKey(name: 'server_version') required String serverVersion,
    @JsonKey(name: 'server_version_info')
    required List<dynamic> serverVersionInfo,
    required String name,
    required String username,
    @JsonKey(name: 'partner_display_name') required String partnerDisplayName,
    @JsonKey(name: 'company_id') required int companyId,
    @JsonKey(name: 'partner_id') required int partnerId,
    @JsonKey(name: 'web.base.url') required String webBaseUrl,
    @JsonKey(name: 'active_ids_limit') required int activeIdsLimit,
    @JsonKey(name: 'max_file_upload_size') required int maxFileUploadSize,
    @JsonKey(name: 'user_companies')
    required Map<String, dynamic> userCompanies,
    required Map<String, dynamic> currencies,
    @JsonKey(name: 'show_effect') required String showEffect,
    @JsonKey(name: 'display_switch_company_menu')
    required bool displaySwitchCompanyMenu,
    @JsonKey(name: 'cache_hashes') required Map<String, dynamic> cacheHashes,
    @JsonKey(name: 'user_id') required List<int> userId,
    @JsonKey(name: 'web_tours') required List<dynamic> webTours,
    @JsonKey(name: 'notification_type') required String notificationType,
    @JsonKey(name: 'odoobot_initialized') required bool odoobotInitialized,
  }) = _LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);
}
