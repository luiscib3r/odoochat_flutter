// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RpcPayload<T> _$RpcPayloadFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    RpcPayload<T>(
      id: json['id'] as int,
      jsonrpc: json['jsonrpc'] as String,
      method: json['method'] as String,
      params: fromJsonT(json['params']),
    );

Map<String, dynamic> _$RpcPayloadToJson<T>(
  RpcPayload<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': toJsonT(instance.params),
    };
