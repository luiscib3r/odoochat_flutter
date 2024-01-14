import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required String body,
    required String date,
    @JsonKey(name: 'author_id') required List<dynamic> authorId,
    @JsonKey(name: 'email_from') required String emailFrom,
    @JsonKey(name: 'message_type') required String messageType,
    @JsonKey(name: 'subtype_id') required List<dynamic> subtypeId,
    required String model,
    @JsonKey(name: 'res_id') required int resId,
    @JsonKey(name: 'record_name') required String recordName,
    @JsonKey(name: 'channel_ids') required List<int> channelIds,
    @JsonKey(name: 'partner_ids') required List<int> partnerIds,
    @JsonKey(name: 'starred_partner_ids') required List<int> starredPartnerIds,
    @JsonKey(name: 'moderation_status') required bool moderationStatus,
    required List<int> notifications,
    @JsonKey(name: 'attachment_ids') required List<int> attachmentIds,
    @JsonKey(name: 'tracking_value_ids') required List<int> trackingValueIds,
    @JsonKey(name: 'needaction_partner_ids')
    required List<int> needactionPartnerIds,
    @JsonKey(name: 'history_partner_ids') required List<int> historyPartnerIds,
    @JsonKey(name: 'is_note') required bool isNote,
    @JsonKey(name: 'is_discussion') required bool isDiscussion,
    @JsonKey(name: 'subtype_description') required bool subtypeDescription,
    @JsonKey(name: 'is_notification') required bool isNotification,
    @JsonKey(name: 'module_icon') required String moduleIcon,
    @JsonKey(name: 'sms_ids') required List<int> smsIds,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
