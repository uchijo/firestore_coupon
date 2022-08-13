import 'package:firestore_coupon/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('coupon test'),
      ),
      body: Container(
        child: FutureBuilder<String?>(
          future: ref.read(authRepositoryProvider).fetchUserId(),
          initialData: "fetching data",
          builder: (ctx, snapshot) {
            return Text(snapshot.data ?? 'null');
          },
        ),
      ),
    );
  }
}
