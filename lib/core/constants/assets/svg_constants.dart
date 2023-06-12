class SvgConstants {
  static SvgConstants? _instance;
  static SvgConstants get instance {
    _instance ??= _instance = SvgConstants._init();
    return _instance!;
  }

  SvgConstants._init();
  String toSvg(String value) => 'assets/svg/$value.svg';

  // MARK: - Onboarding View
  String get onboard1Back => toSvg('onboard_back1');
  String get onboard2Back => toSvg('onboard_back2');
  String get onboard3Back => toSvg('onboard_back3');
  String get onboard2 => toSvg('onboard_image2');
  String get onboard3 => toSvg('onboard_image3');

  String get google => toSvg('google');
  String get facebook => toSvg('facebook');
  String get apple => toSvg('apple');
  String get phoneVerify => toSvg('forgot_pass');
}
