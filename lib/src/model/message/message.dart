import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:odoochat/src/model/model.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required String body,
    required DateTime date,
    @JsonKey(name: 'author_id') required List<dynamic> authorId,
    required List<int> channelIds,
    @JsonKey(name: 'attachment_ids') required List<Attachment> attachments,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
