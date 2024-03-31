import 'package:flutter/material.dart';
import 'package:greenit_app/screens/home/screen.dart' as home;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: home.Screen(),
    );
  }
}
