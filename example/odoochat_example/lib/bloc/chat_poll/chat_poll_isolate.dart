import 'dart:async';
import 'dart:isolate';

import 'package:odoochat/odoochat.dart';
import 'package:odoochat_example/bloc/chat_poll/chat_poll_interface.dart';

typedef ChatPoll = ChatPollIsolate;
typedef ChatPollService = ChatPollServiceIsolate;

class ChatPollIsolate extends ChatPollInterface {
  ChatPollIsolate({
    required super.odooChat,
  });

  late final Isolate _isolate;

  @override
  Stream<List<PollResult>> get serviceStream => _controller.stream;

  final StreamController<List<PollResult>> _controller =
      StreamController<List<PollResult>>.broadcast();

  late final StreamSubscription<dynamic> _isolateSubscription;

  @override
  Future<void> startService() async {
    final receivePort = ReceivePort();

    _isolate = await Isolate.spawn(_start, [receivePort.sendPort]);

    _isolateSubscription = receivePort.listen((message) {
      _controller.add(message as List<PollResult>);
    });
  }

  Future<void> _start(List<dynamic> params) async {
    await ChatPollServiceIsolate(
      sendPort: params[0] as SendPort,
      odooChat: odooChat,
    ).run();
  }

  @override
  Future<void> close() async {
    await _isolateSubscription.cancel();
    _isolate.kill();
    return super.close();
  }
}

class ChatPollServiceIsolate extends ChatPollServiceInterface {
  ChatPollServiceIsolate({
    required SendPort sendPort,
    required super.odooChat,
  }) : _sendPort = sendPort;

  final SendPort _sendPort;

  @override
  void emitState(List<PollResult> state) => _sendPort.send(state);
}
