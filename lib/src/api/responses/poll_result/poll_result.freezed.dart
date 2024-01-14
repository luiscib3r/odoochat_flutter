// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollResult _$PollResultFromJson(Map<String, dynamic> json) {
  return _PollResult.fromJson(json);
}

/// @nodoc
mixin _$PollResult {
  int get id => throw _privateConstructorUsedError;
  List<dynamic> get channel => throw _privateConstructorUsedError;
  @JsonKey(fromJson: PollMessage.fromResult)
  PollMessage<dynamic> get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollResultCopyWith<PollResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollResultCopyWith<$Res> {
  factory $PollResultCopyWith(
          PollResult value, $Res Function(PollResult) then) =
      _$PollResultCopyWithImpl<$Res, PollResult>;
  @useResult
  $Res call(
      {int id,
      List<dynamic> channel,
      @JsonKey(fromJson: PollMessage.fromResult) PollMessage<dynamic> message});
}

/// @nodoc
class _$PollResultCopyWithImpl<$Res, $Val extends PollResult>
    implements $PollResultCopyWith<$Res> {
  _$PollResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channel = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PollMessage<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollResultImplCopyWith<$Res>
    implements $PollResultCopyWith<$Res> {
  factory _$$PollResultImplCopyWith(
          _$PollResultImpl value, $Res Function(_$PollResultImpl) then) =
      __$$PollResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<dynamic> channel,
      @JsonKey(fromJson: PollMessage.fromResult) PollMessage<dynamic> message});
}

/// @nodoc
class __$$PollResultImplCopyWithImpl<$Res>
    extends _$PollResultCopyWithImpl<$Res, _$PollResultImpl>
    implements _$$PollResultImplCopyWith<$Res> {
  __$$PollResultImplCopyWithImpl(
      _$PollResultImpl _value, $Res Function(_$PollResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channel = null,
    Object? message = null,
  }) {
    return _then(_$PollResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      channel: null == channel
          ? _value._channel
          : channel // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PollMessage<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollResultImpl implements _PollResult {
  const _$PollResultImpl(
      {required this.id,
      required final List<dynamic> channel,
      @JsonKey(fromJson: PollMessage.fromResult) required this.message})
      : _channel = channel;

  factory _$PollResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollResultImplFromJson(json);

  @override
  final int id;
  final List<dynamic> _channel;
  @override
  List<dynamic> get channel {
    if (_channel is EqualUnmodifiableListView) return _channel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channel);
  }

  @override
  @JsonKey(fromJson: PollMessage.fromResult)
  final PollMessage<dynamic> message;

  @override
  String toString() {
    return 'PollResult(id: $id, channel: $channel, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._channel, _channel) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_channel), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PollResultImplCopyWith<_$PollResultImpl> get copyWith =>
      __$$PollResultImplCopyWithImpl<_$PollResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollResultImplToJson(
      this,
    );
  }
}

abstract class _PollResult implements PollResult {
  const factory _PollResult(
      {required final int id,
      required final List<dynamic> channel,
      @JsonKey(fromJson: PollMessage.fromResult)
      required final PollMessage<dynamic> message}) = _$PollResultImpl;

  factory _PollResult.fromJson(Map<String, dynamic> json) =
      _$PollResultImpl.fromJson;

  @override
  int get id;
  @override
  List<dynamic> get channel;
  @override
  @JsonKey(fromJson: PollMessage.fromResult)
  PollMessage<dynamic> get message;
  @override
  @JsonKey(ignore: true)
  _$$PollResultImplCopyWith<_$PollResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
