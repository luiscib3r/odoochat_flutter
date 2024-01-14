import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_fetch_params.freezed.dart';
part 'message_fetch_params.g.dart';

@freezed
class MessageFetchParams with _$MessageFetchParams {
  factory MessageFetchParams({
    required Map<String, dynamic> context,
    required int channelId,
    int limit = 30,
  }) =>
      MessageFetchParams._(
        args: [],
        kwargs: {
          'context': context,
          'limit': limit,
          'domain': [
            [
              'channel_ids',
              'in',
              [channelId],
            ]
          ],
        },
        method: 'message_fetch',
        model: 'mail.message',
      );

  const factory MessageFetchParams._({
    required List<dynamic> args,
    required Map<String, dynamic> kwargs,
    required String method,
    required String model,
  }) = _MessageFetchParams;

  factory MessageFetchParams.fromJson(Map<String, dynamic> json) =>
      _$MessageFetchParamsFromJson(json);
}
