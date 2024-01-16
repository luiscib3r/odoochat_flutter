import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoochat/src/model/attachment/attachment.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required String body,
    required String date,
    @JsonKey(name: 'author_id', fromJson: MessageAuthor.fromList)
    required MessageAuthor author,
    @JsonKey(name: 'email_from') required String emailFrom,
    @JsonKey(name: 'message_type') required String messageType,
    @JsonKey(name: 'subtype_id') required List<dynamic> subtypeId,
    required String model,
    @JsonKey(name: 'res_id') required int resId,
    @JsonKey(name: 'record_name') required String recordName,
    @JsonKey(name: 'partner_ids') required List<int> partnerIds,
    @JsonKey(name: 'starred_partner_ids') required List<int> starredPartnerIds,
    @JsonKey(name: 'moderation_status', fromJson: Message.parseModerationStatus)
    required String? moderationStatus,
    required List<int> notifications,
    @JsonKey(name: 'attachment_ids') required List<Attachment> atachments,
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

  static String? parseModerationStatus(dynamic value) =>
      value is bool ? null : value as String?;
}

@freezed
class MessageAuthor with _$MessageAuthor {
  const factory MessageAuthor({
    required int id,
    required String name,
    String? company,
  }) = _MessageAuthor;

  factory MessageAuthor.fromList(List<dynamic> authorId) {
    final displayName = (authorId[1] as String).split(',');
    return MessageAuthor(
      id: authorId[0] as int,
      name: displayName.length > 1
          ? displayName[1].trim()
          : displayName[0].trim(),
      company: displayName.length > 1 ? displayName[0].trim() : null,
    );
  }

  factory MessageAuthor.fromJson(Map<String, dynamic> json) =>
      _$MessageAuthorFromJson(json);
}
