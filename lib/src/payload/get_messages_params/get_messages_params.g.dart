// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_messages_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMessagesParamsImpl _$$GetMessagesParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMessagesParamsImpl(
      channelId: json['channel_id'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$$GetMessagesParamsImplToJson(
        _$GetMessagesParamsImpl instance) =>
    <String, dynamic>{
      'channel_id': instance.channelId,
      'limit': instance.limit,
    };
