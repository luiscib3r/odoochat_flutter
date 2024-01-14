import 'package:dio/dio.dart';
import 'package:odoochat/odoochat.dart';
import 'package:retrofit/retrofit.dart';

export 'responses/responses.dart';

part 'odoochat_api.g.dart';

@RestApi()
abstract class OdooChatApi {
  factory OdooChatApi(
    Dio dio, {
    required String baseUrl,
  }) = _OdooChatApi;

  @POST('/web/session/authenticate')
  Future<RpcResponse<LoginResult>> login(
    @Body() RpcPayload<LoginParams> payload,
  );

  @POST('/mail/init_messaging')
  Future<RpcResponse<InitMessagingResult>> initMessaging(
    @Body() RpcPayload<InitMessagingParams> payload,
  );

  @POST('/web/dataset/call_kw/mail.message/message_fetch')
  Future<RpcResponse<List<Message>>> messageFetch(
    @Body() RpcPayload<MessageFetchParams> payload,
  );

  @POST('/web/dataset/call_kw/mail.channel/message_post')
  Future<String> messagePost(
    @Body() RpcPayload<MessagePostParams> payload,
  );

  @POST('/longpolling/poll')
  Future<String> poll(
    @Body() RpcPayload<PollParams> payload,
  );
}
