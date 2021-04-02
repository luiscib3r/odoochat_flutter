class ChannelModel {
  int id;
  String name;
  String type;

  ChannelModel({
    required this.id,
    required this.name,
    required this.type,
  });

  ChannelModel.fromJson(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        type = map['channel_type'];
}
