// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html';
import 'dart:js_interop';

import 'package:odoochat/odoochat.dart';
import 'package:odoochat_example/bloc/chat_poll/chat_poll_worker.dart';

@JS('self')
external JSObject get _self;
DedicatedWorkerGlobalScope get self => _self as DedicatedWorkerGlobalScope;

Future<void> main() async {
  await ChatPollServiceWorker(
    self: self,
    odooChat: OdooChat(
      serverUrl: 'http://localhost:8069',
      databaseName: 'luisciber',
      debug: true,
    ),
  ).run();
}
