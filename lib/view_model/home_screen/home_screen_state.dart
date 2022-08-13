import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_state.freezed.dart';

// run this to generate code
// flutter pub run build_runner build

@freezed
class HomeScreenState with _$HomeScreenState {
  factory HomeScreenState({
    List<ShopData>? shopDataList,
  }) = _HomeScreenState;
}
