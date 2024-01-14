import 'package:freezed_annotation/freezed_annotation.dart';

part 'init_messaging_params.freezed.dart';
part 'init_messaging_params.g.dart';

@freezed
class InitMessagingParams with _$InitMessagingParams {
  const factory InitMessagingParams({
    required Map<String, dynamic> context,
  }) = _InitMessagingParams;

  factory InitMessagingParams.fromJson(Map<String, dynamic> json) =>
      _$InitMessagingParamsFromJson(json);
}
