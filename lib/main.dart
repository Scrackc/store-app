import 'package:flutter/material.dart';
import 'package:store_app/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        useMaterial3: true
      ),
      title: 'store app',
      initialRoute: LoginScreen.routerName,
      routes: {
        LoginScreen.routerName: (_) => const LoginScreen()
      },
    );
  }
}