// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RpcResponse<T> _$RpcResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    RpcResponse<T>(
      jsonrpc: json['jsonrpc'] as String,
      id: json['id'] as int,
      result: _$nullableGenericFromJson(json['result'], fromJsonT),
      error: json['error'] == null
          ? null
          : RpcError.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RpcResponseToJson<T>(
  RpcResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'jsonrpc': instance.jsonrpc,
      'id': instance.id,
      'result': _$nullableGenericToJson(instance.result, toJsonT),
      'error': instance.error?.toJson(),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$RpcErrorImpl _$$RpcErrorImplFromJson(Map<String, dynamic> json) =>
    _$RpcErrorImpl(
      code: json['code'] as int,
      message: json['message'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$RpcErrorImplToJson(_$RpcErrorImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
