import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@freezed
class Partner with _$Partner {
  const factory Partner({
    required int id,
    @JsonKey(name: 'display_name') required String displayName,
    required String name,
    required String email,
    required bool active,
    @JsonKey(name: 'im_status') required String imStatus,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'is_internal_user') required bool isInternalUser,
  }) = _Partner;

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);
}
