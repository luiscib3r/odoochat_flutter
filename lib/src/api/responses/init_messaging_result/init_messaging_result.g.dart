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
      currentPartner:
          Partner.fromJson(json['current_partner'] as Map<String, dynamic>),
      currentUserId: json['current_user_id'] as int,
      channelSlots: json['channel_slots'] == null
          ? null
          : ChannelSlots.fromJson(
              json['channel_slots'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitMessagingResultImplToJson(
        _$InitMessagingResultImpl instance) =>
    <String, dynamic>{
      'needaction_inbox_counter': instance.needactionInboxCounter,
      'starred_counter': instance.starredCounter,
      'current_partner': instance.currentPartner.toJson(),
      'current_user_id': instance.currentUserId,
      'channel_slots': instance.channelSlots?.toJson(),
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
      'channel_channel': instance.channels.map((e) => e.toJson()).toList(),
      'channel_direct_message':
          instance.directMessages.map((e) => e.toJson()).toList(),
      'channel_private_group':
          instance.privateGroups.map((e) => e.toJson()).toList(),
    };
