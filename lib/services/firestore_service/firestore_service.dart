import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  static Future addData(
      {required String collection, required Map<String, dynamic> data}) async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      return await FirebaseFirestore.instance.collection(collection).add({
        ...data,
        'createdAt': DateTime.now().toIso8601String(),
        'createdBy': auth.currentUser!.uid,
      });
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
      return data.docs.map((e) => {'id': e.id, ...e.data()}).toList();
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'An Error Has Occured';
    }
  }
}
