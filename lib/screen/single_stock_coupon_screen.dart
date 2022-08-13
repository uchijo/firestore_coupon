import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingleStockCouponScreen extends HookConsumerWidget {
  const SingleStockCouponScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shopData = ModalRoute.of(context)?.settings.arguments as ShopData;
    return Scaffold(
      appBar: AppBar(
        title: Text('${shopData.shopName} クーポン'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('クーポンを引く'),
          )
        ],
      ),
    );
  }
}
