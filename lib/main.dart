import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store_app/screens/login_screen.dart';

void main() { 
  runApp(const MyApp());
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.white,
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        useMaterial3: true, 
      ),
      title: 'store app',
      initialRoute: LoginScreen.routerName,
      routes: {
        LoginScreen.routerName: (_) => const LoginScreen()
      },
    );
  }
}