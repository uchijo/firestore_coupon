// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_stock_coupon_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingleStockCouponScreenState {
  CouponData? get stockedCoupon => throw _privateConstructorUsedError;
  CouponData? get couponCandidate => throw _privateConstructorUsedError;
  ShopData? get shopData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleStockCouponScreenStateCopyWith<SingleStockCouponScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleStockCouponScreenStateCopyWith<$Res> {
  factory $SingleStockCouponScreenStateCopyWith(
          SingleStockCouponScreenState value,
          $Res Function(SingleStockCouponScreenState) then) =
      _$SingleStockCouponScreenStateCopyWithImpl<$Res>;
  $Res call(
      {CouponData? stockedCoupon,
      CouponData? couponCandidate,
      ShopData? shopData});

  $CouponDataCopyWith<$Res>? get stockedCoupon;
  $CouponDataCopyWith<$Res>? get couponCandidate;
  $ShopDataCopyWith<$Res>? get shopData;
}

/// @nodoc
class _$SingleStockCouponScreenStateCopyWithImpl<$Res>
    implements $SingleStockCouponScreenStateCopyWith<$Res> {
  _$SingleStockCouponScreenStateCopyWithImpl(this._value, this._then);

  final SingleStockCouponScreenState _value;
  // ignore: unused_field
  final $Res Function(SingleStockCouponScreenState) _then;

  @override
  $Res call({
    Object? stockedCoupon = freezed,
    Object? couponCandidate = freezed,
    Object? shopData = freezed,
  }) {
    return _then(_value.copyWith(
      stockedCoupon: stockedCoupon == freezed
          ? _value.stockedCoupon
          : stockedCoupon // ignore: cast_nullable_to_non_nullable
              as CouponData?,
      couponCandidate: couponCandidate == freezed
          ? _value.couponCandidate
          : couponCandidate // ignore: cast_nullable_to_non_nullable
              as CouponData?,
      shopData: shopData == freezed
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as ShopData?,
    ));
  }

  @override
  $CouponDataCopyWith<$Res>? get stockedCoupon {
    if (_value.stockedCoupon == null) {
      return null;
    }

    return $CouponDataCopyWith<$Res>(_value.stockedCoupon!, (value) {
      return _then(_value.copyWith(stockedCoupon: value));
    });
  }

  @override
  $CouponDataCopyWith<$Res>? get couponCandidate {
    if (_value.couponCandidate == null) {
      return null;
    }

    return $CouponDataCopyWith<$Res>(_value.couponCandidate!, (value) {
      return _then(_value.copyWith(couponCandidate: value));
    });
  }

  @override
  $ShopDataCopyWith<$Res>? get shopData {
    if (_value.shopData == null) {
      return null;
    }

    return $ShopDataCopyWith<$Res>(_value.shopData!, (value) {
      return _then(_value.copyWith(shopData: value));
    });
  }
}

/// @nodoc
abstract class _$$_SingleStockCouponScreenStateCopyWith<$Res>
    implements $SingleStockCouponScreenStateCopyWith<$Res> {
  factory _$$_SingleStockCouponScreenStateCopyWith(
          _$_SingleStockCouponScreenState value,
          $Res Function(_$_SingleStockCouponScreenState) then) =
      __$$_SingleStockCouponScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CouponData? stockedCoupon,
      CouponData? couponCandidate,
      ShopData? shopData});

  @override
  $CouponDataCopyWith<$Res>? get stockedCoupon;
  @override
  $CouponDataCopyWith<$Res>? get couponCandidate;
  @override
  $ShopDataCopyWith<$Res>? get shopData;
}

/// @nodoc
class __$$_SingleStockCouponScreenStateCopyWithImpl<$Res>
    extends _$SingleStockCouponScreenStateCopyWithImpl<$Res>
    implements _$$_SingleStockCouponScreenStateCopyWith<$Res> {
  __$$_SingleStockCouponScreenStateCopyWithImpl(
      _$_SingleStockCouponScreenState _value,
      $Res Function(_$_SingleStockCouponScreenState) _then)
      : super(_value, (v) => _then(v as _$_SingleStockCouponScreenState));

  @override
  _$_SingleStockCouponScreenState get _value =>
      super._value as _$_SingleStockCouponScreenState;

  @override
  $Res call({
    Object? stockedCoupon = freezed,
    Object? couponCandidate = freezed,
    Object? shopData = freezed,
  }) {
    return _then(_$_SingleStockCouponScreenState(
      stockedCoupon: stockedCoupon == freezed
          ? _value.stockedCoupon
          : stockedCoupon // ignore: cast_nullable_to_non_nullable
              as CouponData?,
      couponCandidate: couponCandidate == freezed
          ? _value.couponCandidate
          : couponCandidate // ignore: cast_nullable_to_non_nullable
              as CouponData?,
      shopData: shopData == freezed
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as ShopData?,
    ));
  }
}

/// @nodoc

class _$_SingleStockCouponScreenState
    with DiagnosticableTreeMixin
    implements _SingleStockCouponScreenState {
  _$_SingleStockCouponScreenState(
      {this.stockedCoupon, this.couponCandidate, this.shopData});

  @override
  final CouponData? stockedCoupon;
  @override
  final CouponData? couponCandidate;
  @override
  final ShopData? shopData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SingleStockCouponScreenState(stockedCoupon: $stockedCoupon, couponCandidate: $couponCandidate, shopData: $shopData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SingleStockCouponScreenState'))
      ..add(DiagnosticsProperty('stockedCoupon', stockedCoupon))
      ..add(DiagnosticsProperty('couponCandidate', couponCandidate))
      ..add(DiagnosticsProperty('shopData', shopData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SingleStockCouponScreenState &&
            const DeepCollectionEquality()
                .equals(other.stockedCoupon, stockedCoupon) &&
            const DeepCollectionEquality()
                .equals(other.couponCandidate, couponCandidate) &&
            const DeepCollectionEquality().equals(other.shopData, shopData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stockedCoupon),
      const DeepCollectionEquality().hash(couponCandidate),
      const DeepCollectionEquality().hash(shopData));

  @JsonKey(ignore: true)
  @override
  _$$_SingleStockCouponScreenStateCopyWith<_$_SingleStockCouponScreenState>
      get copyWith => __$$_SingleStockCouponScreenStateCopyWithImpl<
          _$_SingleStockCouponScreenState>(this, _$identity);
}

abstract class _SingleStockCouponScreenState
    implements SingleStockCouponScreenState {
  factory _SingleStockCouponScreenState(
      {final CouponData? stockedCoupon,
      final CouponData? couponCandidate,
      final ShopData? shopData}) = _$_SingleStockCouponScreenState;

  @override
  CouponData? get stockedCoupon => throw _privateConstructorUsedError;
  @override
  CouponData? get couponCandidate => throw _privateConstructorUsedError;
  @override
  ShopData? get shopData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SingleStockCouponScreenStateCopyWith<_$_SingleStockCouponScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
