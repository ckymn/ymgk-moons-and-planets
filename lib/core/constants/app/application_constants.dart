class ApplicationConstants {
  static ApplicationConstants? _instance;
  static ApplicationConstants get instance {
    _instance ??= _instance = ApplicationConstants._init();
    return _instance!;
  }

  // MARK: - REGEX
  final EMAIL_REGEX = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  final USERNAME_REGEX = r"^([A-Za-z0-9_](?:(?:[A-Za-z0-9_]|(?:\.(?!\.))){0,28}(?:[A-Za-z0-9_]))?)$";
  bool isEmail(String email) => RegExp(EMAIL_REGEX).hasMatch(email);
  bool isUsername(String username) => RegExp(USERNAME_REGEX).hasMatch(username);

  ApplicationConstants._init();
}
