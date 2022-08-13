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
              ?.map((element) => ListTile(
                    title: Text(element.shopName),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
