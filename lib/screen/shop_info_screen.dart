import 'package:firestore_coupon/model/shop/coupon_type.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';
import 'package:flutter/material.dart';

class ShopInfoScreen extends StatelessWidget {
  const ShopInfoScreen({Key? key}) : super(key: key);

  Widget _createButton(BuildContext context, ShopData shopData) {
    switch (shopData.couponType) {
      case CouponType.oneStock:
        return ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/coupon', arguments: shopData);
          },
          child: const Text('クーポンへ進む'),
        );
      case CouponType.singleDraw:
        // TODO: Handle this case.
        break;
      case CouponType.multipleStock:
        // TODO: Handle this case.
        break;
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    final shopData = ModalRoute.of(context)?.settings.arguments as ShopData;
    return Scaffold(
      appBar: AppBar(
        title: Text('${shopData.shopName}について'),
      ),
      body: Center(
        child: _createButton(context, shopData),
      ),
    );
  }
}
