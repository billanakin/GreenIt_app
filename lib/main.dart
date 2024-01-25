import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:greenit_app/screens/main_navigation.dart';
import 'package:greenit_app/screens/on_boarding/onboarding_screen.dart';
import 'package:greenit_app/screens/splash.dart';
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
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: const Splash(),
        splashIconSize: 250,
        centered: true,
        nextScreen: const MainNavigation(), // For Debug Purposes
        splashTransition: SplashTransition.fadeTransition,
      ),
      // home: const OnBoardingScreen(), // For Debug Purposes
    );
  }
}
