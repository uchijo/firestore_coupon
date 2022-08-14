import 'package:firestore_coupon/main.dart';
import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:firestore_coupon/view_model/single_stock_coupon_screen/single_stock_coupon_screen_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingleStockCouponScreenStateNotifier
    extends StateNotifier<SingleStockCouponScreenState> {
  SingleStockCouponScreenStateNotifier(this.ref)
      : super(SingleStockCouponScreenState());

  final StateNotifierProviderRef ref;

  // 画面遷移前に呼ぶ
  Future<void> loadState({required ShopData shopData}) async {
    final storedCouponId = await ref
        .read(couponRepositoryProvider)
        .loadStockedCoupon(shopData: shopData);

    // クーポンがローカルに見つからない場合はストックされてないものとする。
    if (storedCouponId == null) {
      state = state.copyWith(shopData: shopData, stockedCoupon: null);
      return;
    }

    // クーポンがあれば、firestoreから情報を持ってきて表示
    final stockedCoupon =
        await ref.read(couponRepositoryProvider).fetchCouponById(
              shopData: shopData,
              couponDocId: storedCouponId,
            );
    state = state.copyWith(shopData: shopData, stockedCoupon: stockedCoupon);
  }

  Future<void> useStockedCoupon() async {
    // 店のデータがない場合、ストックされているクーポンが存在しない場合、ストックされているクーポンにドキュメントidが存在しない場合は弾く。
    if (state.shopData == null ||
        state.stockedCoupon == null ||
        state.stockedCoupon?.documentId == null) {
      return;
    }

    // firestoreで使用済みとする
    await ref.read(couponRepositoryProvider).markAsUsed(
        shopData: state.shopData!,
        documentId: state.stockedCoupon!.documentId!);

    // ローカルの永続化から削除
    await ref
        .read(couponRepositoryProvider)
        .deleteStoredCoupon(shopData: state.shopData!);

    // 画面表示を更新
    state = state.copyWith(stockedCoupon: null);
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
    return randomCoupon;
  }

  Future<void> addCoupon(CouponData couponToAdd) async {
    if (state.shopData == null) {
      return;
    }

    // firestoreに追加
    final couponDataWithDocId = await ref
        .read(couponRepositoryProvider)
        .addCoupon(couponData: couponToAdd, shopRef: state.shopData!.refName);

    // stateに保存
    state = state.copyWith(
        stockedCoupon: couponDataWithDocId, couponCandidate: null);

    // ローカルで永続化
    ref.read(couponRepositoryProvider).storeCouponDocId(
          shopData: state.shopData!,
          documentId: couponDataWithDocId.documentId!,
        );
  }

  Future<void> fetchCoupon() async {
    if (state.shopData == null) {
      return;
    }
    final userId = await ref.read(authRepositoryProvider).fetchUserId();
    if (userId == null) {
      return;
    }

    final result = await ref.read(couponRepositoryProvider).fetchUnusedCoupons(
          shopData: state.shopData!,
          userId: userId,
        );
    if (result == null) {
      return;
    }

    state = state.copyWith(stockedCoupon: result[0]);
  }
}
