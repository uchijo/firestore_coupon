import 'package:firestore_coupon/main.dart';
import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:firestore_coupon/view_model/multiple_stock_coupon_screen/multiple_stock_coupon_screen_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MultipleStockCouponScreenStateNotifier
    extends StateNotifier<MultipleStockCouponScreenState> {
  MultipleStockCouponScreenStateNotifier(this.ref)
      : super(MultipleStockCouponScreenState());

  final StateNotifierProviderRef ref;

  /// 画面遷移前に呼ぶ
  Future<void> loadState({required ShopData shopData}) async {
    final userId = await ref.read(authRepositoryProvider).fetchUserId();
    if (userId == null) {
      return;
    }
    final stockedCoupons = await ref
        .read(couponRepositoryProvider)
        .fetchUnusedCoupons(shopData: shopData, userId: userId);
    state = state.copyWith(shopData: shopData, stockedCoupons: stockedCoupons);
  }

  Future<void> addCoupon() async {
    final userId = await ref.read(authRepositoryProvider).fetchUserId();
    if (userId == null || state.shopData == null) {
      return;
    }
    final newCoupon = CouponData.createRandomly(
        probability: state.shopData!.probability, userId: userId);
    await ref
        .read(couponRepositoryProvider)
        .addCoupon(couponData: newCoupon, shopRef: state.shopData!.refName);
  }

  Future<void> loadUnusedCoupons() async {
    final userId = await ref.read(authRepositoryProvider).fetchUserId();
    if (userId == null || state.shopData == null) {
      return;
    }

    final unusedCoupons = await ref
        .read(couponRepositoryProvider)
        .fetchUnusedCoupons(shopData: state.shopData!, userId: userId);
    state = state.copyWith(stockedCoupons: unusedCoupons);
  }

  Future<void> useCoupon({required CouponData coupon}) async {
    if (state.shopData == null || coupon.documentId == null) {
      return;
    }

    await ref.read(couponRepositoryProvider).markAsUsed(
          shopData: state.shopData!,
          documentId: coupon.documentId!,
        );

    // 表示されるリストを書き換え、同じクーポンを再度使用できないように変更
    final oldList = state.stockedCoupons!;
    final newList = oldList.map((e) {
      if (e.documentId != coupon.documentId) {
        return e;
      }
      return e.copyWith(isUsed: true);
    }).toList();
    state = state.copyWith(stockedCoupons: newList);
  }
}
