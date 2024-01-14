// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_post_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessagePostParams _$MessagePostParamsFromJson(Map<String, dynamic> json) {
  return _MessagePostParams.fromJson(json);
}

/// @nodoc
mixin _$MessagePostParams {
  List<dynamic> get args => throw _privateConstructorUsedError;
  Map<String, dynamic> get kwargs => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagePostParamsCopyWith<MessagePostParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagePostParamsCopyWith<$Res> {
  factory $MessagePostParamsCopyWith(
          MessagePostParams value, $Res Function(MessagePostParams) then) =
      _$MessagePostParamsCopyWithImpl<$Res, MessagePostParams>;
  @useResult
  $Res call(
      {List<dynamic> args,
      Map<String, dynamic> kwargs,
      String method,
      String model});
}

/// @nodoc
class _$MessagePostParamsCopyWithImpl<$Res, $Val extends MessagePostParams>
    implements $MessagePostParamsCopyWith<$Res> {
  _$MessagePostParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
    Object? kwargs = null,
    Object? method = null,
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      args: null == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      kwargs: null == kwargs
          ? _value.kwargs
          : kwargs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessagePostParamsImplCopyWith<$Res>
    implements $MessagePostParamsCopyWith<$Res> {
  factory _$$MessagePostParamsImplCopyWith(_$MessagePostParamsImpl value,
          $Res Function(_$MessagePostParamsImpl) then) =
      __$$MessagePostParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> args,
      Map<String, dynamic> kwargs,
      String method,
      String model});
}

/// @nodoc
class __$$MessagePostParamsImplCopyWithImpl<$Res>
    extends _$MessagePostParamsCopyWithImpl<$Res, _$MessagePostParamsImpl>
    implements _$$MessagePostParamsImplCopyWith<$Res> {
  __$$MessagePostParamsImplCopyWithImpl(_$MessagePostParamsImpl _value,
      $Res Function(_$MessagePostParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? args = null,
    Object? kwargs = null,
    Object? method = null,
    Object? model = null,
  }) {
    return _then(_$MessagePostParamsImpl(
      args: null == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      kwargs: null == kwargs
          ? _value._kwargs
          : kwargs // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagePostParamsImpl implements _MessagePostParams {
  const _$MessagePostParamsImpl(
      {required final List<dynamic> args,
      required final Map<String, dynamic> kwargs,
      required this.method,
      required this.model})
      : _args = args,
        _kwargs = kwargs;

  factory _$MessagePostParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagePostParamsImplFromJson(json);

  final List<dynamic> _args;
  @override
  List<dynamic> get args {
    if (_args is EqualUnmodifiableListView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_args);
  }

  final Map<String, dynamic> _kwargs;
  @override
  Map<String, dynamic> get kwargs {
    if (_kwargs is EqualUnmodifiableMapView) return _kwargs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_kwargs);
  }

  @override
  final String method;
  @override
  final String model;

  @override
  String toString() {
    return 'MessagePostParams._(args: $args, kwargs: $kwargs, method: $method, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePostParamsImpl &&
            const DeepCollectionEquality().equals(other._args, _args) &&
            const DeepCollectionEquality().equals(other._kwargs, _kwargs) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.model, model) || other.model == model));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_args),
      const DeepCollectionEquality().hash(_kwargs),
      method,
      model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePostParamsImplCopyWith<_$MessagePostParamsImpl> get copyWith =>
      __$$MessagePostParamsImplCopyWithImpl<_$MessagePostParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagePostParamsImplToJson(
      this,
    );
  }
}

abstract class _MessagePostParams implements MessagePostParams {
  const factory _MessagePostParams(
      {required final List<dynamic> args,
      required final Map<String, dynamic> kwargs,
      required final String method,
      required final String model}) = _$MessagePostParamsImpl;

  factory _MessagePostParams.fromJson(Map<String, dynamic> json) =
      _$MessagePostParamsImpl.fromJson;

  @override
  List<dynamic> get args;
  @override
  Map<String, dynamic> get kwargs;
  @override
  String get method;
  @override
  String get model;
  @override
  @JsonKey(ignore: true)
  _$$MessagePostParamsImplCopyWith<_$MessagePostParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
