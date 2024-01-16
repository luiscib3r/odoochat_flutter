// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_messages_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMessagesParams _$GetMessagesParamsFromJson(Map<String, dynamic> json) {
  return _GetMessagesParams.fromJson(json);
}

/// @nodoc
mixin _$GetMessagesParams {
  @JsonKey(name: 'channel_id')
  int get channelId => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMessagesParamsCopyWith<GetMessagesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMessagesParamsCopyWith<$Res> {
  factory $GetMessagesParamsCopyWith(
          GetMessagesParams value, $Res Function(GetMessagesParams) then) =
      _$GetMessagesParamsCopyWithImpl<$Res, GetMessagesParams>;
  @useResult
  $Res call({@JsonKey(name: 'channel_id') int channelId, int limit});
}

/// @nodoc
class _$GetMessagesParamsCopyWithImpl<$Res, $Val extends GetMessagesParams>
    implements $GetMessagesParamsCopyWith<$Res> {
  _$GetMessagesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMessagesParamsImplCopyWith<$Res>
    implements $GetMessagesParamsCopyWith<$Res> {
  factory _$$GetMessagesParamsImplCopyWith(_$GetMessagesParamsImpl value,
          $Res Function(_$GetMessagesParamsImpl) then) =
      __$$GetMessagesParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'channel_id') int channelId, int limit});
}

/// @nodoc
class __$$GetMessagesParamsImplCopyWithImpl<$Res>
    extends _$GetMessagesParamsCopyWithImpl<$Res, _$GetMessagesParamsImpl>
    implements _$$GetMessagesParamsImplCopyWith<$Res> {
  __$$GetMessagesParamsImplCopyWithImpl(_$GetMessagesParamsImpl _value,
      $Res Function(_$GetMessagesParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelId = null,
    Object? limit = null,
  }) {
    return _then(_$GetMessagesParamsImpl(
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMessagesParamsImpl implements _GetMessagesParams {
  const _$GetMessagesParamsImpl(
      {@JsonKey(name: 'channel_id') required this.channelId,
      required this.limit});

  factory _$GetMessagesParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMessagesParamsImplFromJson(json);

  @override
  @JsonKey(name: 'channel_id')
  final int channelId;
  @override
  final int limit;

  @override
  String toString() {
    return 'GetMessagesParams(channelId: $channelId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesParamsImpl &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, channelId, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesParamsImplCopyWith<_$GetMessagesParamsImpl> get copyWith =>
      __$$GetMessagesParamsImplCopyWithImpl<_$GetMessagesParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMessagesParamsImplToJson(
      this,
    );
  }
}

abstract class _GetMessagesParams implements GetMessagesParams {
  const factory _GetMessagesParams(
      {@JsonKey(name: 'channel_id') required final int channelId,
      required final int limit}) = _$GetMessagesParamsImpl;

  factory _GetMessagesParams.fromJson(Map<String, dynamic> json) =
      _$GetMessagesParamsImpl.fromJson;

  @override
  @JsonKey(name: 'channel_id')
  int get channelId;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$GetMessagesParamsImplCopyWith<_$GetMessagesParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
