import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firestore_coupon/firebase_options.dart';
import 'package:firestore_coupon/repository/android_auth_repository.dart';
import 'package:firestore_coupon/repository/interface/auth_repository.dart';
import 'package:firestore_coupon/repository/shop_repository.dart';
import 'package:firestore_coupon/repository/test_repository.dart';
import 'package:firestore_coupon/screen/home_screen.dart';
import 'package:firestore_coupon/view_model/home_screen_state.dart';
import 'package:firestore_coupon/view_model/home_screen_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// =============== リポジトリ ===============

// 色々試す用の汚して良いリポジトリ
final testRepositoryProvider =
    Provider<TestRepository>((ref) => TestRepository());

// 端末idなどの取得に用いる
late final Provider<AuthRepository> authRepositoryProvider;

// 店データを取得
final shopRepositoryProvider =
    Provider<ShopRepository>((ref) => ShopRepository());

// =============== 画面ごとのViewModel ===============

final homeScreenStateProvider =
    StateNotifierProvider<HomeScreenStateNotifier, HomeScreenState>(
        (ref) => HomeScreenStateNotifier(ref));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await attemptLogin();

  if (Platform.isAndroid) {
    authRepositoryProvider =
        Provider<AuthRepository>((ref) => AndroidAuthRepository());
  }

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

Future<void> attemptLogin() async {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    debugPrint(' === already logged in. id: ${currentUser.uid}');
    return;
  }

  try {
    final userCredential = await FirebaseAuth.instance.signInAnonymously();
    debugPrint(' === logged in.');
  } on FirebaseAuthException catch (e) {
    switch (e.code) {
      case "operation-not-allowed":
        debugPrint('anonymous auth hasn\'t been enabled for this project.');
        break;
      default:
        debugPrint('unknown error. e: $e');
    }
  }
}
