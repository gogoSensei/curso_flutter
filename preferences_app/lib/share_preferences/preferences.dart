import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;
  static String _name = '';
  static bool _isDarkMode = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name (String n) {
    _name = n;
    _prefs.setString('name', n);
  }

  static bool get isDarkMode {
    return _prefs.getBool('isDarkMode') ?? _isDarkMode;
  }

  static set isDarkMode (bool t) {
    _isDarkMode = t;
    _prefs.setBool('isDarkMode', t);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender (int g) {
    _gender = g;
    _prefs.setInt('gender', g);
  }
}