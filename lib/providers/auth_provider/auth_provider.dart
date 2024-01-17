import 'package:dentsu_interview/providers/future_state/future_state.dart';
import 'package:dentsu_interview/services/authentication_service/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider =
    StateNotifierProvider<AuthNotifier, FutureState<UserCredential>>(
        (ref) => AuthNotifier());

class AuthNotifier extends StateNotifier<FutureState<UserCredential>> {
  AuthNotifier() : super(FutureState.initial());

  login({required Map<String, dynamic> data}) async {
    state = FutureState.loading();
    try {
      final user = await AuthenticationService.loginWithEmail(data: data);
      state = FutureState.success(data: user);
    } catch (e) {
      state = FutureState.error(message: e.toString());
    }
  }
}
