class NavigationConstants {
  static NavigationConstants? _instance;
  static NavigationConstants get instance {
    _instance ??= NavigationConstants._init();
    return _instance!;
  }

  NavigationConstants._init();
  final String onboarding = '/onboarding';
  final String game = '/game';
}
