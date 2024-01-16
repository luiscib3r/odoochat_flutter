import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_message_params.freezed.dart';
part 'send_message_params.g.dart';

@freezed
class SendMessageParams with _$SendMessageParams {
  factory SendMessageParams({
    required int channelId,
    required String body,
    required Map<String, dynamic> context,
    List<int> attachmentIds = const [],
  }) =>
      SendMessageParams._(
        context: context,
        postData: SendMessagePostData(
          attachmentIds: attachmentIds,
          attachmentTokens: [],
          body: body,
          messageType: 'comment',
          partnerIds: [],
          subtypeXmlid: 'mail.mt_comment',
        ),
        threadId: channelId,
        threadModel: 'mail.channel',
      );

  const factory SendMessageParams._({
    required Map<String, dynamic> context,
    @JsonKey(name: 'post_data') required SendMessagePostData postData,
    @JsonKey(name: 'thread_id') required int threadId,
    @JsonKey(name: 'thread_model') required String threadModel,
  }) = _SendMessageParams;

  factory SendMessageParams.fromJson(Map<String, dynamic> json) =>
      _$SendMessageParamsFromJson(json);
}

@freezed
class SendMessagePostData with _$SendMessagePostData {
  const factory SendMessagePostData({
    @JsonKey(name: 'attachment_ids') required List<int> attachmentIds,
    @JsonKey(name: 'attachment_tokens') required List<int> attachmentTokens,
    required String body,
    @JsonKey(name: 'message_type') required String messageType,
    @JsonKey(name: 'partner_ids') required List<int> partnerIds,
    @JsonKey(name: 'subtype_xmlid') required String subtypeXmlid,
  }) = _SendMessagePostData;

  factory SendMessagePostData.fromJson(Map<String, dynamic> json) =>
      _$SendMessagePostDataFromJson(json);
}
