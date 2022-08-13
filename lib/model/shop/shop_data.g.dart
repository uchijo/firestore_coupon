// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopData _$$_ShopDataFromJson(Map<String, dynamic> json) => _$_ShopData(
      isAvailable: json['isAvailable'] as bool? ?? false,
      couponType: $enumDecode(_$CouponTypeEnumMap, json['couponType']),
      refName: json['refName'] as String,
      shopName: json['shopName'] as String,
      probability: Map<String, int>.from(json['probability'] as Map),
    );

Map<String, dynamic> _$$_ShopDataToJson(_$_ShopData instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'couponType': _$CouponTypeEnumMap[instance.couponType],
      'refName': instance.refName,
      'shopName': instance.shopName,
      'probability': instance.probability,
    };

const _$CouponTypeEnumMap = {
  CouponType.oneStock: 'oneStock',
  CouponType.singleDraw: 'singleDraw',
  CouponType.multipleStock: 'multipleStock',
};
