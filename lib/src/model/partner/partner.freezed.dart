// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Partner _$PartnerFromJson(Map<String, dynamic> json) {
  return _Partner.fromJson(json);
}

/// @nodoc
mixin _$Partner {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'im_status')
  String get imStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_internal_user')
  bool get isInternalUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerCopyWith<Partner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerCopyWith<$Res> {
  factory $PartnerCopyWith(Partner value, $Res Function(Partner) then) =
      _$PartnerCopyWithImpl<$Res, Partner>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'display_name') String displayName,
      String name,
      String email,
      bool active,
      @JsonKey(name: 'im_status') String imStatus,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'is_internal_user') bool isInternalUser});
}

/// @nodoc
class _$PartnerCopyWithImpl<$Res, $Val extends Partner>
    implements $PartnerCopyWith<$Res> {
  _$PartnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? name = null,
    Object? email = null,
    Object? active = null,
    Object? imStatus = null,
    Object? userId = null,
    Object? isInternalUser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      imStatus: null == imStatus
          ? _value.imStatus
          : imStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isInternalUser: null == isInternalUser
          ? _value.isInternalUser
          : isInternalUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartnerImplCopyWith<$Res> implements $PartnerCopyWith<$Res> {
  factory _$$PartnerImplCopyWith(
          _$PartnerImpl value, $Res Function(_$PartnerImpl) then) =
      __$$PartnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'display_name') String displayName,
      String name,
      String email,
      bool active,
      @JsonKey(name: 'im_status') String imStatus,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'is_internal_user') bool isInternalUser});
}

/// @nodoc
class __$$PartnerImplCopyWithImpl<$Res>
    extends _$PartnerCopyWithImpl<$Res, _$PartnerImpl>
    implements _$$PartnerImplCopyWith<$Res> {
  __$$PartnerImplCopyWithImpl(
      _$PartnerImpl _value, $Res Function(_$PartnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? name = null,
    Object? email = null,
    Object? active = null,
    Object? imStatus = null,
    Object? userId = null,
    Object? isInternalUser = null,
  }) {
    return _then(_$PartnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      imStatus: null == imStatus
          ? _value.imStatus
          : imStatus // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isInternalUser: null == isInternalUser
          ? _value.isInternalUser
          : isInternalUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerImpl implements _Partner {
  const _$PartnerImpl(
      {required this.id,
      @JsonKey(name: 'display_name') required this.displayName,
      required this.name,
      required this.email,
      required this.active,
      @JsonKey(name: 'im_status') required this.imStatus,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'is_internal_user') required this.isInternalUser});

  factory _$PartnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  final String name;
  @override
  final String email;
  @override
  final bool active;
  @override
  @JsonKey(name: 'im_status')
  final String imStatus;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'is_internal_user')
  final bool isInternalUser;

  @override
  String toString() {
    return 'Partner(id: $id, displayName: $displayName, name: $name, email: $email, active: $active, imStatus: $imStatus, userId: $userId, isInternalUser: $isInternalUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.imStatus, imStatus) ||
                other.imStatus == imStatus) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isInternalUser, isInternalUser) ||
                other.isInternalUser == isInternalUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, displayName, name, email,
      active, imStatus, userId, isInternalUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerImplCopyWith<_$PartnerImpl> get copyWith =>
      __$$PartnerImplCopyWithImpl<_$PartnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerImplToJson(
      this,
    );
  }
}

abstract class _Partner implements Partner {
  const factory _Partner(
      {required final int id,
      @JsonKey(name: 'display_name') required final String displayName,
      required final String name,
      required final String email,
      required final bool active,
      @JsonKey(name: 'im_status') required final String imStatus,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'is_internal_user')
      required final bool isInternalUser}) = _$PartnerImpl;

  factory _Partner.fromJson(Map<String, dynamic> json) = _$PartnerImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  String get name;
  @override
  String get email;
  @override
  bool get active;
  @override
  @JsonKey(name: 'im_status')
  String get imStatus;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'is_internal_user')
  bool get isInternalUser;
  @override
  @JsonKey(ignore: true)
  _$$PartnerImplCopyWith<_$PartnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
