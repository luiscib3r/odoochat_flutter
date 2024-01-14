// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      id: json['id'] as int,
      body: json['body'] as String,
      date: json['date'] as String,
      author: MessageAuthor.fromList(json['author_id'] as List),
      emailFrom: json['email_from'] as String,
      messageType: json['message_type'] as String,
      subtypeId: json['subtype_id'] as List<dynamic>,
      model: json['model'] as String,
      resId: json['res_id'] as int,
      recordName: json['record_name'] as String,
      channelIds:
          (json['channel_ids'] as List<dynamic>).map((e) => e as int).toList(),
      partnerIds:
          (json['partner_ids'] as List<dynamic>).map((e) => e as int).toList(),
      starredPartnerIds: (json['starred_partner_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      moderationStatus:
          Message.parseModerationStatus(json['moderation_status']),
      notifications: (json['notifications'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      atachments: (json['attachment_ids'] as List<dynamic>)
          .map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      trackingValueIds: (json['tracking_value_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      needactionPartnerIds: (json['needaction_partner_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      historyPartnerIds: (json['history_partner_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      isNote: json['is_note'] as bool,
      isDiscussion: json['is_discussion'] as bool,
      subtypeDescription: json['subtype_description'] as bool,
      isNotification: json['is_notification'] as bool,
      moduleIcon: json['module_icon'] as String,
      smsIds: (json['sms_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'date': instance.date,
      'author_id': instance.author.toJson(),
      'email_from': instance.emailFrom,
      'message_type': instance.messageType,
      'subtype_id': instance.subtypeId,
      'model': instance.model,
      'res_id': instance.resId,
      'record_name': instance.recordName,
      'channel_ids': instance.channelIds,
      'partner_ids': instance.partnerIds,
      'starred_partner_ids': instance.starredPartnerIds,
      'moderation_status': instance.moderationStatus,
      'notifications': instance.notifications,
      'attachment_ids': instance.atachments.map((e) => e.toJson()).toList(),
      'tracking_value_ids': instance.trackingValueIds,
      'needaction_partner_ids': instance.needactionPartnerIds,
      'history_partner_ids': instance.historyPartnerIds,
      'is_note': instance.isNote,
      'is_discussion': instance.isDiscussion,
      'subtype_description': instance.subtypeDescription,
      'is_notification': instance.isNotification,
      'module_icon': instance.moduleIcon,
      'sms_ids': instance.smsIds,
    };

_$MessageAuthorImpl _$$MessageAuthorImplFromJson(Map<String, dynamic> json) =>
    _$MessageAuthorImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      company: json['company'] as String?,
    );

Map<String, dynamic> _$$MessageAuthorImplToJson(_$MessageAuthorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'company': instance.company,
    };
