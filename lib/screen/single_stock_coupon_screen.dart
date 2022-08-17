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
          FutureBuilder<bool>(
            builder: (ctx, snapshot) {
              return ElevatedButton(
                onPressed: !(snapshot.data ?? false)
                    ? null
                    : () async {
                        final newCoupon = await notifier.createCoupon();
                        if (newCoupon == null) {
                          return;
                        }

                        await notifier.addCoupon(newCoupon);
                      },
                child: const Text('クーポンを引く'),
              );
            },
            future: notifier.canDraw(),
            initialData: false,
          ),
          const SizedBox(height: 50),
          Text('ストックされているクーポン: ${state.stockedCoupon}'),
          ElevatedButton(
            onPressed: () async {
              await notifier.useStockedCoupon();
            },
            child: const Text('ストック済みクーポンを使用する'),
          )
        ],
      ),
    );
  }
}
