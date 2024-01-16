import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationRailNotifierProvider =
    StateNotifierProvider<NavigationRailStateNotifier, int>(
        (ref) => NavigationRailStateNotifier());

class NavigationRailStateNotifier extends StateNotifier<int> {
  NavigationRailStateNotifier() : super(0);

  void changeIndex(int index) {
    state = index;
  }
}
