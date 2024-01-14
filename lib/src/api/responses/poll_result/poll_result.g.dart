// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollResultImpl _$$PollResultImplFromJson(Map<String, dynamic> json) =>
    _$PollResultImpl(
      id: json['id'] as int,
      channel: json['channel'] as List<dynamic>,
      message: PollMessage.fromResult(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PollResultImplToJson(_$PollResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel': instance.channel,
      'message': instance.message.toJson(),
    };
