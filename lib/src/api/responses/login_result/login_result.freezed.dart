// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) {
  return _LoginResult.fromJson(json);
}

/// @nodoc
mixin _$LoginResult {
  int get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_system')
  bool get isSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_admin')
  bool get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_context')
  Map<String, dynamic> get userContext => throw _privateConstructorUsedError;
  String get db => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_version')
  String get serverVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_version_info')
  List<dynamic> get serverVersionInfo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_display_name')
  String get partnerDisplayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'partner_id')
  int get partnerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'web.base.url')
  String get webBaseUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_ids_limit')
  int get activeIdsLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_file_upload_size')
  int get maxFileUploadSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_companies')
  Map<String, dynamic> get userCompanies => throw _privateConstructorUsedError;
  Map<String, dynamic> get currencies => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_switch_company_menu')
  bool get displaySwitchCompanyMenu => throw _privateConstructorUsedError;
  @JsonKey(name: 'cache_hashes')
  Map<String, dynamic> get cacheHashes => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  List<int> get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'web_tours')
  List<dynamic> get webTours => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_type')
  String get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'odoobot_initialized')
  bool get odoobotInitialized => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_id')
  int? get companyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResultCopyWith<LoginResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res, LoginResult>;
  @useResult
  $Res call(
      {int uid,
      @JsonKey(name: 'is_system') bool isSystem,
      @JsonKey(name: 'is_admin') bool isAdmin,
      @JsonKey(name: 'user_context') Map<String, dynamic> userContext,
      String db,
      @JsonKey(name: 'server_version') String serverVersion,
      @JsonKey(name: 'server_version_info') List<dynamic> serverVersionInfo,
      String name,
      String username,
      @JsonKey(name: 'partner_display_name') String partnerDisplayName,
      @JsonKey(name: 'partner_id') int partnerId,
      @JsonKey(name: 'web.base.url') String webBaseUrl,
      @JsonKey(name: 'active_ids_limit') int activeIdsLimit,
      @JsonKey(name: 'max_file_upload_size') int maxFileUploadSize,
      @JsonKey(name: 'user_companies') Map<String, dynamic> userCompanies,
      Map<String, dynamic> currencies,
      @JsonKey(name: 'display_switch_company_menu')
      bool displaySwitchCompanyMenu,
      @JsonKey(name: 'cache_hashes') Map<String, dynamic> cacheHashes,
      @JsonKey(name: 'user_id') List<int> userId,
      @JsonKey(name: 'web_tours') List<dynamic> webTours,
      @JsonKey(name: 'notification_type') String notificationType,
      @JsonKey(name: 'odoobot_initialized') bool odoobotInitialized,
      @JsonKey(name: 'company_id') int? companyId});
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res, $Val extends LoginResult>
    implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? isSystem = null,
    Object? isAdmin = null,
    Object? userContext = null,
    Object? db = null,
    Object? serverVersion = null,
    Object? serverVersionInfo = null,
    Object? name = null,
    Object? username = null,
    Object? partnerDisplayName = null,
    Object? partnerId = null,
    Object? webBaseUrl = null,
    Object? activeIdsLimit = null,
    Object? maxFileUploadSize = null,
    Object? userCompanies = null,
    Object? currencies = null,
    Object? displaySwitchCompanyMenu = null,
    Object? cacheHashes = null,
    Object? userId = null,
    Object? webTours = null,
    Object? notificationType = null,
    Object? odoobotInitialized = null,
    Object? companyId = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      isSystem: null == isSystem
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      userContext: null == userContext
          ? _value.userContext
          : userContext // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      db: null == db
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String,
      serverVersion: null == serverVersion
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String,
      serverVersionInfo: null == serverVersionInfo
          ? _value.serverVersionInfo
          : serverVersionInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      partnerDisplayName: null == partnerDisplayName
          ? _value.partnerDisplayName
          : partnerDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int,
      webBaseUrl: null == webBaseUrl
          ? _value.webBaseUrl
          : webBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      activeIdsLimit: null == activeIdsLimit
          ? _value.activeIdsLimit
          : activeIdsLimit // ignore: cast_nullable_to_non_nullable
              as int,
      maxFileUploadSize: null == maxFileUploadSize
          ? _value.maxFileUploadSize
          : maxFileUploadSize // ignore: cast_nullable_to_non_nullable
              as int,
      userCompanies: null == userCompanies
          ? _value.userCompanies
          : userCompanies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      displaySwitchCompanyMenu: null == displaySwitchCompanyMenu
          ? _value.displaySwitchCompanyMenu
          : displaySwitchCompanyMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      cacheHashes: null == cacheHashes
          ? _value.cacheHashes
          : cacheHashes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      webTours: null == webTours
          ? _value.webTours
          : webTours // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      odoobotInitialized: null == odoobotInitialized
          ? _value.odoobotInitialized
          : odoobotInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginResultImplCopyWith<$Res>
    implements $LoginResultCopyWith<$Res> {
  factory _$$LoginResultImplCopyWith(
          _$LoginResultImpl value, $Res Function(_$LoginResultImpl) then) =
      __$$LoginResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int uid,
      @JsonKey(name: 'is_system') bool isSystem,
      @JsonKey(name: 'is_admin') bool isAdmin,
      @JsonKey(name: 'user_context') Map<String, dynamic> userContext,
      String db,
      @JsonKey(name: 'server_version') String serverVersion,
      @JsonKey(name: 'server_version_info') List<dynamic> serverVersionInfo,
      String name,
      String username,
      @JsonKey(name: 'partner_display_name') String partnerDisplayName,
      @JsonKey(name: 'partner_id') int partnerId,
      @JsonKey(name: 'web.base.url') String webBaseUrl,
      @JsonKey(name: 'active_ids_limit') int activeIdsLimit,
      @JsonKey(name: 'max_file_upload_size') int maxFileUploadSize,
      @JsonKey(name: 'user_companies') Map<String, dynamic> userCompanies,
      Map<String, dynamic> currencies,
      @JsonKey(name: 'display_switch_company_menu')
      bool displaySwitchCompanyMenu,
      @JsonKey(name: 'cache_hashes') Map<String, dynamic> cacheHashes,
      @JsonKey(name: 'user_id') List<int> userId,
      @JsonKey(name: 'web_tours') List<dynamic> webTours,
      @JsonKey(name: 'notification_type') String notificationType,
      @JsonKey(name: 'odoobot_initialized') bool odoobotInitialized,
      @JsonKey(name: 'company_id') int? companyId});
}

/// @nodoc
class __$$LoginResultImplCopyWithImpl<$Res>
    extends _$LoginResultCopyWithImpl<$Res, _$LoginResultImpl>
    implements _$$LoginResultImplCopyWith<$Res> {
  __$$LoginResultImplCopyWithImpl(
      _$LoginResultImpl _value, $Res Function(_$LoginResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? isSystem = null,
    Object? isAdmin = null,
    Object? userContext = null,
    Object? db = null,
    Object? serverVersion = null,
    Object? serverVersionInfo = null,
    Object? name = null,
    Object? username = null,
    Object? partnerDisplayName = null,
    Object? partnerId = null,
    Object? webBaseUrl = null,
    Object? activeIdsLimit = null,
    Object? maxFileUploadSize = null,
    Object? userCompanies = null,
    Object? currencies = null,
    Object? displaySwitchCompanyMenu = null,
    Object? cacheHashes = null,
    Object? userId = null,
    Object? webTours = null,
    Object? notificationType = null,
    Object? odoobotInitialized = null,
    Object? companyId = freezed,
  }) {
    return _then(_$LoginResultImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      isSystem: null == isSystem
          ? _value.isSystem
          : isSystem // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      userContext: null == userContext
          ? _value._userContext
          : userContext // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      db: null == db
          ? _value.db
          : db // ignore: cast_nullable_to_non_nullable
              as String,
      serverVersion: null == serverVersion
          ? _value.serverVersion
          : serverVersion // ignore: cast_nullable_to_non_nullable
              as String,
      serverVersionInfo: null == serverVersionInfo
          ? _value._serverVersionInfo
          : serverVersionInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      partnerDisplayName: null == partnerDisplayName
          ? _value.partnerDisplayName
          : partnerDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as int,
      webBaseUrl: null == webBaseUrl
          ? _value.webBaseUrl
          : webBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      activeIdsLimit: null == activeIdsLimit
          ? _value.activeIdsLimit
          : activeIdsLimit // ignore: cast_nullable_to_non_nullable
              as int,
      maxFileUploadSize: null == maxFileUploadSize
          ? _value.maxFileUploadSize
          : maxFileUploadSize // ignore: cast_nullable_to_non_nullable
              as int,
      userCompanies: null == userCompanies
          ? _value._userCompanies
          : userCompanies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      displaySwitchCompanyMenu: null == displaySwitchCompanyMenu
          ? _value.displaySwitchCompanyMenu
          : displaySwitchCompanyMenu // ignore: cast_nullable_to_non_nullable
              as bool,
      cacheHashes: null == cacheHashes
          ? _value._cacheHashes
          : cacheHashes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      userId: null == userId
          ? _value._userId
          : userId // ignore: cast_nullable_to_non_nullable
              as List<int>,
      webTours: null == webTours
          ? _value._webTours
          : webTours // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      odoobotInitialized: null == odoobotInitialized
          ? _value.odoobotInitialized
          : odoobotInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResultImpl implements _LoginResult {
  const _$LoginResultImpl(
      {required this.uid,
      @JsonKey(name: 'is_system') required this.isSystem,
      @JsonKey(name: 'is_admin') required this.isAdmin,
      @JsonKey(name: 'user_context')
      required final Map<String, dynamic> userContext,
      required this.db,
      @JsonKey(name: 'server_version') required this.serverVersion,
      @JsonKey(name: 'server_version_info')
      required final List<dynamic> serverVersionInfo,
      required this.name,
      required this.username,
      @JsonKey(name: 'partner_display_name') required this.partnerDisplayName,
      @JsonKey(name: 'partner_id') required this.partnerId,
      @JsonKey(name: 'web.base.url') required this.webBaseUrl,
      @JsonKey(name: 'active_ids_limit') required this.activeIdsLimit,
      @JsonKey(name: 'max_file_upload_size') required this.maxFileUploadSize,
      @JsonKey(name: 'user_companies')
      required final Map<String, dynamic> userCompanies,
      required final Map<String, dynamic> currencies,
      @JsonKey(name: 'display_switch_company_menu')
      required this.displaySwitchCompanyMenu,
      @JsonKey(name: 'cache_hashes')
      required final Map<String, dynamic> cacheHashes,
      @JsonKey(name: 'user_id') required final List<int> userId,
      @JsonKey(name: 'web_tours') required final List<dynamic> webTours,
      @JsonKey(name: 'notification_type') required this.notificationType,
      @JsonKey(name: 'odoobot_initialized') required this.odoobotInitialized,
      @JsonKey(name: 'company_id') this.companyId})
      : _userContext = userContext,
        _serverVersionInfo = serverVersionInfo,
        _userCompanies = userCompanies,
        _currencies = currencies,
        _cacheHashes = cacheHashes,
        _userId = userId,
        _webTours = webTours;

  factory _$LoginResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResultImplFromJson(json);

  @override
  final int uid;
  @override
  @JsonKey(name: 'is_system')
  final bool isSystem;
  @override
  @JsonKey(name: 'is_admin')
  final bool isAdmin;
  final Map<String, dynamic> _userContext;
  @override
  @JsonKey(name: 'user_context')
  Map<String, dynamic> get userContext {
    if (_userContext is EqualUnmodifiableMapView) return _userContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userContext);
  }

  @override
  final String db;
  @override
  @JsonKey(name: 'server_version')
  final String serverVersion;
  final List<dynamic> _serverVersionInfo;
  @override
  @JsonKey(name: 'server_version_info')
  List<dynamic> get serverVersionInfo {
    if (_serverVersionInfo is EqualUnmodifiableListView)
      return _serverVersionInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serverVersionInfo);
  }

  @override
  final String name;
  @override
  final String username;
  @override
  @JsonKey(name: 'partner_display_name')
  final String partnerDisplayName;
  @override
  @JsonKey(name: 'partner_id')
  final int partnerId;
  @override
  @JsonKey(name: 'web.base.url')
  final String webBaseUrl;
  @override
  @JsonKey(name: 'active_ids_limit')
  final int activeIdsLimit;
  @override
  @JsonKey(name: 'max_file_upload_size')
  final int maxFileUploadSize;
  final Map<String, dynamic> _userCompanies;
  @override
  @JsonKey(name: 'user_companies')
  Map<String, dynamic> get userCompanies {
    if (_userCompanies is EqualUnmodifiableMapView) return _userCompanies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_userCompanies);
  }

  final Map<String, dynamic> _currencies;
  @override
  Map<String, dynamic> get currencies {
    if (_currencies is EqualUnmodifiableMapView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currencies);
  }

  @override
  @JsonKey(name: 'display_switch_company_menu')
  final bool displaySwitchCompanyMenu;
  final Map<String, dynamic> _cacheHashes;
  @override
  @JsonKey(name: 'cache_hashes')
  Map<String, dynamic> get cacheHashes {
    if (_cacheHashes is EqualUnmodifiableMapView) return _cacheHashes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cacheHashes);
  }

  final List<int> _userId;
  @override
  @JsonKey(name: 'user_id')
  List<int> get userId {
    if (_userId is EqualUnmodifiableListView) return _userId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userId);
  }

  final List<dynamic> _webTours;
  @override
  @JsonKey(name: 'web_tours')
  List<dynamic> get webTours {
    if (_webTours is EqualUnmodifiableListView) return _webTours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_webTours);
  }

  @override
  @JsonKey(name: 'notification_type')
  final String notificationType;
  @override
  @JsonKey(name: 'odoobot_initialized')
  final bool odoobotInitialized;
  @override
  @JsonKey(name: 'company_id')
  final int? companyId;

  @override
  String toString() {
    return 'LoginResult(uid: $uid, isSystem: $isSystem, isAdmin: $isAdmin, userContext: $userContext, db: $db, serverVersion: $serverVersion, serverVersionInfo: $serverVersionInfo, name: $name, username: $username, partnerDisplayName: $partnerDisplayName, partnerId: $partnerId, webBaseUrl: $webBaseUrl, activeIdsLimit: $activeIdsLimit, maxFileUploadSize: $maxFileUploadSize, userCompanies: $userCompanies, currencies: $currencies, displaySwitchCompanyMenu: $displaySwitchCompanyMenu, cacheHashes: $cacheHashes, userId: $userId, webTours: $webTours, notificationType: $notificationType, odoobotInitialized: $odoobotInitialized, companyId: $companyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResultImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isSystem, isSystem) ||
                other.isSystem == isSystem) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            const DeepCollectionEquality()
                .equals(other._userContext, _userContext) &&
            (identical(other.db, db) || other.db == db) &&
            (identical(other.serverVersion, serverVersion) ||
                other.serverVersion == serverVersion) &&
            const DeepCollectionEquality()
                .equals(other._serverVersionInfo, _serverVersionInfo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.partnerDisplayName, partnerDisplayName) ||
                other.partnerDisplayName == partnerDisplayName) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.webBaseUrl, webBaseUrl) ||
                other.webBaseUrl == webBaseUrl) &&
            (identical(other.activeIdsLimit, activeIdsLimit) ||
                other.activeIdsLimit == activeIdsLimit) &&
            (identical(other.maxFileUploadSize, maxFileUploadSize) ||
                other.maxFileUploadSize == maxFileUploadSize) &&
            const DeepCollectionEquality()
                .equals(other._userCompanies, _userCompanies) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            (identical(
                    other.displaySwitchCompanyMenu, displaySwitchCompanyMenu) ||
                other.displaySwitchCompanyMenu == displaySwitchCompanyMenu) &&
            const DeepCollectionEquality()
                .equals(other._cacheHashes, _cacheHashes) &&
            const DeepCollectionEquality().equals(other._userId, _userId) &&
            const DeepCollectionEquality().equals(other._webTours, _webTours) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.odoobotInitialized, odoobotInitialized) ||
                other.odoobotInitialized == odoobotInitialized) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uid,
        isSystem,
        isAdmin,
        const DeepCollectionEquality().hash(_userContext),
        db,
        serverVersion,
        const DeepCollectionEquality().hash(_serverVersionInfo),
        name,
        username,
        partnerDisplayName,
        partnerId,
        webBaseUrl,
        activeIdsLimit,
        maxFileUploadSize,
        const DeepCollectionEquality().hash(_userCompanies),
        const DeepCollectionEquality().hash(_currencies),
        displaySwitchCompanyMenu,
        const DeepCollectionEquality().hash(_cacheHashes),
        const DeepCollectionEquality().hash(_userId),
        const DeepCollectionEquality().hash(_webTours),
        notificationType,
        odoobotInitialized,
        companyId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResultImplCopyWith<_$LoginResultImpl> get copyWith =>
      __$$LoginResultImplCopyWithImpl<_$LoginResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResultImplToJson(
      this,
    );
  }
}

abstract class _LoginResult implements LoginResult {
  const factory _LoginResult(
      {required final int uid,
      @JsonKey(name: 'is_system') required final bool isSystem,
      @JsonKey(name: 'is_admin') required final bool isAdmin,
      @JsonKey(name: 'user_context')
      required final Map<String, dynamic> userContext,
      required final String db,
      @JsonKey(name: 'server_version') required final String serverVersion,
      @JsonKey(name: 'server_version_info')
      required final List<dynamic> serverVersionInfo,
      required final String name,
      required final String username,
      @JsonKey(name: 'partner_display_name')
      required final String partnerDisplayName,
      @JsonKey(name: 'partner_id') required final int partnerId,
      @JsonKey(name: 'web.base.url') required final String webBaseUrl,
      @JsonKey(name: 'active_ids_limit') required final int activeIdsLimit,
      @JsonKey(name: 'max_file_upload_size')
      required final int maxFileUploadSize,
      @JsonKey(name: 'user_companies')
      required final Map<String, dynamic> userCompanies,
      required final Map<String, dynamic> currencies,
      @JsonKey(name: 'display_switch_company_menu')
      required final bool displaySwitchCompanyMenu,
      @JsonKey(name: 'cache_hashes')
      required final Map<String, dynamic> cacheHashes,
      @JsonKey(name: 'user_id') required final List<int> userId,
      @JsonKey(name: 'web_tours') required final List<dynamic> webTours,
      @JsonKey(name: 'notification_type')
      required final String notificationType,
      @JsonKey(name: 'odoobot_initialized')
      required final bool odoobotInitialized,
      @JsonKey(name: 'company_id') final int? companyId}) = _$LoginResultImpl;

  factory _LoginResult.fromJson(Map<String, dynamic> json) =
      _$LoginResultImpl.fromJson;

  @override
  int get uid;
  @override
  @JsonKey(name: 'is_system')
  bool get isSystem;
  @override
  @JsonKey(name: 'is_admin')
  bool get isAdmin;
  @override
  @JsonKey(name: 'user_context')
  Map<String, dynamic> get userContext;
  @override
  String get db;
  @override
  @JsonKey(name: 'server_version')
  String get serverVersion;
  @override
  @JsonKey(name: 'server_version_info')
  List<dynamic> get serverVersionInfo;
  @override
  String get name;
  @override
  String get username;
  @override
  @JsonKey(name: 'partner_display_name')
  String get partnerDisplayName;
  @override
  @JsonKey(name: 'partner_id')
  int get partnerId;
  @override
  @JsonKey(name: 'web.base.url')
  String get webBaseUrl;
  @override
  @JsonKey(name: 'active_ids_limit')
  int get activeIdsLimit;
  @override
  @JsonKey(name: 'max_file_upload_size')
  int get maxFileUploadSize;
  @override
  @JsonKey(name: 'user_companies')
  Map<String, dynamic> get userCompanies;
  @override
  Map<String, dynamic> get currencies;
  @override
  @JsonKey(name: 'display_switch_company_menu')
  bool get displaySwitchCompanyMenu;
  @override
  @JsonKey(name: 'cache_hashes')
  Map<String, dynamic> get cacheHashes;
  @override
  @JsonKey(name: 'user_id')
  List<int> get userId;
  @override
  @JsonKey(name: 'web_tours')
  List<dynamic> get webTours;
  @override
  @JsonKey(name: 'notification_type')
  String get notificationType;
  @override
  @JsonKey(name: 'odoobot_initialized')
  bool get odoobotInitialized;
  @override
  @JsonKey(name: 'company_id')
  int? get companyId;
  @override
  @JsonKey(ignore: true)
  _$$LoginResultImplCopyWith<_$LoginResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
