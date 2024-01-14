// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OdooChatState {
  List<Message> get messages => throw _privateConstructorUsedError;
  List<AppChannel> get channels => throw _privateConstructorUsedError;
  AppChannel? get currentChannel => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OdooChatStateCopyWith<OdooChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OdooChatStateCopyWith<$Res> {
  factory $OdooChatStateCopyWith(
          OdooChatState value, $Res Function(OdooChatState) then) =
      _$OdooChatStateCopyWithImpl<$Res, OdooChatState>;
  @useResult
  $Res call(
      {List<Message> messages,
      List<AppChannel> channels,
      AppChannel? currentChannel,
      User? user});
}

/// @nodoc
class _$OdooChatStateCopyWithImpl<$Res, $Val extends OdooChatState>
    implements $OdooChatStateCopyWith<$Res> {
  _$OdooChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? channels = null,
    Object? currentChannel = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<AppChannel>,
      currentChannel: freezed == currentChannel
          ? _value.currentChannel
          : currentChannel // ignore: cast_nullable_to_non_nullable
              as AppChannel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OdooChatStateImplCopyWith<$Res>
    implements $OdooChatStateCopyWith<$Res> {
  factory _$$OdooChatStateImplCopyWith(
          _$OdooChatStateImpl value, $Res Function(_$OdooChatStateImpl) then) =
      __$$OdooChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Message> messages,
      List<AppChannel> channels,
      AppChannel? currentChannel,
      User? user});
}

/// @nodoc
class __$$OdooChatStateImplCopyWithImpl<$Res>
    extends _$OdooChatStateCopyWithImpl<$Res, _$OdooChatStateImpl>
    implements _$$OdooChatStateImplCopyWith<$Res> {
  __$$OdooChatStateImplCopyWithImpl(
      _$OdooChatStateImpl _value, $Res Function(_$OdooChatStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? channels = null,
    Object? currentChannel = freezed,
    Object? user = freezed,
  }) {
    return _then(_$OdooChatStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<AppChannel>,
      currentChannel: freezed == currentChannel
          ? _value.currentChannel
          : currentChannel // ignore: cast_nullable_to_non_nullable
              as AppChannel?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$OdooChatStateImpl implements _OdooChatState {
  const _$OdooChatStateImpl(
      {required final List<Message> messages,
      required final List<AppChannel> channels,
      this.currentChannel,
      this.user})
      : _messages = messages,
        _channels = channels;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  final List<AppChannel> _channels;
  @override
  List<AppChannel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  final AppChannel? currentChannel;
  @override
  final User? user;

  @override
  String toString() {
    return 'OdooChatState(messages: $messages, channels: $channels, currentChannel: $currentChannel, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OdooChatStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            (identical(other.currentChannel, currentChannel) ||
                other.currentChannel == currentChannel) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_messages),
      const DeepCollectionEquality().hash(_channels),
      currentChannel,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OdooChatStateImplCopyWith<_$OdooChatStateImpl> get copyWith =>
      __$$OdooChatStateImplCopyWithImpl<_$OdooChatStateImpl>(this, _$identity);
}

abstract class _OdooChatState implements OdooChatState {
  const factory _OdooChatState(
      {required final List<Message> messages,
      required final List<AppChannel> channels,
      final AppChannel? currentChannel,
      final User? user}) = _$OdooChatStateImpl;

  @override
  List<Message> get messages;
  @override
  List<AppChannel> get channels;
  @override
  AppChannel? get currentChannel;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$OdooChatStateImplCopyWith<_$OdooChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
