// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_messaging_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitMessagingResult _$InitMessagingResultFromJson(Map<String, dynamic> json) {
  return _InitMessagingResult.fromJson(json);
}

/// @nodoc
mixin _$InitMessagingResult {
  @JsonKey(name: 'needaction_inbox_counter')
  int get needactionInboxCounter => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred_counter')
  int get starredCounter => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_slots')
  ChannelSlots get channelSlots => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_partner')
  Partner get currentPartner => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_user_id')
  int get currentUserId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitMessagingResultCopyWith<InitMessagingResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitMessagingResultCopyWith<$Res> {
  factory $InitMessagingResultCopyWith(
          InitMessagingResult value, $Res Function(InitMessagingResult) then) =
      _$InitMessagingResultCopyWithImpl<$Res, InitMessagingResult>;
  @useResult
  $Res call(
      {@JsonKey(name: 'needaction_inbox_counter') int needactionInboxCounter,
      @JsonKey(name: 'starred_counter') int starredCounter,
      @JsonKey(name: 'channel_slots') ChannelSlots channelSlots,
      @JsonKey(name: 'current_partner') Partner currentPartner,
      @JsonKey(name: 'current_user_id') int currentUserId});

  $ChannelSlotsCopyWith<$Res> get channelSlots;
  $PartnerCopyWith<$Res> get currentPartner;
}

/// @nodoc
class _$InitMessagingResultCopyWithImpl<$Res, $Val extends InitMessagingResult>
    implements $InitMessagingResultCopyWith<$Res> {
  _$InitMessagingResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needactionInboxCounter = null,
    Object? starredCounter = null,
    Object? channelSlots = null,
    Object? currentPartner = null,
    Object? currentUserId = null,
  }) {
    return _then(_value.copyWith(
      needactionInboxCounter: null == needactionInboxCounter
          ? _value.needactionInboxCounter
          : needactionInboxCounter // ignore: cast_nullable_to_non_nullable
              as int,
      starredCounter: null == starredCounter
          ? _value.starredCounter
          : starredCounter // ignore: cast_nullable_to_non_nullable
              as int,
      channelSlots: null == channelSlots
          ? _value.channelSlots
          : channelSlots // ignore: cast_nullable_to_non_nullable
              as ChannelSlots,
      currentPartner: null == currentPartner
          ? _value.currentPartner
          : currentPartner // ignore: cast_nullable_to_non_nullable
              as Partner,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelSlotsCopyWith<$Res> get channelSlots {
    return $ChannelSlotsCopyWith<$Res>(_value.channelSlots, (value) {
      return _then(_value.copyWith(channelSlots: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnerCopyWith<$Res> get currentPartner {
    return $PartnerCopyWith<$Res>(_value.currentPartner, (value) {
      return _then(_value.copyWith(currentPartner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitMessagingResultImplCopyWith<$Res>
    implements $InitMessagingResultCopyWith<$Res> {
  factory _$$InitMessagingResultImplCopyWith(_$InitMessagingResultImpl value,
          $Res Function(_$InitMessagingResultImpl) then) =
      __$$InitMessagingResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'needaction_inbox_counter') int needactionInboxCounter,
      @JsonKey(name: 'starred_counter') int starredCounter,
      @JsonKey(name: 'channel_slots') ChannelSlots channelSlots,
      @JsonKey(name: 'current_partner') Partner currentPartner,
      @JsonKey(name: 'current_user_id') int currentUserId});

  @override
  $ChannelSlotsCopyWith<$Res> get channelSlots;
  @override
  $PartnerCopyWith<$Res> get currentPartner;
}

/// @nodoc
class __$$InitMessagingResultImplCopyWithImpl<$Res>
    extends _$InitMessagingResultCopyWithImpl<$Res, _$InitMessagingResultImpl>
    implements _$$InitMessagingResultImplCopyWith<$Res> {
  __$$InitMessagingResultImplCopyWithImpl(_$InitMessagingResultImpl _value,
      $Res Function(_$InitMessagingResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? needactionInboxCounter = null,
    Object? starredCounter = null,
    Object? channelSlots = null,
    Object? currentPartner = null,
    Object? currentUserId = null,
  }) {
    return _then(_$InitMessagingResultImpl(
      needactionInboxCounter: null == needactionInboxCounter
          ? _value.needactionInboxCounter
          : needactionInboxCounter // ignore: cast_nullable_to_non_nullable
              as int,
      starredCounter: null == starredCounter
          ? _value.starredCounter
          : starredCounter // ignore: cast_nullable_to_non_nullable
              as int,
      channelSlots: null == channelSlots
          ? _value.channelSlots
          : channelSlots // ignore: cast_nullable_to_non_nullable
              as ChannelSlots,
      currentPartner: null == currentPartner
          ? _value.currentPartner
          : currentPartner // ignore: cast_nullable_to_non_nullable
              as Partner,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitMessagingResultImpl implements _InitMessagingResult {
  const _$InitMessagingResultImpl(
      {@JsonKey(name: 'needaction_inbox_counter')
      required this.needactionInboxCounter,
      @JsonKey(name: 'starred_counter') required this.starredCounter,
      @JsonKey(name: 'channel_slots') required this.channelSlots,
      @JsonKey(name: 'current_partner') required this.currentPartner,
      @JsonKey(name: 'current_user_id') required this.currentUserId});

  factory _$InitMessagingResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitMessagingResultImplFromJson(json);

  @override
  @JsonKey(name: 'needaction_inbox_counter')
  final int needactionInboxCounter;
  @override
  @JsonKey(name: 'starred_counter')
  final int starredCounter;
  @override
  @JsonKey(name: 'channel_slots')
  final ChannelSlots channelSlots;
  @override
  @JsonKey(name: 'current_partner')
  final Partner currentPartner;
  @override
  @JsonKey(name: 'current_user_id')
  final int currentUserId;

  @override
  String toString() {
    return 'InitMessagingResult(needactionInboxCounter: $needactionInboxCounter, starredCounter: $starredCounter, channelSlots: $channelSlots, currentPartner: $currentPartner, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitMessagingResultImpl &&
            (identical(other.needactionInboxCounter, needactionInboxCounter) ||
                other.needactionInboxCounter == needactionInboxCounter) &&
            (identical(other.starredCounter, starredCounter) ||
                other.starredCounter == starredCounter) &&
            (identical(other.channelSlots, channelSlots) ||
                other.channelSlots == channelSlots) &&
            (identical(other.currentPartner, currentPartner) ||
                other.currentPartner == currentPartner) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, needactionInboxCounter,
      starredCounter, channelSlots, currentPartner, currentUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitMessagingResultImplCopyWith<_$InitMessagingResultImpl> get copyWith =>
      __$$InitMessagingResultImplCopyWithImpl<_$InitMessagingResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitMessagingResultImplToJson(
      this,
    );
  }
}

abstract class _InitMessagingResult implements InitMessagingResult {
  const factory _InitMessagingResult(
      {@JsonKey(name: 'needaction_inbox_counter')
      required final int needactionInboxCounter,
      @JsonKey(name: 'starred_counter') required final int starredCounter,
      @JsonKey(name: 'channel_slots') required final ChannelSlots channelSlots,
      @JsonKey(name: 'current_partner') required final Partner currentPartner,
      @JsonKey(name: 'current_user_id')
      required final int currentUserId}) = _$InitMessagingResultImpl;

  factory _InitMessagingResult.fromJson(Map<String, dynamic> json) =
      _$InitMessagingResultImpl.fromJson;

  @override
  @JsonKey(name: 'needaction_inbox_counter')
  int get needactionInboxCounter;
  @override
  @JsonKey(name: 'starred_counter')
  int get starredCounter;
  @override
  @JsonKey(name: 'channel_slots')
  ChannelSlots get channelSlots;
  @override
  @JsonKey(name: 'current_partner')
  Partner get currentPartner;
  @override
  @JsonKey(name: 'current_user_id')
  int get currentUserId;
  @override
  @JsonKey(ignore: true)
  _$$InitMessagingResultImplCopyWith<_$InitMessagingResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelSlots _$ChannelSlotsFromJson(Map<String, dynamic> json) {
  return _ChannelSlots.fromJson(json);
}

/// @nodoc
mixin _$ChannelSlots {
  @JsonKey(name: 'channel_channel')
  List<Channel> get channels => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_direct_message')
  List<Channel> get directMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_private_group')
  List<Channel> get privateGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelSlotsCopyWith<ChannelSlots> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelSlotsCopyWith<$Res> {
  factory $ChannelSlotsCopyWith(
          ChannelSlots value, $Res Function(ChannelSlots) then) =
      _$ChannelSlotsCopyWithImpl<$Res, ChannelSlots>;
  @useResult
  $Res call(
      {@JsonKey(name: 'channel_channel') List<Channel> channels,
      @JsonKey(name: 'channel_direct_message') List<Channel> directMessages,
      @JsonKey(name: 'channel_private_group') List<Channel> privateGroups});
}

/// @nodoc
class _$ChannelSlotsCopyWithImpl<$Res, $Val extends ChannelSlots>
    implements $ChannelSlotsCopyWith<$Res> {
  _$ChannelSlotsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
    Object? directMessages = null,
    Object? privateGroups = null,
  }) {
    return _then(_value.copyWith(
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      directMessages: null == directMessages
          ? _value.directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      privateGroups: null == privateGroups
          ? _value.privateGroups
          : privateGroups // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelSlotsImplCopyWith<$Res>
    implements $ChannelSlotsCopyWith<$Res> {
  factory _$$ChannelSlotsImplCopyWith(
          _$ChannelSlotsImpl value, $Res Function(_$ChannelSlotsImpl) then) =
      __$$ChannelSlotsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'channel_channel') List<Channel> channels,
      @JsonKey(name: 'channel_direct_message') List<Channel> directMessages,
      @JsonKey(name: 'channel_private_group') List<Channel> privateGroups});
}

/// @nodoc
class __$$ChannelSlotsImplCopyWithImpl<$Res>
    extends _$ChannelSlotsCopyWithImpl<$Res, _$ChannelSlotsImpl>
    implements _$$ChannelSlotsImplCopyWith<$Res> {
  __$$ChannelSlotsImplCopyWithImpl(
      _$ChannelSlotsImpl _value, $Res Function(_$ChannelSlotsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
    Object? directMessages = null,
    Object? privateGroups = null,
  }) {
    return _then(_$ChannelSlotsImpl(
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      directMessages: null == directMessages
          ? _value._directMessages
          : directMessages // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
      privateGroups: null == privateGroups
          ? _value._privateGroups
          : privateGroups // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelSlotsImpl implements _ChannelSlots {
  const _$ChannelSlotsImpl(
      {@JsonKey(name: 'channel_channel') required final List<Channel> channels,
      @JsonKey(name: 'channel_direct_message')
      required final List<Channel> directMessages,
      @JsonKey(name: 'channel_private_group')
      required final List<Channel> privateGroups})
      : _channels = channels,
        _directMessages = directMessages,
        _privateGroups = privateGroups;

  factory _$ChannelSlotsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelSlotsImplFromJson(json);

  final List<Channel> _channels;
  @override
  @JsonKey(name: 'channel_channel')
  List<Channel> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  final List<Channel> _directMessages;
  @override
  @JsonKey(name: 'channel_direct_message')
  List<Channel> get directMessages {
    if (_directMessages is EqualUnmodifiableListView) return _directMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directMessages);
  }

  final List<Channel> _privateGroups;
  @override
  @JsonKey(name: 'channel_private_group')
  List<Channel> get privateGroups {
    if (_privateGroups is EqualUnmodifiableListView) return _privateGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_privateGroups);
  }

  @override
  String toString() {
    return 'ChannelSlots(channels: $channels, directMessages: $directMessages, privateGroups: $privateGroups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelSlotsImpl &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality()
                .equals(other._directMessages, _directMessages) &&
            const DeepCollectionEquality()
                .equals(other._privateGroups, _privateGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_channels),
      const DeepCollectionEquality().hash(_directMessages),
      const DeepCollectionEquality().hash(_privateGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelSlotsImplCopyWith<_$ChannelSlotsImpl> get copyWith =>
      __$$ChannelSlotsImplCopyWithImpl<_$ChannelSlotsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelSlotsImplToJson(
      this,
    );
  }
}

abstract class _ChannelSlots implements ChannelSlots {
  const factory _ChannelSlots(
      {@JsonKey(name: 'channel_channel') required final List<Channel> channels,
      @JsonKey(name: 'channel_direct_message')
      required final List<Channel> directMessages,
      @JsonKey(name: 'channel_private_group')
      required final List<Channel> privateGroups}) = _$ChannelSlotsImpl;

  factory _ChannelSlots.fromJson(Map<String, dynamic> json) =
      _$ChannelSlotsImpl.fromJson;

  @override
  @JsonKey(name: 'channel_channel')
  List<Channel> get channels;
  @override
  @JsonKey(name: 'channel_direct_message')
  List<Channel> get directMessages;
  @override
  @JsonKey(name: 'channel_private_group')
  List<Channel> get privateGroups;
  @override
  @JsonKey(ignore: true)
  _$$ChannelSlotsImplCopyWith<_$ChannelSlotsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
