// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_minimized')
  bool get isMinimized => throw _privateConstructorUsedError;
  @JsonKey(name: 'channel_type')
  String get channelType => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_based_subscription')
  bool get groupBasedSubscription => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_uid')
  int get createUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_needaction_counter')
  int get messageNeedactionCounter => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_unread_counter')
  int get messageUnreadCounter => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pinned')
  bool get isPinned => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message_id', fromJson: Channel.parseIntNullable)
  int? get lastMessageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'seen_message_id', fromJson: Channel.parseIntNullable)
  int? get seenMessageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String uuid,
      String state,
      @JsonKey(name: 'is_minimized') bool isMinimized,
      @JsonKey(name: 'channel_type') String channelType,
      @JsonKey(name: 'group_based_subscription') bool groupBasedSubscription,
      @JsonKey(name: 'create_uid') int createUid,
      @JsonKey(name: 'message_needaction_counter') int messageNeedactionCounter,
      @JsonKey(name: 'message_unread_counter') int messageUnreadCounter,
      @JsonKey(name: 'is_pinned') bool isPinned,
      @JsonKey(name: 'last_message_id', fromJson: Channel.parseIntNullable)
      int? lastMessageId,
      @JsonKey(name: 'seen_message_id', fromJson: Channel.parseIntNullable)
      int? seenMessageId});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uuid = null,
    Object? state = null,
    Object? isMinimized = null,
    Object? channelType = null,
    Object? groupBasedSubscription = null,
    Object? createUid = null,
    Object? messageNeedactionCounter = null,
    Object? messageUnreadCounter = null,
    Object? isPinned = null,
    Object? lastMessageId = freezed,
    Object? seenMessageId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      isMinimized: null == isMinimized
          ? _value.isMinimized
          : isMinimized // ignore: cast_nullable_to_non_nullable
              as bool,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as String,
      groupBasedSubscription: null == groupBasedSubscription
          ? _value.groupBasedSubscription
          : groupBasedSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      createUid: null == createUid
          ? _value.createUid
          : createUid // ignore: cast_nullable_to_non_nullable
              as int,
      messageNeedactionCounter: null == messageNeedactionCounter
          ? _value.messageNeedactionCounter
          : messageNeedactionCounter // ignore: cast_nullable_to_non_nullable
              as int,
      messageUnreadCounter: null == messageUnreadCounter
          ? _value.messageUnreadCounter
          : messageUnreadCounter // ignore: cast_nullable_to_non_nullable
              as int,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessageId: freezed == lastMessageId
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      seenMessageId: freezed == seenMessageId
          ? _value.seenMessageId
          : seenMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String uuid,
      String state,
      @JsonKey(name: 'is_minimized') bool isMinimized,
      @JsonKey(name: 'channel_type') String channelType,
      @JsonKey(name: 'group_based_subscription') bool groupBasedSubscription,
      @JsonKey(name: 'create_uid') int createUid,
      @JsonKey(name: 'message_needaction_counter') int messageNeedactionCounter,
      @JsonKey(name: 'message_unread_counter') int messageUnreadCounter,
      @JsonKey(name: 'is_pinned') bool isPinned,
      @JsonKey(name: 'last_message_id', fromJson: Channel.parseIntNullable)
      int? lastMessageId,
      @JsonKey(name: 'seen_message_id', fromJson: Channel.parseIntNullable)
      int? seenMessageId});
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? uuid = null,
    Object? state = null,
    Object? isMinimized = null,
    Object? channelType = null,
    Object? groupBasedSubscription = null,
    Object? createUid = null,
    Object? messageNeedactionCounter = null,
    Object? messageUnreadCounter = null,
    Object? isPinned = null,
    Object? lastMessageId = freezed,
    Object? seenMessageId = freezed,
  }) {
    return _then(_$ChannelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      isMinimized: null == isMinimized
          ? _value.isMinimized
          : isMinimized // ignore: cast_nullable_to_non_nullable
              as bool,
      channelType: null == channelType
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as String,
      groupBasedSubscription: null == groupBasedSubscription
          ? _value.groupBasedSubscription
          : groupBasedSubscription // ignore: cast_nullable_to_non_nullable
              as bool,
      createUid: null == createUid
          ? _value.createUid
          : createUid // ignore: cast_nullable_to_non_nullable
              as int,
      messageNeedactionCounter: null == messageNeedactionCounter
          ? _value.messageNeedactionCounter
          : messageNeedactionCounter // ignore: cast_nullable_to_non_nullable
              as int,
      messageUnreadCounter: null == messageUnreadCounter
          ? _value.messageUnreadCounter
          : messageUnreadCounter // ignore: cast_nullable_to_non_nullable
              as int,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      lastMessageId: freezed == lastMessageId
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
      seenMessageId: freezed == seenMessageId
          ? _value.seenMessageId
          : seenMessageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelImpl implements _Channel {
  const _$ChannelImpl(
      {required this.id,
      required this.name,
      required this.uuid,
      required this.state,
      @JsonKey(name: 'is_minimized') required this.isMinimized,
      @JsonKey(name: 'channel_type') required this.channelType,
      @JsonKey(name: 'group_based_subscription')
      required this.groupBasedSubscription,
      @JsonKey(name: 'create_uid') required this.createUid,
      @JsonKey(name: 'message_needaction_counter')
      required this.messageNeedactionCounter,
      @JsonKey(name: 'message_unread_counter')
      required this.messageUnreadCounter,
      @JsonKey(name: 'is_pinned') required this.isPinned,
      @JsonKey(name: 'last_message_id', fromJson: Channel.parseIntNullable)
      this.lastMessageId,
      @JsonKey(name: 'seen_message_id', fromJson: Channel.parseIntNullable)
      this.seenMessageId});

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String uuid;
  @override
  final String state;
  @override
  @JsonKey(name: 'is_minimized')
  final bool isMinimized;
  @override
  @JsonKey(name: 'channel_type')
  final String channelType;
  @override
  @JsonKey(name: 'group_based_subscription')
  final bool groupBasedSubscription;
  @override
  @JsonKey(name: 'create_uid')
  final int createUid;
  @override
  @JsonKey(name: 'message_needaction_counter')
  final int messageNeedactionCounter;
  @override
  @JsonKey(name: 'message_unread_counter')
  final int messageUnreadCounter;
  @override
  @JsonKey(name: 'is_pinned')
  final bool isPinned;
  @override
  @JsonKey(name: 'last_message_id', fromJson: Channel.parseIntNullable)
  final int? lastMessageId;
  @override
  @JsonKey(name: 'seen_message_id', fromJson: Channel.parseIntNullable)
  final int? seenMessageId;

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, uuid: $uuid, state: $state, isMinimized: $isMinimized, channelType: $channelType, groupBasedSubscription: $groupBasedSubscription, createUid: $createUid, messageNeedactionCounter: $messageNeedactionCounter, messageUnreadCounter: $messageUnreadCounter, isPinned: $isPinned, lastMessageId: $lastMessageId, seenMessageId: $seenMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.isMinimized, isMinimized) ||
                other.isMinimized == isMinimized) &&
            (identical(other.channelType, channelType) ||
                other.channelType == channelType) &&
            (identical(other.groupBasedSubscription, groupBasedSubscription) ||
                other.groupBasedSubscription == groupBasedSubscription) &&
            (identical(other.createUid, createUid) ||
                other.createUid == createUid) &&
            (identical(
                    other.messageNeedactionCounter, messageNeedactionCounter) ||
                other.messageNeedactionCounter == messageNeedactionCounter) &&
            (identical(other.messageUnreadCounter, messageUnreadCounter) ||
                other.messageUnreadCounter == messageUnreadCounter) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.lastMessageId, lastMessageId) ||
                other.lastMessageId == lastMessageId) &&
            (identical(other.seenMessageId, seenMessageId) ||
                other.seenMessageId == seenMessageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      uuid,
      state,
      isMinimized,
      channelType,
      groupBasedSubscription,
      createUid,
      messageNeedactionCounter,
      messageUnreadCounter,
      isPinned,
      lastMessageId,
      seenMessageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelImplToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {required final int id,
      required final String name,
      required final String uuid,
      required final String state,
      @JsonKey(name: 'is_minimized') required final bool isMinimized,
      @JsonKey(name: 'channel_type') required final String channelType,
      @JsonKey(name: 'group_based_subscription')
      required final bool groupBasedSubscription,
      @JsonKey(name: 'create_uid') required final int createUid,
      @JsonKey(name: 'message_needaction_counter')
      required final int messageNeedactionCounter,
      @JsonKey(name: 'message_unread_counter')
      required final int messageUnreadCounter,
      @JsonKey(name: 'is_pinned') required final bool isPinned,
      @JsonKey(name: 'last_message_id', fromJson: Channel.parseIntNullable)
      final int? lastMessageId,
      @JsonKey(name: 'seen_message_id', fromJson: Channel.parseIntNullable)
      final int? seenMessageId}) = _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get uuid;
  @override
  String get state;
  @override
  @JsonKey(name: 'is_minimized')
  bool get isMinimized;
  @override
  @JsonKey(name: 'channel_type')
  String get channelType;
  @override
  @JsonKey(name: 'group_based_subscription')
  bool get groupBasedSubscription;
  @override
  @JsonKey(name: 'create_uid')
  int get createUid;
  @override
  @JsonKey(name: 'message_needaction_counter')
  int get messageNeedactionCounter;
  @override
  @JsonKey(name: 'message_unread_counter')
  int get messageUnreadCounter;
  @override
  @JsonKey(name: 'is_pinned')
  bool get isPinned;
  @override
  @JsonKey(name: 'last_message_id', fromJson: Channel.parseIntNullable)
  int? get lastMessageId;
  @override
  @JsonKey(name: 'seen_message_id', fromJson: Channel.parseIntNullable)
  int? get seenMessageId;
  @override
  @JsonKey(ignore: true)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
