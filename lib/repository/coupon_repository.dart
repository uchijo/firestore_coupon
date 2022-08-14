import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Future<CouponData?> fetchCouponById({
    required ShopData shopData,
    required String couponDocId,
  }) async {
    final document = await FirebaseFirestore.instance
        .doc('coupons/${shopData.refName}/coupons/$couponDocId')
        .get();

    // データが存在しなければnull返して終わり
    if (!document.exists) {
      return null;
    }

    final dataWithoutId = CouponData.fromJson(document.data()!);
    return dataWithoutId.copyWith(documentId: couponDocId);
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

  Timestamp _timestampToday() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    return Timestamp.fromDate(today);
  }

  Future<bool> canDrawToday({
    required ShopData shopData,
    required String userId,
  }) async {
    final collectionRef = await FirebaseFirestore.instance
        .collection('coupons/${shopData.refName}/coupons')
        .where('userId', isEqualTo: userId)
        .orderBy('createdAt')
        .startAt([_timestampToday()]).get();
    return collectionRef.docs.isEmpty;
  }

  Future<void> storeCouponDocId({
    required ShopData shopData,
    required String documentId,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(shopData.refName, documentId);
  }

  Future<String?> loadStockedCoupon({required ShopData shopData}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(shopData.refName);
  }

  Future<void> deleteStoredCoupon({required ShopData shopData}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(shopData.refName);
  }
}
