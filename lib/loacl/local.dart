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
  static String infoTitle = 'infoTitle'; // Add key for the title in the info section
  static String infoDetails1 = 'infoDetails1'; // Add key for the first info details
  static String infoDetails2 = 'infoDetails2'; // Add key for the second info details
  static String infoDetails3 = 'infoDetails3'; // Add key for the third info details

  static Map<String, dynamic> EN = {
    title: 'Localization',
    body: 'Welcome to my app %a',
    infoTitle: 'Informations',
    infoDetails1: 'Slope failure near Khe Sanh, ward 10, DaLat, after a heavy rain',
    infoDetails2: 'Slope failure at Pham Hong Thai str, ward 10, Da Lat',
    infoDetails3: 'Slope failure behind the Hoang Long hotel, Nhat Huy hotel, Thao Quyen hotel, Hoang Lan hotel at Khe Sanh str, ward 10, DaLat, in a sunny day',
  };

  static Map<String, dynamic> DE = {
    title: 'Lokalisierung',
    body: 'Willkommen in meiner App %a',
    infoTitle: 'Informationen',
    infoDetails1: 'Hangrutsch in der Nähe von Khe Sanh, Bezirk 10, DaLat, nach starkem Regen',
    infoDetails2: 'Hangrutsch in der Pham Hong Thai Straße, Bezirk 10, Da Lat',
    infoDetails3: 'Hangrutsch hinter dem Hoang Long Hotel, Nhat Huy Hotel, Thao Quyen Hotel, Hoang Lan Hotel in der Khe Sanh Straße, Bezirk 10, DaLat, an einem sonnigen Tag',
  };

  static Map<String, dynamic> VI = {
    title: 'Chuyển đổi ngôn ngữ',
    body: 'Chào mừng đến với ứng dụng của tôi %a',
    infoTitle: 'Thông tin',
    infoDetails1: 'Sạt lở đất gần Khe Sanh, phường 10, Đà Lạt, sau một trận mưa lớn',
    infoDetails2: 'Sạt lở đất tại đường Phạm Hồng Thái, phường 10, Đà Lạt',
    infoDetails3: 'Sạt lở đất sau khách sạn Hoàng Long, khách sạn Nhật Huy, khách sạn Thảo Quyên, khách sạn Hoàng Lan tại đường Khe Sanh, phường 10, Đà Lạt, vào một ngày nắng',
  };
}

