import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_info.g.dart';

enum InfoType {
  typingStatus('typing_status'),
  transientMessage('transient_message');

  const InfoType(this.value);

  factory InfoType.fromJson(String value) {
    switch (value) {
      case 'typing_status':
        return InfoType.typingStatus;
      case 'transient_message':
        return InfoType.transientMessage;
      default:
        throw Exception('Unknown InfoType: $value');
    }
  }

  String toJson() => value;

  final String value;
}

sealed class MessageInfo extends Equatable {
  const MessageInfo();

  static MessageInfo fromJson(Map<String, dynamic> json) {
    final type = InfoType.fromJson(json['info'] as String);
    return switch (type) {
      InfoType.typingStatus => MessageInfoTyping.fromJson(json),
      InfoType.transientMessage => MessageInfoTransient.fromJson(json),
    };
  }

  Map<String, dynamic> toJson() => switch (this) {
        MessageInfoTyping() => (this as MessageInfoTyping).toJson(),
        MessageInfoTransient() => (this as MessageInfoTransient).toJson(),
      };

  @override
  String toString() => switch (this) {
        MessageInfoTyping() => (this as MessageInfoTyping).toString(),
        MessageInfoTransient() => (this as MessageInfoTransient).toString(),
      };
}

@JsonSerializable()
class MessageInfoTyping extends MessageInfo {
  const MessageInfoTyping({
    required this.isTyping,
    required this.partnerId,
    required this.partnerName,
  });

  factory MessageInfoTyping.fromJson(Map<String, dynamic> json) =>
      _$MessageInfoTypingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MessageInfoTypingToJson(this);

  @JsonKey(name: 'is_typing')
  final bool isTyping;
  @JsonKey(name: 'partner_id')
  final int partnerId;
  @JsonKey(name: 'partner_name')
  final String partnerName;

  @override
  List<Object?> get props => [isTyping, partnerId, partnerName];

  @override
  String toString() =>
      // ignore: lines_longer_than_80_chars
      'MessageInfoTyping(isTyping: $isTyping, partnerId: $partnerId, parnerName: $partnerName)';
}

@JsonSerializable()
class MessageInfoTransient extends MessageInfo {
  const MessageInfoTransient({
    required this.body,
    required this.channelIds,
  });

  factory MessageInfoTransient.fromJson(Map<String, dynamic> json) =>
      _$MessageInfoTransientFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MessageInfoTransientToJson(this);

  final String body;
  @JsonKey(name: 'channel_ids')
  final List<int> channelIds;

  @override
  List<Object?> get props => [body, channelIds];

  @override
  String toString() =>
      'MessageInfoTransient(body: $body, channelIds: $channelIds)';
}
