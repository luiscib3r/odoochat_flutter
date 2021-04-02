class UserModel {
  int uid;
  String name;
  Map<String, dynamic> context;

  UserModel({
    required this.uid,
    required this.name,
    required this.context,
  });

  UserModel.fromJson(Map<String, dynamic> map)
      : uid = map['uid'] as int,
        name = map['name'],
        context = map['user_context'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'name': name,
        'user_context': context,
      };
}
