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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBexNHGB4FDAlC1y6a4R2S5uC4n9CHgCbg',
    appId: '1:653720409231:web:82ea2b5f59f277670e0cfa',
    messagingSenderId: '653720409231',
    projectId: 'c22-101',
    authDomain: 'c22-101.firebaseapp.com',
    storageBucket: 'c22-101.appspot.com',
    measurementId: 'G-KP108XVQ3V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJsV79YuYZx2G3q9tVgs3jnyKVt4FN25M',
    appId: '1:653720409231:android:f30c997ce87bb9a50e0cfa',
    messagingSenderId: '653720409231',
    projectId: 'c22-101',
    storageBucket: 'c22-101.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBd2KUdcjeSAuwLbvYfCTGACya15fgfbEI',
    appId: '1:653720409231:ios:da64562c849ae2a60e0cfa',
    messagingSenderId: '653720409231',
    projectId: 'c22-101',
    storageBucket: 'c22-101.appspot.com',
    iosClientId: '653720409231-j80tbf9uqbo5nefaadahq1an6ft9rv6c.apps.googleusercontent.com',
    iosBundleId: 'com.example.c22101',
  );
}
