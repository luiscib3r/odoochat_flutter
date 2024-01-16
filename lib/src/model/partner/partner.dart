import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@freezed
class Partner with _$Partner {
  const factory Partner({
    required int id,
    required String name,
    required String email,
    required bool active,
    @JsonKey(name: 'im_status') required String imStatus,
    @JsonKey(name: 'is_internal_user', defaultValue: false)
    required bool isInternalUser,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'display_name') String? displayName,
  }) = _Partner;

  factory Partner.fromJson(Map<String, dynamic> json) =>
      _$PartnerFromJson(json);
}
