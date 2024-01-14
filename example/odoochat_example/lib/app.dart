import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoochat/odoochat.dart';
import 'package:odoochat_example/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  static const odooColor = Color(0xFFA34689);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<OdooChat>(
      create: (context) => OdooChat(
        serverUrl: 'http://localhost:8069',
        databaseName: 'luisciber',
        debug: true,
      ),
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: odooColor,
          colorScheme: ColorScheme.fromSeed(
            seedColor: odooColor,
            primary: odooColor,
          ),
        ),
        title: 'Odoo Chat',
        home: const LoginPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
