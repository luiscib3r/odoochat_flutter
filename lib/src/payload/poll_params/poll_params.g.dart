// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PollParamsImpl _$$PollParamsImplFromJson(Map<String, dynamic> json) =>
    _$PollParamsImpl(
      last: json['last'] as int,
      channels:
          (json['channels'] as List<dynamic>).map((e) => e as String).toList(),
      options: json['options'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$PollParamsImplToJson(_$PollParamsImpl instance) =>
    <String, dynamic>{
      'last': instance.last,
      'channels': instance.channels,
      'options': instance.options,
    };
