import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  static Future<UserCredential> loginWithEmail(
      {required Map<String, dynamic> data}) async {
    try {
      return await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: data['email'], password: data['password']);
    } on FirebaseAuthException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'An Error Has Occured';
    }
  }
}
