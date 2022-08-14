import 'package:firestore_coupon/main.dart';
import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:firestore_coupon/view_model/single_stock_coupon_screen/single_stock_coupon_screen_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingleStockCouponScreenStateNotifier
    extends StateNotifier<SingleStockCouponScreenState> {
  SingleStockCouponScreenStateNotifier(this.ref)
      : super(SingleStockCouponScreenState());

  final StateNotifierProviderRef ref;

  void loadState({required ShopData shopData}) {
    state = state.copyWith(shopData: shopData);
  }

  Future<CouponData?> createCoupon() async {
    if (state.shopData?.probability == null) {
      return null;
    }

    final userId = await ref.read(authRepositoryProvider).fetchUserId();
    if (userId == null) {
      return null;
    }

    final randomCoupon = CouponData.createRandomly(
      probability: state.shopData!.probability,
      userId: userId,
    );
    state = state.copyWith(couponCandidate: randomCoupon);
    return randomCoupon;
  }

  Future<void> addCoupon() async {
    if (state.shopData == null || state.couponCandidate == null) {
      return;
    }

    ref.read(singleStockCouponRepositoryProvider).addCoupon(
        couponData: state.couponCandidate!, shopRef: state.shopData!.refName);
  }

  Future<CouponData?> fetchCoupon() async {
    if (state.shopData == null) {
      return null;
    }

    final userId = await ref.read(authRepositoryProvider).fetchUserId();
    if (userId == null) {
      return null;
    }

    final result =
        await ref.read(singleStockCouponRepositoryProvider).fetchUnusedCoupon(
              shopData: state.shopData!,
              userId: userId,
            );

    if (result == null) {
      return null;
    }

    state = state.copyWith(stockedCoupon: result);
    return result;
  }
}
