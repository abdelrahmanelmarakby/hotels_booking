import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../resourses/theme_manager.dart';

class Themes {
  static final light = getApplicationTheme();
  static final dark = getApplicationTheme().copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black87,
    cardColor: Colors.black87,
  );
}

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  bool _loadThemeFromBox() => _box.read(_key) ?? false;
  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  void switchTheme() {
    print("clicked");
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
