import 'package:dentsu_interview/providers/mpesa_payment/mpesa_payment_service.dart';
import 'package:dentsu_interview/providers/mpesa_payment/mpesa_payment_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mpesaPaymentNotifierProvider =
    StateNotifierProvider<MpesaPaymentNotifier, MpesaPaymentState>(
        (ref) => MpesaPaymentNotifier(MpesaPaymentState.initial()));

class MpesaPaymentNotifier extends StateNotifier<MpesaPaymentState> {
  MpesaPaymentNotifier(super.state);

  initiatePayment({required String phone, required String identifier}) async {
    try {
      state = MpesaPaymentState.loading();
      var data = await MpesaPaymentService.payWithMpesa(
          phoneNumber: phone, identifier: identifier);
      state = MpesaPaymentState.paymentRequestSent(data: data);
    } catch (e) {
      state = MpesaPaymentState.error(message: e.toString());
    }
  }

  confirmPayment(
      {required String checkoutRequestID, required String merchantRequestId}) {
    try {
      state = MpesaPaymentState.loading();
      MpesaPaymentService.confirmPayment(
          checkoutRequestID: checkoutRequestID,
          merchantRequestId: merchantRequestId);
      state = MpesaPaymentState.success();
    } catch (e) {
      state = MpesaPaymentState.error(message: e.toString());
    }
  }
}
