import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoochat/odoochat.dart';

part 'init_messaging_result.freezed.dart';
part 'init_messaging_result.g.dart';

@freezed
class InitMessagingResult with _$InitMessagingResult {
  const factory InitMessagingResult({
    @JsonKey(name: 'needaction_inbox_counter')
    required int needactionInboxCounter,
    @JsonKey(name: 'starred_counter') required int starredCounter,
    @JsonKey(name: 'channel_slots') required ChannelSlots channelSlots,
    @JsonKey(name: 'current_partner') required Partner currentPartner,
    @JsonKey(name: 'current_user_id') required int currentUserId,
  }) = _InitMessagingResult;

  factory InitMessagingResult.fromJson(Map<String, dynamic> json) =>
      _$InitMessagingResultFromJson(json);
}

@freezed
class ChannelSlots with _$ChannelSlots {
  const factory ChannelSlots({
    @JsonKey(name: 'channel_channel') required List<Channel> channels,
    @JsonKey(name: 'channel_direct_message')
    required List<Channel> directMessages,
    @JsonKey(name: 'channel_private_group')
    required List<Channel> privateGroups,
  }) = _ChannelSlots;

  factory ChannelSlots.fromJson(Map<String, dynamic> json) =>
      _$ChannelSlotsFromJson(json);
}
