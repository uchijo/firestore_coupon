// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shop_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopData _$ShopDataFromJson(Map<String, dynamic> json) {
  return _ShopData.fromJson(json);
}

/// @nodoc
mixin _$ShopData {
  bool get isAvailable => throw _privateConstructorUsedError;
  CouponType get couponType => throw _privateConstructorUsedError;
  String get refName => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  Map<String, int> get probability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopDataCopyWith<ShopData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopDataCopyWith<$Res> {
  factory $ShopDataCopyWith(ShopData value, $Res Function(ShopData) then) =
      _$ShopDataCopyWithImpl<$Res>;
  $Res call(
      {bool isAvailable,
      CouponType couponType,
      String refName,
      String shopName,
      Map<String, int> probability});
}

/// @nodoc
class _$ShopDataCopyWithImpl<$Res> implements $ShopDataCopyWith<$Res> {
  _$ShopDataCopyWithImpl(this._value, this._then);

  final ShopData _value;
  // ignore: unused_field
  final $Res Function(ShopData) _then;

  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? couponType = freezed,
    Object? refName = freezed,
    Object? shopName = freezed,
    Object? probability = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      couponType: couponType == freezed
          ? _value.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as CouponType,
      refName: refName == freezed
          ? _value.refName
          : refName // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      probability: probability == freezed
          ? _value.probability
          : probability // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$$_ShopDataCopyWith<$Res> implements $ShopDataCopyWith<$Res> {
  factory _$$_ShopDataCopyWith(
          _$_ShopData value, $Res Function(_$_ShopData) then) =
      __$$_ShopDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAvailable,
      CouponType couponType,
      String refName,
      String shopName,
      Map<String, int> probability});
}

/// @nodoc
class __$$_ShopDataCopyWithImpl<$Res> extends _$ShopDataCopyWithImpl<$Res>
    implements _$$_ShopDataCopyWith<$Res> {
  __$$_ShopDataCopyWithImpl(
      _$_ShopData _value, $Res Function(_$_ShopData) _then)
      : super(_value, (v) => _then(v as _$_ShopData));

  @override
  _$_ShopData get _value => super._value as _$_ShopData;

  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? couponType = freezed,
    Object? refName = freezed,
    Object? shopName = freezed,
    Object? probability = freezed,
  }) {
    return _then(_$_ShopData(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      couponType: couponType == freezed
          ? _value.couponType
          : couponType // ignore: cast_nullable_to_non_nullable
              as CouponType,
      refName: refName == freezed
          ? _value.refName
          : refName // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: shopName == freezed
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      probability: probability == freezed
          ? _value._probability
          : probability // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopData with DiagnosticableTreeMixin implements _ShopData {
  _$_ShopData(
      {this.isAvailable = false,
      required this.couponType,
      required this.refName,
      required this.shopName,
      required final Map<String, int> probability})
      : _probability = probability;

  factory _$_ShopData.fromJson(Map<String, dynamic> json) =>
      _$$_ShopDataFromJson(json);

  @override
  @JsonKey()
  final bool isAvailable;
  @override
  final CouponType couponType;
  @override
  final String refName;
  @override
  final String shopName;
  final Map<String, int> _probability;
  @override
  Map<String, int> get probability {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_probability);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShopData(isAvailable: $isAvailable, couponType: $couponType, refName: $refName, shopName: $shopName, probability: $probability)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShopData'))
      ..add(DiagnosticsProperty('isAvailable', isAvailable))
      ..add(DiagnosticsProperty('couponType', couponType))
      ..add(DiagnosticsProperty('refName', refName))
      ..add(DiagnosticsProperty('shopName', shopName))
      ..add(DiagnosticsProperty('probability', probability));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopData &&
            const DeepCollectionEquality()
                .equals(other.isAvailable, isAvailable) &&
            const DeepCollectionEquality()
                .equals(other.couponType, couponType) &&
            const DeepCollectionEquality().equals(other.refName, refName) &&
            const DeepCollectionEquality().equals(other.shopName, shopName) &&
            const DeepCollectionEquality()
                .equals(other._probability, _probability));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isAvailable),
      const DeepCollectionEquality().hash(couponType),
      const DeepCollectionEquality().hash(refName),
      const DeepCollectionEquality().hash(shopName),
      const DeepCollectionEquality().hash(_probability));

  @JsonKey(ignore: true)
  @override
  _$$_ShopDataCopyWith<_$_ShopData> get copyWith =>
      __$$_ShopDataCopyWithImpl<_$_ShopData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopDataToJson(this);
  }
}

abstract class _ShopData implements ShopData {
  factory _ShopData(
      {final bool isAvailable,
      required final CouponType couponType,
      required final String refName,
      required final String shopName,
      required final Map<String, int> probability}) = _$_ShopData;

  factory _ShopData.fromJson(Map<String, dynamic> json) = _$_ShopData.fromJson;

  @override
  bool get isAvailable => throw _privateConstructorUsedError;
  @override
  CouponType get couponType => throw _privateConstructorUsedError;
  @override
  String get refName => throw _privateConstructorUsedError;
  @override
  String get shopName => throw _privateConstructorUsedError;
  @override
  Map<String, int> get probability => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShopDataCopyWith<_$_ShopData> get copyWith =>
      throw _privateConstructorUsedError;
}
