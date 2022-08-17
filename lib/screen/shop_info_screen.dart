import 'package:firestore_coupon/main.dart';
import 'package:firestore_coupon/model/shop/coupon_type.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopInfoScreen extends HookConsumerWidget {
  const ShopInfoScreen({Key? key}) : super(key: key);

  Widget _createButton(BuildContext context, ShopData shopData, WidgetRef ref) {
    switch (shopData.couponType) {
      case CouponType.oneStock:
        return ElevatedButton(
          onPressed: () async {
            await ref
                .read(singleStockCouponStateProvider.notifier)
                .loadState(shopData: shopData);
            Navigator.of(context)
                .pushNamed('/singleCoupon', arguments: shopData);
          },
          child: const Text('クーポンへ進む'),
        );
      case CouponType.singleDraw:
        // TODO: Handle this case.
        break;
      case CouponType.multipleStock:
        return ElevatedButton(
          onPressed: () async {
            await ref
                .read(multipleStockCouponStateProvider.notifier)
                .loadState(shopData: shopData);
            Navigator.of(context)
                .pushNamed('/multipleCoupon', arguments: shopData);
          },
          child: const Text('クーポンへ進む'),
        );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shopData = ModalRoute.of(context)?.settings.arguments as ShopData;
    return Scaffold(
      appBar: AppBar(
        title: Text('${shopData.shopName}について'),
      ),
      body: Center(
        child: _createButton(context, shopData, ref),
      ),
    );
  }
}
