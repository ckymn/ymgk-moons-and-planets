// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SplashView(key: args.key),
      );
    },
    OnboardingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OnboardingView(),
      );
    },
    GameRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const GameView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        RouteConfig(
          OnboardingRoute.name,
          path: '/onboarding',
        ),
        RouteConfig(
          GameRoute.name,
          path: '/game',
        ),
      ];
}

/// generated route for
/// [SplashView]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({Key? key})
      : super(
          SplashRoute.name,
          path: '/splash',
          args: SplashRouteArgs(key: key),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [OnboardingView]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute()
      : super(
          OnboardingRoute.name,
          path: '/onboarding',
        );

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [GameView]
class GameRoute extends PageRouteInfo<void> {
  const GameRoute()
      : super(
          GameRoute.name,
          path: '/game',
        );

  static const String name = 'GameRoute';
}
