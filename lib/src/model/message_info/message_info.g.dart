// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageInfoTyping _$MessageInfoTypingFromJson(Map<String, dynamic> json) =>
    MessageInfoTyping(
      isTyping: json['is_typing'] as bool,
      partnerId: json['partner_id'] as int,
      partnerName: json['partner_name'] as String,
      channelId: json['channel_id'] as int?,
    );

Map<String, dynamic> _$MessageInfoTypingToJson(MessageInfoTyping instance) =>
    <String, dynamic>{
      'is_typing': instance.isTyping,
      'partner_id': instance.partnerId,
      'partner_name': instance.partnerName,
      'channel_id': instance.channelId,
    };

MessageInfoTransient _$MessageInfoTransientFromJson(
        Map<String, dynamic> json) =>
    MessageInfoTransient(
      body: json['body'] as String,
      channelIds:
          (json['channel_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$MessageInfoTransientToJson(
        MessageInfoTransient instance) =>
    <String, dynamic>{
      'body': instance.body,
      'channel_ids': instance.channelIds,
    };
