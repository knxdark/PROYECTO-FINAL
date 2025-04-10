// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyClgyaqzQ0QGbcg1tAIVNt5KOS_L6gh9qg',
    appId: '1:184743957516:web:1c29ac3688be249eac4a29',
    messagingSenderId: '184743957516',
    projectId: 'shop-569f0',
    authDomain: 'shop-569f0.firebaseapp.com',
    storageBucket: 'shop-569f0.firebasestorage.app',
    measurementId: 'G-2TNS2ZPQPM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMg6fyMHlZLPgjRkVVrhui3esAQ00RhPE',
    appId: '1:184743957516:android:00470c19f77f4e0aac4a29',
    messagingSenderId: '184743957516',
    projectId: 'shop-569f0',
    storageBucket: 'shop-569f0.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAEhZ7oNCtmbM_6L4mGJFGv-fAlch2mIYQ',
    appId: '1:184743957516:ios:03062be856be5ef1ac4a29',
    messagingSenderId: '184743957516',
    projectId: 'shop-569f0',
    storageBucket: 'shop-569f0.firebasestorage.app',
    iosBundleId: 'com.example.lishop',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyClgyaqzQ0QGbcg1tAIVNt5KOS_L6gh9qg',
    appId: '1:184743957516:web:14c4cb792ba22bbdac4a29',
    messagingSenderId: '184743957516',
    projectId: 'shop-569f0',
    authDomain: 'shop-569f0.firebaseapp.com',
    storageBucket: 'shop-569f0.firebasestorage.app',
    measurementId: 'G-TK1SMJPGVM',
  );
}
