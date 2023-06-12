class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= _instance = ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();
  String get logo => toPng('logo');
  String get facebook => toPng('facebook');
  String get google => toPng('google');

  // Onboarding
  String get onboard1 => toPng('mathematics');
  String get onboard2 => toPng('success');
  String get onboard3 => toPng('think');

  String get tree => toPng('tree');
  String get img1 => toPng('1');
  String get img2 => toPng('2');
  String get img3 => toPng('3');
  String get img4 => toPng('4');
  String get img5 => toPng('5');
  String get img6 => toPng('6');
  String get img7 => toPng('7');
  String get img8 => toPng('8');
  String get img9 => toPng('9');
  String get img10 => toPng('10');
  String get img11 => toPng('11');
  String get img12 => toPng('12');
  String get img13 => toPng('13');
  String get img14 => toPng('14');
  String get back => toJPEG('back');

  String toPng(value) => 'assets/images/$value.png';
  String toJPEG(value) => 'assets/images/$value.jpeg';
}
