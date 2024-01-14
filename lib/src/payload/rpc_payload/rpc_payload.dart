import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rpc_payload.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class RpcPayload<T> extends Equatable {
  const RpcPayload({
    required this.id,
    required this.jsonrpc,
    required this.method,
    required this.params,
  });
  
  factory RpcPayload.from({
    required T params,
  }) =>
      RpcPayload(
        id: Random().nextInt(999999999),
        jsonrpc: '2.0',
        method: 'call',
        params: params,
      );

  factory RpcPayload.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$RpcPayloadFromJson(json, fromJsonT);

  final int id;
  final String jsonrpc;
  final String method;
  final T params;

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) =>
      _$RpcPayloadToJson(
        this,
        toJsonT,
      );

  @override
  List<Object?> get props => [
        id,
        jsonrpc,
        method,
        params,
      ];
}
