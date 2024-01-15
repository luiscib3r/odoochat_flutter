// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:convert';
import 'dart:html';

import 'package:odoochat/odoochat.dart';
import 'package:odoochat_example/bloc/chat_poll/chat_poll_interface.dart';

typedef ChatPoll = ChatPollWorker;
typedef ChatPollService = ChatPollServiceWorker;

class ChatPollWorker extends ChatPollInterface {
  ChatPollWorker({required super.odooChat});

  late final Worker _worker;

  @override
  Stream<List<PollResult>> get serviceStream => _worker.onMessage.map((event) {
        final data = json.decode(event as String);
        return (data as List)
            .map((e) => PollResult.fromJson(e as Map<String, dynamic>))
            .toList();
      });

  @override
  Future<void> startService() async {
    _worker = Worker('chat_poll_worker.dart.js');
  }
}

class ChatPollServiceWorker extends ChatPollServiceInterface {
  ChatPollServiceWorker({
    required this.self,
    required super.odooChat,
  });

  final DedicatedWorkerGlobalScope self;

  @override
  void emitState(List<PollResult> state) => self.postMessage(
        json.encode(state.map((e) => e.toJson()).toList()),
      );
}
