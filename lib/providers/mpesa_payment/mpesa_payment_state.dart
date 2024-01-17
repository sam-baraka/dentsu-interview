
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mpesa_payment_state.freezed.dart';


@freezed
class MpesaPaymentState with _$MpesaPaymentState {
  factory MpesaPaymentState.initial() = _Initial;
  factory MpesaPaymentState.loading() = _Loading;
  factory MpesaPaymentState.paymentRequestSent({required Map<String,dynamic> data}) = _PaymentRequestSent;
  factory MpesaPaymentState.success() = _Success;
  factory MpesaPaymentState.error({required String message}) = _Error;
	
}
