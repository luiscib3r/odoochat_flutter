// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_messaging_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitMessagingParams _$InitMessagingParamsFromJson(Map<String, dynamic> json) {
  return _InitMessagingParams.fromJson(json);
}

/// @nodoc
mixin _$InitMessagingParams {
  Map<String, dynamic> get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitMessagingParamsCopyWith<InitMessagingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitMessagingParamsCopyWith<$Res> {
  factory $InitMessagingParamsCopyWith(
          InitMessagingParams value, $Res Function(InitMessagingParams) then) =
      _$InitMessagingParamsCopyWithImpl<$Res, InitMessagingParams>;
  @useResult
  $Res call({Map<String, dynamic> context});
}

/// @nodoc
class _$InitMessagingParamsCopyWithImpl<$Res, $Val extends InitMessagingParams>
    implements $InitMessagingParamsCopyWith<$Res> {
  _$InitMessagingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitMessagingParamsImplCopyWith<$Res>
    implements $InitMessagingParamsCopyWith<$Res> {
  factory _$$InitMessagingParamsImplCopyWith(_$InitMessagingParamsImpl value,
          $Res Function(_$InitMessagingParamsImpl) then) =
      __$$InitMessagingParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> context});
}

/// @nodoc
class __$$InitMessagingParamsImplCopyWithImpl<$Res>
    extends _$InitMessagingParamsCopyWithImpl<$Res, _$InitMessagingParamsImpl>
    implements _$$InitMessagingParamsImplCopyWith<$Res> {
  __$$InitMessagingParamsImplCopyWithImpl(_$InitMessagingParamsImpl _value,
      $Res Function(_$InitMessagingParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$InitMessagingParamsImpl(
      context: null == context
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitMessagingParamsImpl implements _InitMessagingParams {
  const _$InitMessagingParamsImpl({required final Map<String, dynamic> context})
      : _context = context;

  factory _$InitMessagingParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitMessagingParamsImplFromJson(json);

  final Map<String, dynamic> _context;
  @override
  Map<String, dynamic> get context {
    if (_context is EqualUnmodifiableMapView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_context);
  }

  @override
  String toString() {
    return 'InitMessagingParams(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitMessagingParamsImpl &&
            const DeepCollectionEquality().equals(other._context, _context));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_context));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitMessagingParamsImplCopyWith<_$InitMessagingParamsImpl> get copyWith =>
      __$$InitMessagingParamsImplCopyWithImpl<_$InitMessagingParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitMessagingParamsImplToJson(
      this,
    );
  }
}

abstract class _InitMessagingParams implements InitMessagingParams {
  const factory _InitMessagingParams(
          {required final Map<String, dynamic> context}) =
      _$InitMessagingParamsImpl;

  factory _InitMessagingParams.fromJson(Map<String, dynamic> json) =
      _$InitMessagingParamsImpl.fromJson;

  @override
  Map<String, dynamic> get context;
  @override
  @JsonKey(ignore: true)
  _$$InitMessagingParamsImplCopyWith<_$InitMessagingParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
