import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rpc_response.freezed.dart';
part 'rpc_response.g.dart';

@JsonSerializable(genericArgumentFactories: true, explicitToJson: true)
class RpcResponse<T> extends Equatable {
  const RpcResponse({
    required this.jsonrpc,
    required this.id,
    required this.result,
    this.error,
  });

  factory RpcResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$RpcResponseFromJson(json, fromJsonT);

  final String jsonrpc;
  final int id;
  final T? result;
  final RpcError? error;

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) =>
      _$RpcResponseToJson(
        this,
        toJsonT,
      );

  @override
  List<Object?> get props => [
        jsonrpc,
        id,
        result,
        error,
      ];
}

@freezed
class RpcError with _$RpcError {
  const factory RpcError({
    required int code,
    required String message,
    required Map<String, dynamic> data,
  }) = _RpcError;

  factory RpcError.fromJson(Map<String, dynamic> json) =>
      _$RpcErrorFromJson(json);
}
