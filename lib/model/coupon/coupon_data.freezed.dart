// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coupon_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponData _$CouponDataFromJson(Map<String, dynamic> json) {
  return _CouponData.fromJson(json);
}

/// @nodoc
mixin _$CouponData {
  bool get isUsed => throw _privateConstructorUsedError;
  @JsonKey(fromJson: fromTimestampJson, toJson: toTimestampJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  String get couponId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get couponName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponDataCopyWith<CouponData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponDataCopyWith<$Res> {
  factory $CouponDataCopyWith(
          CouponData value, $Res Function(CouponData) then) =
      _$CouponDataCopyWithImpl<$Res>;
  $Res call(
      {bool isUsed,
      @JsonKey(fromJson: fromTimestampJson, toJson: toTimestampJson)
          Timestamp createdAt,
      String couponId,
      String userId,
      String couponName});
}

/// @nodoc
class _$CouponDataCopyWithImpl<$Res> implements $CouponDataCopyWith<$Res> {
  _$CouponDataCopyWithImpl(this._value, this._then);

  final CouponData _value;
  // ignore: unused_field
  final $Res Function(CouponData) _then;

  @override
  $Res call({
    Object? isUsed = freezed,
    Object? createdAt = freezed,
    Object? couponId = freezed,
    Object? userId = freezed,
    Object? couponName = freezed,
  }) {
    return _then(_value.copyWith(
      isUsed: isUsed == freezed
          ? _value.isUsed
          : isUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      couponId: couponId == freezed
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      couponName: couponName == freezed
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CouponDataCopyWith<$Res>
    implements $CouponDataCopyWith<$Res> {
  factory _$$_CouponDataCopyWith(
          _$_CouponData value, $Res Function(_$_CouponData) then) =
      __$$_CouponDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isUsed,
      @JsonKey(fromJson: fromTimestampJson, toJson: toTimestampJson)
          Timestamp createdAt,
      String couponId,
      String userId,
      String couponName});
}

/// @nodoc
class __$$_CouponDataCopyWithImpl<$Res> extends _$CouponDataCopyWithImpl<$Res>
    implements _$$_CouponDataCopyWith<$Res> {
  __$$_CouponDataCopyWithImpl(
      _$_CouponData _value, $Res Function(_$_CouponData) _then)
      : super(_value, (v) => _then(v as _$_CouponData));

  @override
  _$_CouponData get _value => super._value as _$_CouponData;

  @override
  $Res call({
    Object? isUsed = freezed,
    Object? createdAt = freezed,
    Object? couponId = freezed,
    Object? userId = freezed,
    Object? couponName = freezed,
  }) {
    return _then(_$_CouponData(
      isUsed: isUsed == freezed
          ? _value.isUsed
          : isUsed // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      couponId: couponId == freezed
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      couponName: couponName == freezed
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CouponData with DiagnosticableTreeMixin implements _CouponData {
  _$_CouponData(
      {this.isUsed = true,
      @JsonKey(fromJson: fromTimestampJson, toJson: toTimestampJson)
          required this.createdAt,
      required this.couponId,
      required this.userId,
      required this.couponName});

  factory _$_CouponData.fromJson(Map<String, dynamic> json) =>
      _$$_CouponDataFromJson(json);

  @override
  @JsonKey()
  final bool isUsed;
  @override
  @JsonKey(fromJson: fromTimestampJson, toJson: toTimestampJson)
  final Timestamp createdAt;
  @override
  final String couponId;
  @override
  final String userId;
  @override
  final String couponName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CouponData(isUsed: $isUsed, createdAt: $createdAt, couponId: $couponId, userId: $userId, couponName: $couponName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CouponData'))
      ..add(DiagnosticsProperty('isUsed', isUsed))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('couponId', couponId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('couponName', couponName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CouponData &&
            const DeepCollectionEquality().equals(other.isUsed, isUsed) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.couponId, couponId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.couponName, couponName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isUsed),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(couponId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(couponName));

  @JsonKey(ignore: true)
  @override
  _$$_CouponDataCopyWith<_$_CouponData> get copyWith =>
      __$$_CouponDataCopyWithImpl<_$_CouponData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CouponDataToJson(this);
  }
}

abstract class _CouponData implements CouponData {
  factory _CouponData(
      {final bool isUsed,
      @JsonKey(fromJson: fromTimestampJson, toJson: toTimestampJson)
          required final Timestamp createdAt,
      required final String couponId,
      required final String userId,
      required final String couponName}) = _$_CouponData;

  factory _CouponData.fromJson(Map<String, dynamic> json) =
      _$_CouponData.fromJson;

  @override
  bool get isUsed => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: fromTimestampJson, toJson: toTimestampJson)
  Timestamp get createdAt => throw _privateConstructorUsedError;
  @override
  String get couponId => throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  String get couponName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CouponDataCopyWith<_$_CouponData> get copyWith =>
      throw _privateConstructorUsedError;
}
