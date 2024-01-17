import 'package:dio/dio.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';

class MpesaPaymentService {
  static Future<Map<String, dynamic>> payWithMpesa(
      {required String phoneNumber, required String identifier}) async {
    try {
      FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
      await remoteConfig.fetchAndActivate();
      String baseUrl = remoteConfig.getString('paymentUrl');
      var x = await MpesaFlutterPlugin.initializeMpesaSTKPush(
          businessShortCode: '174379',
          transactionType: TransactionType.CustomerPayBillOnline,
          amount: 1.0,
          partyA: phoneNumber,
          partyB: '174379',
          callBackURL: Uri.parse('$baseUrl/callback'),
          accountReference: identifier,
          phoneNumber: phoneNumber,
          baseUri: Uri.parse('https://sandbox.safaricom.co.ke/'),
          transactionDesc: 'Buy Insurance',
          passKey:
              'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919');
      return x as Map<String, dynamic>;
    } catch (e) {
      throw 'Could not complete transaction';
    }
  }

  static Future<Map<String, dynamic>> confirmPayment(
      {required String checkoutRequestID,
      required String merchantRequestId}) async {
    FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetchAndActivate();
    String baseUrl = remoteConfig.getString('paymentUrl');
    try {
      Dio dio = Dio();
      var response = await dio.get('$baseUrl/callback/$merchantRequestId');

      return response.data;
    } on DioException catch (e) {
      print(e.toString());
      throw 'Could not complete transaction';
    } catch (e) {
      throw 'Could not complete transaction';
    }
  }
}
