// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttachmentImpl _$$AttachmentImplFromJson(Map<String, dynamic> json) =>
    _$AttachmentImpl(
      id: json['id'] as int,
      checksum: json['checksum'] as String,
      filename: json['filename'] as String,
      name: json['name'] as String,
      mimetype: json['mimetype'] as String,
    );

Map<String, dynamic> _$$AttachmentImplToJson(_$AttachmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'checksum': instance.checksum,
      'filename': instance.filename,
      'name': instance.name,
      'mimetype': instance.mimetype,
    };
