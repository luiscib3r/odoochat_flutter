import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_params.freezed.dart';
part 'poll_params.g.dart';

@freezed
class PollParams with _$PollParams {
  factory PollParams({
    required int last,
  }) =>
      PollParams._(
        last: last,
        channels: ['bundle_changed'],
        options: {
          'bus_inactivity': 0,
        },
      );

  const factory PollParams._({
    required int last,
    required List<String> channels,
    required Map<String, dynamic> options,
  }) = _PollParams;

  factory PollParams.fromJson(Map<String, dynamic> json) =>
      _$PollParamsFromJson(json);
}
