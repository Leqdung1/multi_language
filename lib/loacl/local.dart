import 'dart:ui';

import 'package:flutter_localization/flutter_localization.dart';

final List<MapLocale> Local = [
  MapLocale('en', LocalData.EN),
  MapLocale('de', LocalData.DE),
  MapLocale('vi', LocalData.VI),
];

mixin LocalData {
  static String title = 'title';
  static String body = 'body';

  static Map<String, dynamic> EN = {
    title: 'Localization',
    body: 'Welcome to my app %a',
  };

  static Map<String, dynamic> DE = {
    title: 'Lokalisierung',
    body: 'Willkommen in meiner App %a',
  };

  static Map<String, dynamic> VI = {
    title: 'Chuyển đổi ngôn ngữ',
    body: 'Chào mừng đến với ứng dụng của tôi %a',
  };
}
