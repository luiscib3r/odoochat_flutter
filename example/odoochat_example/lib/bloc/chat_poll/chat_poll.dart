// ignore_for_file: always_use_package_imports

import 'chat_poll_isolate.dart' if (dart.library.html) 'chat_poll_worker.dart'
    as chat_poll;

typedef ChatPoll = chat_poll.ChatPoll;
