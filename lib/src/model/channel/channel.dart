import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  const factory Channel({
    required int id,
    required String name,
    required String uuid,
    required String state,
    @JsonKey(name: 'is_minimized') required bool isMinimized,
    @JsonKey(name: 'channel_type') required String channelType,
    required String public,
    @JsonKey(name: 'mass_mailing') required bool massMailing,
    required bool moderation,
    @JsonKey(name: 'is_moderator') required bool isModerator,
    @JsonKey(name: 'group_based_subscription')
    required bool groupBasedSubscription,
    @JsonKey(name: 'create_uid') required int createUid,
    @JsonKey(name: 'last_message_id') required int lastMessageId,
    @JsonKey(name: 'message_needaction_counter')
    required int messageNeedactionCounter,
    @JsonKey(name: 'message_unread_counter') required int messageUnreadCounter,
    @JsonKey(name: 'seen_message_id') required int seenMessageId,
    @JsonKey(name: 'custom_channel_name') required bool customChannelName,
    @JsonKey(name: 'is_pinned') required bool isPinned,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
