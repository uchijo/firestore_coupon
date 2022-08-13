import 'package:firestore_coupon/model/shop/coupon_type.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_data.freezed.dart';
part 'shop_data.g.dart';

// run this to generate code
// flutter pub run build_runner build

@freezed
class ShopData with _$ShopData {
  factory ShopData({
    @Default(false) bool isAvailable,
    required CouponType couponType,
    required String refName,
    required String shopName,
    required Map<String, int> probability,
  }) = _ShopData;

  factory ShopData.fromJson(Map<String, dynamic> json) =>
      _$ShopDataFromJson(json);
}
