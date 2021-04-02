// ODOO CHAT API

abstract class OdooAPI {
  // Session Authentication
  static const AUTHENTICATE = '/web/session/authenticate';

  // MESSAGES
  static const INIT_MESSAGING = '/mail/init_messaging';
  static const MESSAGE_FETCH =
      '/web/dataset/call_kw/mail.message/message_fetch';

  static const MESSAGE_POST = '/web/dataset/call_kw/mail.channel/message_post';

  // POLL
  static const POLL = '/longpolling/poll';
}
