import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/foundation.dart';

class CouponRepository {
  Future<CouponData> addCoupon(
      {required CouponData couponData, required String shopRef}) async {
    debugPrint(couponData.toJson().toString());
    final docRef = await FirebaseFirestore.instance
        .collection('coupons/$shopRef/coupons')
        .add(couponData.toJson());
    return couponData.copyWith(documentId: docRef.id);
  }

  Future<void> markAsUsed({
    required ShopData shopData,
    required String documentId,
  }) async {
    final docRef = FirebaseFirestore.instance
        .doc('coupons/${shopData.refName}/coupons/$documentId');
    docRef.update({'isUsed': true});
  }

  Future<List<CouponData>?> fetchUnusedCoupons({
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

    return result.docs.map((doc) {
      final rawCoupon = CouponData.fromJson(doc.data());
      return rawCoupon.copyWith(documentId: doc.id);
    }).toList();
  }
}
