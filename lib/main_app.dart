import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:greenit_app/screens/sign_in/sign_in_screen.dart';

import 'package:greenit_app/size_config.dart';
import 'package:greenit_app/theme.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/screens/splash.dart';
import 'package:greenit_app/screens/main_navigation.dart';
import 'package:greenit_app/screens/on_boarding/onboarding_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
        nextScreen: _determineNextScreen(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }

  Widget _determineNextScreen() {
    if (Current.firstTimeUse) {
      return const OnBoardingScreen();
    } else if (Current.authenticated) {
      return const MainNavigation();
    } else {
      return const SignInScreen();
    }
  }
}
