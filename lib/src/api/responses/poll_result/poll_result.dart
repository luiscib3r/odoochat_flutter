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

sealed class PollMessage<T> {
  const PollMessage(this.data);

  static PollMessage<dynamic>? fromResult(Map<String, dynamic>? json) {
    print(json);

    if (json == null) {
      return null;
    }

    if (json['message_type'] != null) {
      return PollMessageMessage.fromJson(json);
    }

    if (json['channel_type'] != null) {
      return PollMessageChannel.fromJson(json);
    }

    if (json['info'] != null) {
      return PollMessageInfo.fromJson(json);
    }

    throw OdooChatException(
      code: 422,
      message: 'Received invalid poll message',
      data: json,
    );
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
}

class PollMessageMessage extends PollMessage<Message> {
  const PollMessageMessage(super.data);

  factory PollMessageMessage.fromJson(Map<String, dynamic> json) =>
      PollMessageMessage(
        Message.fromJson(json),
      );
}

class PollMessageChannel extends PollMessage<Channel> {
  const PollMessageChannel(super.data);

  factory PollMessageChannel.fromJson(Map<String, dynamic> json) =>
      PollMessageChannel(
        Channel.fromJson(json),
      );
}

class PollMessageInfo extends PollMessage<MessageInfo> {
  const PollMessageInfo(super.data);

  factory PollMessageInfo.fromJson(Map<String, dynamic> json) =>
      PollMessageInfo(
        MessageInfo.fromJson(json),
      );
}
