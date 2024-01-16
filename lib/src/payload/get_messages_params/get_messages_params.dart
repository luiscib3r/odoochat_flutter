import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_messages_params.freezed.dart';
part 'get_messages_params.g.dart';

@freezed
class GetMessagesParams with _$GetMessagesParams {
  const factory GetMessagesParams({
    @JsonKey(name: 'channel_id') required int channelId,
    required int limit,
  }) = _GetMessagesParams;

  factory GetMessagesParams.fromJson(Map<String, dynamic> json) =>
      _$GetMessagesParamsFromJson(json);
}
