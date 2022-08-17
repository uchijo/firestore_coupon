import 'package:firestore_coupon/repository/interface/auth_repository.dart';
import 'package:firestore_coupon/service/android_service.dart';
import 'package:flutter/foundation.dart';

class AndroidAuthRepository extends AuthRepository {
  String? _androidId;

  @override
  Future<String?> fetchUserId() async {
    if (_androidId != null) {
      return _androidId;
    }
    _androidId = await AndroidRelatedService.fetchUserId();
    debugPrint(_androidId);
    return _androidId;
  }
}
