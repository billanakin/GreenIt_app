import 'package:flutter/material.dart';
import 'package:greenit_app/home/home_screen.dart';

import 'package:greenit_app/size_config.dart';
import 'package:greenit_app/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      title: 'GreenIt',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      home: const HomeScreen(),
    );
  }
}
