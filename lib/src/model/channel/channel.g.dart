// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      uuid: json['uuid'] as String,
      state: json['state'] as String,
      isMinimized: json['is_minimized'] as bool,
      channelType: json['channel_type'] as String,
      public: json['public'] as String,
      groupBasedSubscription: json['group_based_subscription'] as bool,
      createUid: json['create_uid'] as int,
      messageNeedactionCounter: json['message_needaction_counter'] as int,
      messageUnreadCounter: json['message_unread_counter'] as int,
      isPinned: json['is_pinned'] as bool,
      lastMessageId: Channel.parseIntNullable(json['last_message_id']),
      seenMessageId: Channel.parseIntNullable(json['seen_message_id']),
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uuid': instance.uuid,
      'state': instance.state,
      'is_minimized': instance.isMinimized,
      'channel_type': instance.channelType,
      'public': instance.public,
      'group_based_subscription': instance.groupBasedSubscription,
      'create_uid': instance.createUid,
      'message_needaction_counter': instance.messageNeedactionCounter,
      'message_unread_counter': instance.messageUnreadCounter,
      'is_pinned': instance.isPinned,
      'last_message_id': instance.lastMessageId,
      'seen_message_id': instance.seenMessageId,
    };
