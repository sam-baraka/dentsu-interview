import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static Future addData(
      {required String collection, required Map<String, dynamic> data}) async {
    try {
      return await FirebaseFirestore.instance.collection(collection).add(data);
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'An Error Has Occured';
    }
  }

  static Future<List<Map<String, dynamic>>> getData(
      {required String collection}) async {
    try {
      final data =
          await FirebaseFirestore.instance.collection(collection).get();
      return data.docs.map((e) => e.data()).toList();
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'An Error Has Occured';
    }
  }
}
