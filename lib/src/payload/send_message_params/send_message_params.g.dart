// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendMessageParamsImpl _$$SendMessageParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessageParamsImpl(
      context: json['context'] as Map<String, dynamic>,
      postData: SendMessagePostData.fromJson(
          json['post_data'] as Map<String, dynamic>),
      threadId: json['thread_id'] as int,
      threadModel: json['thread_model'] as String,
    );

Map<String, dynamic> _$$SendMessageParamsImplToJson(
        _$SendMessageParamsImpl instance) =>
    <String, dynamic>{
      'context': instance.context,
      'post_data': instance.postData.toJson(),
      'thread_id': instance.threadId,
      'thread_model': instance.threadModel,
    };

_$SendMessagePostDataImpl _$$SendMessagePostDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SendMessagePostDataImpl(
      attachmentIds: (json['attachment_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      attachmentTokens: (json['attachment_tokens'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      body: json['body'] as String,
      messageType: json['message_type'] as String,
      partnerIds:
          (json['partner_ids'] as List<dynamic>).map((e) => e as int).toList(),
      subtypeXmlid: json['subtype_xmlid'] as String,
    );

Map<String, dynamic> _$$SendMessagePostDataImplToJson(
        _$SendMessagePostDataImpl instance) =>
    <String, dynamic>{
      'attachment_ids': instance.attachmentIds,
      'attachment_tokens': instance.attachmentTokens,
      'body': instance.body,
      'message_type': instance.messageType,
      'partner_ids': instance.partnerIds,
      'subtype_xmlid': instance.subtypeXmlid,
    };
