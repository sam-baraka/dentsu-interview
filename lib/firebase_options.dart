// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB8wnXhJMoU3N2L3dOcFFtDqqTl7HrsGBw',
    appId: '1:607201652187:web:b58d1c80e9b33a6c8d4bfe',
    messagingSenderId: '607201652187',
    projectId: 'dentsu-interview',
    authDomain: 'dentsu-interview.firebaseapp.com',
    storageBucket: 'dentsu-interview.appspot.com',
    measurementId: 'G-GD8946NYXH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDfGoVM23KEDkY6S2vAL0KwnyRlqY_VmEI',
    appId: '1:607201652187:android:fbe92cadd58510948d4bfe',
    messagingSenderId: '607201652187',
    projectId: 'dentsu-interview',
    storageBucket: 'dentsu-interview.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAYd_fjcQ5-ul8yuiz1YYYlWkOpWypibZk',
    appId: '1:607201652187:ios:ad23089394edf3868d4bfe',
    messagingSenderId: '607201652187',
    projectId: 'dentsu-interview',
    storageBucket: 'dentsu-interview.appspot.com',
    iosBundleId: 'com.example.dentsuInterview',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAYd_fjcQ5-ul8yuiz1YYYlWkOpWypibZk',
    appId: '1:607201652187:ios:58c19692674765388d4bfe',
    messagingSenderId: '607201652187',
    projectId: 'dentsu-interview',
    storageBucket: 'dentsu-interview.appspot.com',
    iosBundleId: 'com.example.dentsuInterview.RunnerTests',
  );
}
