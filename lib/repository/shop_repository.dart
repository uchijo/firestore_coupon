import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_coupon/model/shop/shop_data.dart';

class ShopRepository {
  Future<List<ShopData>> fetchAllShop() async {
    final shopCollection =
        await FirebaseFirestore.instance.collection('coupons').get();
    final rawShopList = shopCollection.docs;
    final shopList = rawShopList
        .map((snapshot) => ShopData.fromJson(snapshot.data()))
        .toList();
    return shopList;
  }
}
