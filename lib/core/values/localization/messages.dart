
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'langs/ar.dart';
import 'langs/en.dart';

class Messages extends Translations {
  static const fallbackLocale =  Locale('en');
  static const supportedLocales =  [
    Locale('en'),
    Locale('ar'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
        "en": en,
        "ar": ar,
      };
}

