import 'package:flutter/material.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/screens/login/screen.dart' as login;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var widget = const MaterialApp(
      home: login.Screen(),
    );

    Current().callAfterAppUse();

    return widget;
  }
}
