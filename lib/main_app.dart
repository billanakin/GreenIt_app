import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:greenit_app/routes.dart';
import 'package:greenit_app/size_config.dart';
import 'package:greenit_app/theme.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);

    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'GreenIt',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      routerConfig: goRouter,
      // home: AnimatedSplashScreen(
      //   duration: 2000,
      //   splash: const Splash(),
      //   splashIconSize: 250,
      //   centered: true,
      //   nextScreen: _determineNextScreen(),
      //   splashTransition: SplashTransition.fadeTransition,
      // ),
    );
  }

//   Widget _determineNextScreen() {
//     if (Current.firstTimeUse) {
//       return const OnBoardingScreen();
//     } else if (Current.authenticated) {
//       return const MainNavigation();
//     } else {
//       return const SignInScreen();
//     }
//   }
// }
}
