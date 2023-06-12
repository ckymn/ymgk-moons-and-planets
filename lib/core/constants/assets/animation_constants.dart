class AnimationConstants {
  static AnimationConstants? _instance;
  static AnimationConstants get instance {
    _instance ??= _instance = AnimationConstants._init();
    return _instance!;
  }

  AnimationConstants._init();
  String getJson(String value) => 'assets/animations/$value.json';
  String get loading => getJson('loading');

}
