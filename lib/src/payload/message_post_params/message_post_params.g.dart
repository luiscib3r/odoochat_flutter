// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_post_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessagePostParamsImpl _$$MessagePostParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$MessagePostParamsImpl(
      args: json['args'] as List<dynamic>,
      kwargs: json['kwargs'] as Map<String, dynamic>,
      method: json['method'] as String,
      model: json['model'] as String,
    );

Map<String, dynamic> _$$MessagePostParamsImplToJson(
        _$MessagePostParamsImpl instance) =>
    <String, dynamic>{
      'args': instance.args,
      'kwargs': instance.kwargs,
      'method': instance.method,
      'model': instance.model,
    };
