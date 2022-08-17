// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multiple_stock_coupon_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MultipleStockCouponScreenState {
  List<CouponData>? get stockedCoupons => throw _privateConstructorUsedError;
  ShopData? get shopData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MultipleStockCouponScreenStateCopyWith<MultipleStockCouponScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleStockCouponScreenStateCopyWith<$Res> {
  factory $MultipleStockCouponScreenStateCopyWith(
          MultipleStockCouponScreenState value,
          $Res Function(MultipleStockCouponScreenState) then) =
      _$MultipleStockCouponScreenStateCopyWithImpl<$Res>;
  $Res call({List<CouponData>? stockedCoupons, ShopData? shopData});

  $ShopDataCopyWith<$Res>? get shopData;
}

/// @nodoc
class _$MultipleStockCouponScreenStateCopyWithImpl<$Res>
    implements $MultipleStockCouponScreenStateCopyWith<$Res> {
  _$MultipleStockCouponScreenStateCopyWithImpl(this._value, this._then);

  final MultipleStockCouponScreenState _value;
  // ignore: unused_field
  final $Res Function(MultipleStockCouponScreenState) _then;

  @override
  $Res call({
    Object? stockedCoupons = freezed,
    Object? shopData = freezed,
  }) {
    return _then(_value.copyWith(
      stockedCoupons: stockedCoupons == freezed
          ? _value.stockedCoupons
          : stockedCoupons // ignore: cast_nullable_to_non_nullable
              as List<CouponData>?,
      shopData: shopData == freezed
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as ShopData?,
    ));
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
abstract class _$$_MultipleStockCouponScreenStateCopyWith<$Res>
    implements $MultipleStockCouponScreenStateCopyWith<$Res> {
  factory _$$_MultipleStockCouponScreenStateCopyWith(
          _$_MultipleStockCouponScreenState value,
          $Res Function(_$_MultipleStockCouponScreenState) then) =
      __$$_MultipleStockCouponScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({List<CouponData>? stockedCoupons, ShopData? shopData});

  @override
  $ShopDataCopyWith<$Res>? get shopData;
}

/// @nodoc
class __$$_MultipleStockCouponScreenStateCopyWithImpl<$Res>
    extends _$MultipleStockCouponScreenStateCopyWithImpl<$Res>
    implements _$$_MultipleStockCouponScreenStateCopyWith<$Res> {
  __$$_MultipleStockCouponScreenStateCopyWithImpl(
      _$_MultipleStockCouponScreenState _value,
      $Res Function(_$_MultipleStockCouponScreenState) _then)
      : super(_value, (v) => _then(v as _$_MultipleStockCouponScreenState));

  @override
  _$_MultipleStockCouponScreenState get _value =>
      super._value as _$_MultipleStockCouponScreenState;

  @override
  $Res call({
    Object? stockedCoupons = freezed,
    Object? shopData = freezed,
  }) {
    return _then(_$_MultipleStockCouponScreenState(
      stockedCoupons: stockedCoupons == freezed
          ? _value._stockedCoupons
          : stockedCoupons // ignore: cast_nullable_to_non_nullable
              as List<CouponData>?,
      shopData: shopData == freezed
          ? _value.shopData
          : shopData // ignore: cast_nullable_to_non_nullable
              as ShopData?,
    ));
  }
}

/// @nodoc

class _$_MultipleStockCouponScreenState
    with DiagnosticableTreeMixin
    implements _MultipleStockCouponScreenState {
  _$_MultipleStockCouponScreenState(
      {final List<CouponData>? stockedCoupons, this.shopData})
      : _stockedCoupons = stockedCoupons;

  final List<CouponData>? _stockedCoupons;
  @override
  List<CouponData>? get stockedCoupons {
    final value = _stockedCoupons;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ShopData? shopData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MultipleStockCouponScreenState(stockedCoupons: $stockedCoupons, shopData: $shopData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MultipleStockCouponScreenState'))
      ..add(DiagnosticsProperty('stockedCoupons', stockedCoupons))
      ..add(DiagnosticsProperty('shopData', shopData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultipleStockCouponScreenState &&
            const DeepCollectionEquality()
                .equals(other._stockedCoupons, _stockedCoupons) &&
            const DeepCollectionEquality().equals(other.shopData, shopData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_stockedCoupons),
      const DeepCollectionEquality().hash(shopData));

  @JsonKey(ignore: true)
  @override
  _$$_MultipleStockCouponScreenStateCopyWith<_$_MultipleStockCouponScreenState>
      get copyWith => __$$_MultipleStockCouponScreenStateCopyWithImpl<
          _$_MultipleStockCouponScreenState>(this, _$identity);
}

abstract class _MultipleStockCouponScreenState
    implements MultipleStockCouponScreenState {
  factory _MultipleStockCouponScreenState(
      {final List<CouponData>? stockedCoupons,
      final ShopData? shopData}) = _$_MultipleStockCouponScreenState;

  @override
  List<CouponData>? get stockedCoupons => throw _privateConstructorUsedError;
  @override
  ShopData? get shopData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MultipleStockCouponScreenStateCopyWith<_$_MultipleStockCouponScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
