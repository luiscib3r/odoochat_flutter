import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:odoochat/odoochat.dart';

abstract class ChatPollInterface extends Cubit<List<PollResult>> {
  ChatPollInterface({
    required this.odooChat,
  }) : super([]);

  final OdooChat odooChat;
  Stream<List<PollResult>> get serviceStream;
  late final StreamSubscription<List<PollResult>> _serviceSubscription;

  Future<void> run() async {
    await startService();

    _serviceSubscription = serviceStream.listen(emit);
  }

  Future<void> startService();

  @override
  Future<void> close() async {
    await _serviceSubscription.cancel();
    return super.close();
  }
}

abstract class ChatPollServiceInterface extends Cubit<List<PollResult>> {
  ChatPollServiceInterface({
    required this.odooChat,
  }) : super([]) {
    run();
  }

  final OdooChat odooChat;

  Future<void> run() async {
    while (true) {
      final result = await odooChat.poll();
      emit(result);
      await Future<void>.delayed(const Duration(milliseconds: 300));
    }
  }

  void emitState(List<PollResult> state);

  @override
  void onChange(Change<List<PollResult>> change) {
    super.onChange(change);
    final state = change.nextState;
    emitState(state);
  }
}
