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
    apiKey: 'AIzaSyCmc9fe-85IRdAaDFV3Z8sFDkG8tnmuU4o',
    appId: '1:1047071683882:web:ef83c1fe2cdf3cbfba9a53',
    messagingSenderId: '1047071683882',
    projectId: 'fitness-project-987',
    authDomain: 'fitness-project-987.firebaseapp.com',
    storageBucket: 'fitness-project-987.appspot.com',
    measurementId: 'G-XEC77TNQ3K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5OI-AgntFMXoX142NbQdrVJgFknzVah8',
    appId: '1:1047071683882:android:6d93c6c61338e55aba9a53',
    messagingSenderId: '1047071683882',
    projectId: 'fitness-project-987',
    storageBucket: 'fitness-project-987.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOLzNJDRPkBwde8C9QN3fN6JNV9wY5hMM',
    appId: '1:1047071683882:ios:a9226ea8a35a7620ba9a53',
    messagingSenderId: '1047071683882',
    projectId: 'fitness-project-987',
    storageBucket: 'fitness-project-987.appspot.com',
    iosBundleId: 'com.example.modernlogintute',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOLzNJDRPkBwde8C9QN3fN6JNV9wY5hMM',
    appId: '1:1047071683882:ios:a9226ea8a35a7620ba9a53',
    messagingSenderId: '1047071683882',
    projectId: 'fitness-project-987',
    storageBucket: 'fitness-project-987.appspot.com',
    iosBundleId: 'com.example.modernlogintute',
  );
}
