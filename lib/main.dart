import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greenit_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:greenit_app/screens/main_navigation.dart';
import 'package:greenit_app/screens/on_boarding/onboarding_screen.dart';
import 'package:greenit_app/size_config.dart';
import 'package:greenit_app/theme.dart';

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
      title: 'GreenIt',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      home: const MainNavigation(), // For Debug Purposes
    );
  }
}
