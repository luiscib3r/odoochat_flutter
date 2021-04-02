import 'package:odoochat/src/models/attachment_model.dart';
import 'package:odoochat/src/models/user_model.dart';

class MessageModel {
  int id;
  String body;
  DateTime date;
  UserModel author;
  int channelId;
  List<AttachmentModel> attachments;

  MessageModel({
    required this.id,
    required this.body,
    required this.date,
    required this.author,
    required this.channelId,
    required this.attachments,
  });

  MessageModel.fromJson(Map<String, dynamic> map)
      : id = map['id'],
        body = map['body'] ?? '',
        date = DateTime.parse(map['date']),
        author = UserModel(
          uid: map['author_id'][0],
          name: map['author_id'][1],
          context: {},
        ),
        channelId = (map['channel_ids'] as List).first,
        attachments = (map['attachment_ids'] as List<dynamic>)
            .map((e) => AttachmentModel.fromJson(e))
            .toList();
}
