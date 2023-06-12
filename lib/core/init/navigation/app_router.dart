import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../features/game/view/game_view.dart';
import '../../../features/onboarding/view/onboarding_view.dart';
import '../../../features/splash/view/splash_view.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true, path: '/splash'),
    AutoRoute(page: OnboardingView, path: '/onboarding'),
    AutoRoute(page: GameView, path: '/game'),

  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}

