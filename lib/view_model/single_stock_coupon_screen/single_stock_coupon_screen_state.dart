import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_stock_coupon_screen_state.freezed.dart';

// run this to generate code
// flutter pub run build_runner build

@freezed
class SingleStockCouponScreenState with _$SingleStockCouponScreenState {
  factory SingleStockCouponScreenState({
    CouponData? stockedCoupon,
    CouponData? couponCandidate,
    ShopData? shopData,
  }) = _SingleStockCouponScreenState;
}
