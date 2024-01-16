import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoochat/odoochat.dart';

part 'poll_result.freezed.dart';
part 'poll_result.g.dart';

@freezed
class PollResult with _$PollResult {
  const factory PollResult({
    required int id,
    List<dynamic>? channel,
    @JsonKey(fromJson: PollMessage.fromResult) PollMessage<dynamic>? message,
  }) = _PollResult;

  factory PollResult.fromJson(Map<String, dynamic> json) =>
      _$PollResultFromJson(json);
}

extension PollResultExtension on PollResult {
  int? get channelId =>
      (channel?.last as int?) ??
      message?.payload?['channel_id'] as int? ??
      message?.payload?['id'] as int?;
}

sealed class PollMessage<T> {
  const PollMessage({
    required this.data,
    this.payload,
  });

  static PollMessage<dynamic>? fromResult(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    // Odoo 15
    if (json['type'] == 'mail.channel.partner/typing_status') {
      return PollMessageInfo(
        data: MessageInfoTyping.fromJson(
          json['payload'] as Map<String, dynamic>,
        ),
        payload: json['payload'] as Map<String, dynamic>,
      );
    }

    if (json['type'] == 'mail.channel/new_message') {
      final payload = json['payload'] as Map<String, dynamic>;
      return PollMessageMessage(
        data: Message.fromJson(payload['message'] as Map<String, dynamic>),
        payload: json['payload'] as Map<String, dynamic>,
      );
    }

    // Odoo 14
    if (json['message_type'] != null) {
      return PollMessageMessage.fromJson(json);
    }

    if (json['channel_type'] != null) {
      return PollMessageChannel.fromJson(json);
    }

    if (json['info'] != null) {
      return PollMessageInfo.fromJson(json);
    }

    return null;
  }

  Map<String, dynamic> toJson() => switch (T) {
        Message => (data as Message).toJson(),
        Channel => (data as Channel).toJson(),
        MessageInfo => (data as MessageInfo).toJson(),
        Type() => throw OdooChatException(
            code: 422,
            message: '$runtimeType reported unknown type $T',
          ),
      };

  @override
  String toString() => switch (T) {
        Message => (data as Message).toString(),
        Channel => (data as Channel).toString(),
        MessageInfo => (data as MessageInfo).toString(),
        Type() => throw OdooChatException(
            code: 422,
            message: '$runtimeType reported unknown type $T',
          ),
      };

  final T data;
  final Map<String, dynamic>? payload;
}

class PollMessageMessage extends PollMessage<Message> {
  const PollMessageMessage({
    required super.data,
    super.payload,
  });

  factory PollMessageMessage.fromJson(Map<String, dynamic> json) =>
      PollMessageMessage(
        data: Message.fromJson(json),
        payload: json,
      );
}

class PollMessageChannel extends PollMessage<Channel> {
  const PollMessageChannel({
    required super.data,
    super.payload,
  });

  factory PollMessageChannel.fromJson(Map<String, dynamic> json) =>
      PollMessageChannel(
        data: Channel.fromJson(json),
        payload: json,
      );
}

class PollMessageInfo extends PollMessage<MessageInfo> {
  const PollMessageInfo({
    required super.data,
    super.payload,
  });

  factory PollMessageInfo.fromJson(Map<String, dynamic> json) =>
      PollMessageInfo(
        data: MessageInfo.fromJson(json),
        payload: json,
      );
}
