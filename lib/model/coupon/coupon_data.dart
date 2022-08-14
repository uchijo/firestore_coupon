import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'coupon_data.freezed.dart';
part 'coupon_data.g.dart';

// run this to generate code
// flutter pub run build_runner build

Map<String, dynamic> toTimestampJson(Timestamp timestamp) {
  return {'date': timestamp.toDate().toIso8601String()};
}

Timestamp fromTimestampJson(Map<String, dynamic> json) {
  final date = DateTime.parse(json['date'] as String);
  return Timestamp.fromDate(date);
}

@freezed
class CouponData with _$CouponData {
  static const uuid = Uuid();

  factory CouponData({
    required bool isUsed,
    @JsonKey(fromJson: fromTimestampJson, toJson: toTimestampJson)
        required Timestamp createdAt,
    required String couponId,
    required String userId,
    required String couponName,
  }) = _CouponData;

  factory CouponData.fromJson(Map<String, dynamic> json) =>
      _$CouponDataFromJson(json);

  factory CouponData.createRandomly(
      {required Map<String, int> probability, required String userId}) {
    int sum = 0;
    final probabilityList = <_KeyAndThreshold>[];
    for (final key in probability.keys) {
      sum += probability[key]!;
      probabilityList.add(_KeyAndThreshold(key: key, threshold: sum));
    }

    final randomNum = Random().nextInt(probabilityList.last.threshold);
    String couponName = '';

    for (final value in probabilityList) {
      if (randomNum < value.threshold) {
        couponName = value.key;
        break;
      }
    }

    return CouponData(
      createdAt: Timestamp.now(),
      couponId: uuid.v4(),
      userId: userId,
      couponName: couponName,
      isUsed: false,
    );
  }
}

class _KeyAndThreshold {
  final String key;
  final int threshold;
  _KeyAndThreshold({required this.key, required this.threshold});

  @override
  String toString() => 'key: $key, threshold: $threshold';
}
