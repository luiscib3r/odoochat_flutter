import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_post_params.freezed.dart';
part 'message_post_params.g.dart';

@freezed
class MessagePostParams with _$MessagePostParams {
  factory MessagePostParams({
    required int channelId,
    required String body,
    required Map<String, dynamic> context,
    List<int> attachmentIds = const [],
  }) =>
      MessagePostParams._(
        args: [channelId],
        kwargs: {
          'attachment_ids': attachmentIds,
          'body': body,
          'context': context,
          'channel_ids': const <int>[],
          'message_type': 'comment',
          'partner_ids': const <int>[],
          'subtype_xmlid': 'mail.mt_comment',
          'subtype_id': 'mail.mt_comment',
        },
        method: 'message_post',
        model: 'mail.channel',
      );

  const factory MessagePostParams._({
    required List<dynamic> args,
    required Map<String, dynamic> kwargs,
    required String method,
    required String model,
  }) = _MessagePostParams;

  factory MessagePostParams.fromJson(Map<String, dynamic> json) =>
      _$MessagePostParamsFromJson(json);
}
