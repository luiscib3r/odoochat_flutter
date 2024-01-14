// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as int,
      body: json['body'] as String,
      date: DateTime.parse(json['date'] as String),
      authorId: json['author_id'] as List<dynamic>,
      channelIds:
          (json['channelIds'] as List<dynamic>).map((e) => e as int).toList(),
      attachments: (json['attachment_ids'] as List<dynamic>)
          .map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'date': instance.date.toIso8601String(),
      'author_id': instance.authorId,
      'channelIds': instance.channelIds,
      'attachment_ids': instance.attachments,
    };
