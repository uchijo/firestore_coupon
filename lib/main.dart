import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firestore_coupon/firebase_options.dart';
import 'package:firestore_coupon/repository/test_repository.dart';
import 'package:firestore_coupon/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final testRepositoryProvider =
    Provider<TestRepository>((ref) => TestRepository());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await attemptLogin();
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
