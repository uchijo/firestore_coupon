import 'package:firestore_coupon/main.dart';
import 'package:firestore_coupon/widget/coupon_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MultipleStockCouponScreen extends HookConsumerWidget {
  const MultipleStockCouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multipleStockCouponStateProvider);
    final notifier = ref.watch(multipleStockCouponStateProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('${state.shopData?.shopName} クーポン'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              await notifier.addCoupon();
              await notifier.loadUnusedCoupons();
            },
            child: const Text('クーポンを引く'),
          ),
          Expanded(
            child: ListView(
              children: state.stockedCoupons
                      ?.map((e) => CouponListTile(couponData: e))
                      .toList() ??
                  [],
            ),
          ),
        ],
      ),
    );
  }
}
