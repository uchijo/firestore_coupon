import 'package:firestore_coupon/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeScreenStateProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('coupon test'),
      ),
      body: Column(
        children: [
          ...?state.shopDataList
              ?.map(
                (element) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  child: ListTile(
                    title: Text(element.shopName),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                      side: const BorderSide(color: Colors.black, width: 1),
                    ),
                    onTap: () => Navigator.of(context)
                        .pushNamed('/shopInfo', arguments: element),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
