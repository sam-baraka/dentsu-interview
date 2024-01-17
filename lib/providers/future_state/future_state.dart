import 'package:freezed_annotation/freezed_annotation.dart';

part 'future_state.freezed.dart';

@freezed
class FutureState<T> with _$FutureState {
  factory FutureState.initial() = _Initial;
  factory FutureState.loading() = _Loading;
  factory FutureState.success({required T data}) = _Success;
  factory FutureState.error({required String message}) = _Error;
}
