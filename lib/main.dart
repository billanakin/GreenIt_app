import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greenit_version1/screens/main_navigation.dart';
import 'package:greenit_version1/screens/onboarding/onboarding_screen.dart';
import 'package:greenit_version1/size_config.dart';
import 'package:greenit_version1/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (func) {
      runApp(const MyApp());
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      title: 'GreenIt Version 1',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      home: const MainNavigation(), // For Debug Purposes
    );
  }
}
