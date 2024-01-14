// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollParams _$PollParamsFromJson(Map<String, dynamic> json) {
  return _PollParams.fromJson(json);
}

/// @nodoc
mixin _$PollParams {
  int get last => throw _privateConstructorUsedError;
  List<String> get channels => throw _privateConstructorUsedError;
  Map<String, dynamic> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollParamsCopyWith<PollParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollParamsCopyWith<$Res> {
  factory $PollParamsCopyWith(
          PollParams value, $Res Function(PollParams) then) =
      _$PollParamsCopyWithImpl<$Res, PollParams>;
  @useResult
  $Res call({int last, List<String> channels, Map<String, dynamic> options});
}

/// @nodoc
class _$PollParamsCopyWithImpl<$Res, $Val extends PollParams>
    implements $PollParamsCopyWith<$Res> {
  _$PollParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? channels = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollParamsImplCopyWith<$Res>
    implements $PollParamsCopyWith<$Res> {
  factory _$$PollParamsImplCopyWith(
          _$PollParamsImpl value, $Res Function(_$PollParamsImpl) then) =
      __$$PollParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int last, List<String> channels, Map<String, dynamic> options});
}

/// @nodoc
class __$$PollParamsImplCopyWithImpl<$Res>
    extends _$PollParamsCopyWithImpl<$Res, _$PollParamsImpl>
    implements _$$PollParamsImplCopyWith<$Res> {
  __$$PollParamsImplCopyWithImpl(
      _$PollParamsImpl _value, $Res Function(_$PollParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? channels = null,
    Object? options = null,
  }) {
    return _then(_$PollParamsImpl(
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as int,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollParamsImpl implements _PollParams {
  const _$PollParamsImpl(
      {required this.last,
      required final List<String> channels,
      required final Map<String, dynamic> options})
      : _channels = channels,
        _options = options;

  factory _$PollParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollParamsImplFromJson(json);

  @override
  final int last;
  final List<String> _channels;
  @override
  List<String> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  final Map<String, dynamic> _options;
  @override
  Map<String, dynamic> get options {
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_options);
  }

  @override
  String toString() {
    return 'PollParams._(last: $last, channels: $channels, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollParamsImpl &&
            (identical(other.last, last) || other.last == last) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      last,
      const DeepCollectionEquality().hash(_channels),
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PollParamsImplCopyWith<_$PollParamsImpl> get copyWith =>
      __$$PollParamsImplCopyWithImpl<_$PollParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollParamsImplToJson(
      this,
    );
  }
}

abstract class _PollParams implements PollParams {
  const factory _PollParams(
      {required final int last,
      required final List<String> channels,
      required final Map<String, dynamic> options}) = _$PollParamsImpl;

  factory _PollParams.fromJson(Map<String, dynamic> json) =
      _$PollParamsImpl.fromJson;

  @override
  int get last;
  @override
  List<String> get channels;
  @override
  Map<String, dynamic> get options;
  @override
  @JsonKey(ignore: true)
  _$$PollParamsImplCopyWith<_$PollParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
