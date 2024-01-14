// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_messaging_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitMessagingResultImpl _$$InitMessagingResultImplFromJson(
        Map<String, dynamic> json) =>
    _$InitMessagingResultImpl(
      needactionInboxCounter: json['needaction_inbox_counter'] as int,
      starredCounter: json['starred_counter'] as int,
      channelSlots:
          ChannelSlots.fromJson(json['channel_slots'] as Map<String, dynamic>),
      currentPartner:
          Partner.fromJson(json['current_partner'] as Map<String, dynamic>),
      currentUserId: json['current_user_id'] as int,
    );

Map<String, dynamic> _$$InitMessagingResultImplToJson(
        _$InitMessagingResultImpl instance) =>
    <String, dynamic>{
      'needaction_inbox_counter': instance.needactionInboxCounter,
      'starred_counter': instance.starredCounter,
      'channel_slots': instance.channelSlots,
      'current_partner': instance.currentPartner,
      'current_user_id': instance.currentUserId,
    };

_$ChannelSlotsImpl _$$ChannelSlotsImplFromJson(Map<String, dynamic> json) =>
    _$ChannelSlotsImpl(
      channels: (json['channel_channel'] as List<dynamic>)
          .map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
      directMessages: (json['channel_direct_message'] as List<dynamic>)
          .map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
      privateGroups: (json['channel_private_group'] as List<dynamic>)
          .map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChannelSlotsImplToJson(_$ChannelSlotsImpl instance) =>
    <String, dynamic>{
      'channel_channel': instance.channels,
      'channel_direct_message': instance.directMessages,
      'channel_private_group': instance.privateGroups,
    };
