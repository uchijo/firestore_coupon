import 'package:android_id/android_id.dart';
import 'package:flutter/foundation.dart';

class AndroidRelatedService {
  static Future<String?> fetchUserId() async {
    const androidIdPlugin = AndroidId();
    final androidId = await androidIdPlugin.getId();
    debugPrint('androidId of this device: $androidId');
    return androidId;
  }
}
