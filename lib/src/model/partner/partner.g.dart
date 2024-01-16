// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartnerImpl _$$PartnerImplFromJson(Map<String, dynamic> json) =>
    _$PartnerImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      active: json['active'] as bool,
      imStatus: json['im_status'] as String,
      isInternalUser: json['is_internal_user'] as bool? ?? false,
      userId: json['user_id'] as int?,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$$PartnerImplToJson(_$PartnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'active': instance.active,
      'im_status': instance.imStatus,
      'is_internal_user': instance.isInternalUser,
      'user_id': instance.userId,
      'display_name': instance.displayName,
    };
