import 'package:dentsu_interview/models/dentsuquote.dart';
import 'package:dentsu_interview/services/firestore_service/firestore_service.dart';
import 'package:firebase_core/firebase_core.dart';

class QuotesService {
  static Future<Map<String, dynamic>> createQuote(
      {required Map<String, dynamic> data}) async {
    try {
      await FirestoreService.addData(collection: 'quotes', data: data);
      return data;
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'An Error Has Occured';
    }
  }

  static Future<List<DentsuQuote>> getQuotes() async {
    try {
      final quotes = await FirestoreService.getData(collection: 'quotes');
      return quotes.map((e) => DentsuQuote.fromJson(e)).toList();
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'An Error Has Occured';
    }
  }
}
