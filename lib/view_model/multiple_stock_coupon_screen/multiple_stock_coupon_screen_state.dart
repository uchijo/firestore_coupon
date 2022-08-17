import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'multiple_stock_coupon_screen_state.freezed.dart';

// run this to generate code
// flutter pub run build_runner build

@freezed
class MultipleStockCouponScreenState with _$MultipleStockCouponScreenState {
  factory MultipleStockCouponScreenState({
    List<CouponData>? stockedCoupons,
    ShopData? shopData,
  }) = _MultipleStockCouponScreenState;
}
