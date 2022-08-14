import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/foundation.dart';

class SingleStockCouponRepository {
  // TODO: 現状一個目のキーを返してるだけなのでちゃんとランダムにする
  String getRandomCoupon({required Map<String, int> probability}) {
    return probability.keys.toList()[0];
  }

  Future<void> addCoupon(
      {required CouponData couponData, required String shopRef}) async {
    debugPrint(couponData.toJson().toString());
    await FirebaseFirestore.instance
        .collection('coupons/$shopRef/coupons')
        .add(couponData.toJson());
  }

  // Future<bool> canDrawToday(
  //     {required String userId, required String shopRef}) async {
  //   final couponCollection =
  //       FirebaseFirestore.instance.collection('coupons/$shopRef/coupons');
  // }

  Future<CouponData?> fetchUnusedCoupon({
    required ShopData shopData,
    required String userId,
  }) async {
    final collectionRef = FirebaseFirestore.instance
        .collection('coupons/${shopData.refName}/coupons');
    final result = await collectionRef
        .where('isUsed', isEqualTo: false)
        .where('userId', isEqualTo: userId)
        .get();

    if (result.docs.isEmpty) {
      return null;
    }

    return CouponData.fromJson(result.docs[0].data());
  }
}
