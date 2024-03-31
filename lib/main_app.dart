import 'package:flutter/material.dart';
import 'package:greenit_app/screens/login/screen.dart' as login;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: login.Screen(),
    );
  }
}
