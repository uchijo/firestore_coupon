// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponData _$$_CouponDataFromJson(Map<String, dynamic> json) =>
    _$_CouponData(
      isUsed: json['isUsed'] as bool? ?? true,
      createdAt: fromTimestampJson(json['createdAt'] as Map<String, dynamic>),
      couponId: json['couponId'] as String,
      userId: json['userId'] as String,
      couponName: json['couponName'] as String,
    );

Map<String, dynamic> _$$_CouponDataToJson(_$_CouponData instance) =>
    <String, dynamic>{
      'isUsed': instance.isUsed,
      'createdAt': toTimestampJson(instance.createdAt),
      'couponId': instance.couponId,
      'userId': instance.userId,
      'couponName': instance.couponName,
    };
