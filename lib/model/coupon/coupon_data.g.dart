// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CouponData _$$_CouponDataFromJson(Map<String, dynamic> json) =>
    _$_CouponData(
      isUsed: json['isUsed'] as bool,
      createdAt: fromTimestampJson(json['createdAt'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      couponName: json['couponName'] as String,
      documentId: json['documentId'] as String? ?? null,
    );

Map<String, dynamic> _$$_CouponDataToJson(_$_CouponData instance) =>
    <String, dynamic>{
      'isUsed': instance.isUsed,
      'createdAt': toTimestampJson(instance.createdAt),
      'userId': instance.userId,
      'couponName': instance.couponName,
      'documentId': instance.documentId,
    };
