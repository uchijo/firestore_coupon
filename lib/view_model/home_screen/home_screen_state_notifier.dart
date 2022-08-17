import 'package:firestore_coupon/main.dart';
import 'package:firestore_coupon/view_model/home_screen/home_screen_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreenStateNotifier extends StateNotifier<HomeScreenState> {
  HomeScreenStateNotifier(StateNotifierProviderRef ref)
      : super(HomeScreenState()) {
    Future.delayed(const Duration(milliseconds: 0)).then((value) async {
      state = state.copyWith(
          shopDataList: await ref.read(shopRepositoryProvider).fetchAllShop());
    });
  }
}
