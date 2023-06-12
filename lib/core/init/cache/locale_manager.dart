import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/enums/preferences_keys.dart';

class LocaleManager {
  static final LocaleManager _instance = LocaleManager._init();
  static LocaleManager get instance => _instance;
  SharedPreferences? _preferences;
  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) => _preferences = value);
  }
  static Future prefrencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
  }

  Future<void> clearAll() async {
    await _preferences!.clear();
  }

  Future<void> removeKey(PreferencesKeys key) async {
    await _preferences!.remove(key.toString());
  }

  Future<void> setStringValue(PreferencesKeys key, String? value) async {
    await _preferences!.setString(key.toString(), value!);
  }

  Future<void> setBoolValue(PreferencesKeys key, bool value) async {
    await _preferences!.setBool(key.toString(), value);
  }


  String getStringValue(PreferencesKeys key) => _preferences?.getString(key.toString()) ?? '';
  bool getBoolValue(PreferencesKeys key) => _preferences?.getBool(key.toString()) ?? false;
}
