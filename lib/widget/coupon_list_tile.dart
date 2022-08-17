import 'package:firestore_coupon/main.dart';
import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouponListTile extends HookConsumerWidget {
  const CouponListTile({Key? key, required this.couponData}) : super(key: key);
  final CouponData couponData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(multipleStockCouponStateProvider.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(couponData.toString()),
        leading: ElevatedButton(
          onPressed: couponData.isUsed
              ? null
              : () {
                  notifier.useCoupon(coupon: couponData);
                },
          child: const Text('このクーポンを使う'),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: Colors.black, width: 1),
        ),
      ),
    );
  }
}
