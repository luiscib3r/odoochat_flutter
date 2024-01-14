part of 'chat_bloc.dart';

@freezed
class OdooChatState with _$OdooChatState {
  const factory OdooChatState({
    required List<Message> messages,
    required List<AppChannel> channels,
    AppChannel? currentChannel,
    User? user,
  }) = _OdooChatState;

  factory OdooChatState.initial() => const OdooChatState(
        messages: [],
        channels: [],
      );
}

class AppChannel extends Equatable {
  const AppChannel({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
