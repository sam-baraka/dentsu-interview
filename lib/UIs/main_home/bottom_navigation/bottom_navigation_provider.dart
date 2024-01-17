import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavigationStateNotifierProvider =
    StateNotifierProvider<BottomNvigationStateNotifier, int>(
        (ref) => BottomNvigationStateNotifier());

class BottomNvigationStateNotifier extends StateNotifier<int> {
  BottomNvigationStateNotifier() : super(0);

  void changeIndex(int index) {
    state = index;
  }
}
