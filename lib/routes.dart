import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum RoutePath {
  root(path: '/'),
  onboarding(path: 'onboarding'),
  splash(path: 'splash'),
  signIn(path: 'signIn'),
  signUp(path: 'signUp'),
  completeProfile(path: 'completeProfile'),
  otpVerification(path: 'otpVerification'),
  forgotPassword(path: 'forgotPassword'),
  resetEmail(path: 'resetEmail'),
  signInSuccess(path: 'signInSuccess'),
  home(path: 'home'),
  homeLoading(path: 'homeLoading'),
  pinFocus(path: 'pinFocus'),
  social(path: 'social'),
  socialLoading(path: 'socialLoading'),
  explore(path: 'explore'),
  exploreLoading(path: 'exploreLoading'),
  notification(path: 'notification'),
  notificationLoading(path: 'notificationLoading'),
  profile(path: 'profile'),
  addPostStepOne(path: 'addPostStepOne'),
  addPostStepTwo(path: 'addPostStepTwo'),
  viewPost(path: 'viewPost'),
  ;

  const RoutePath({required this.path});
  final String path;
}

final goRouterProvider = Provider<GoRouter>((ref) {
  final rootNavKey = GlobalKey<NavigatorState>(debugLabel: 'rootNav');
  final listenable = ref.watch(appRouterListenableProvider);

  return GoRouter(
    navigatorKey: rootNavKey,
    refreshListenable: listenable,
    redirect: (context, state) =>
        appRouterListenableProvider(context, ref, state),
    routes: [],
  );
});


// Provider<GoRouter>((ref) {
//  
//   return GoRouter(routes: routes);
// });