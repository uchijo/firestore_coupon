import 'package:firestore_coupon/model/coupon/coupon_data.dart';
import 'package:flutter/material.dart';

class CouponListTile extends StatelessWidget {
  const CouponListTile({Key? key, required this.couponData}) : super(key: key);
  final CouponData couponData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: ListTile(
        title: Text(couponData.toString()),
        leading: ElevatedButton(
          onPressed: () {
            // クーポンを使うボタンのロジック
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
