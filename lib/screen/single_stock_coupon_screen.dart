import 'package:firestore_coupon/main.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingleStockCouponScreen extends HookConsumerWidget {
  const SingleStockCouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(singleStockCouponStateProvider);
    final notifier = ref.watch(singleStockCouponStateProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('${state.shopData?.shopName} クーポン'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              final coupon = notifier.createCoupon();
              debugPrint('coupon: $coupon');
            },
            child: const Text('クーポンを引く'),
          ),
          Text(
              'coupon: ${ref.watch(singleStockCouponStateProvider).couponCandidate}'),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () async {
              await notifier.addCoupon();
            },
            child: const Text('上のやつを追加'),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () async {
              await notifier.fetchCoupon();
            },
            child: const Text('クーポンがサーバー上にあるか確認'),
          ),
          Text('fetched coupon: ${state.stockedCoupon}'),
        ],
      ),
    );
  }
}
