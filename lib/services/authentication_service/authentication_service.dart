import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  static Future<UserCredential> loginWithEmail(
      String email, String password) async {
    try {
      return await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw e.message!;
    } catch (e) {
      throw 'An Error Has Occured';
    }
  }
}
