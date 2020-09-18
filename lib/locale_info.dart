
import 'dart:async';

import 'package:flutter/services.dart';

class LocaleInfo {
  static const MethodChannel _channel =
      const MethodChannel('locale_info');

  static Future<String> get countryCode async {
    final String code = await _channel.invokeMethod('getCountryCode');
    return code;
  }
}
