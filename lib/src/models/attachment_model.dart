class AttachmentModel {
  int id;
  String checksum;
  String filename;
  String name;
  String mimetype;

  AttachmentModel({
    required this.id,
    required this.checksum,
    required this.filename,
    required this.name,
    required this.mimetype,
  });

  AttachmentModel.fromJson(Map<String, dynamic> map)
      : id = map['id'],
        checksum = map['checksum'] ?? '',
        filename = map['filename'],
        name = map['name'],
        mimetype = map['mimetype'];
}
