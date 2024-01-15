import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:odoochat/odoochat.dart';
import 'package:odoochat_example/chat.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final odooChat = context.read<OdooChat>();

    return FlutterLogin(
      title: 'OdooChat',
      onLogin: (data) async {
        try {
          await odooChat.login(
            username: data.name,
            password: data.password,
          );
        } catch (e) {
          return e.toString();
        }

        return null;
      },
      onSubmitAnimationCompleted: () => ChatPage.open(context),
      onRecoverPassword: (_) => null,
    );
  }
}
