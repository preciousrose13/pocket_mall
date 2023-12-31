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
    apiKey: 'AIzaSyCX5sZU3rfMQIHyzCH9k-3Tvnf-WrRnPKU',
    appId: '1:392225529433:web:b7bfb4b566619f496e1b48',
    messagingSenderId: '392225529433',
    projectId: 'pocket-mall-123',
    authDomain: 'pocket-mall-123.firebaseapp.com',
    storageBucket: 'pocket-mall-123.appspot.com',
    measurementId: 'G-KMBQGJDTLC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAR134ZVGP6Ys2RIgBnR_2ZAjE339N8-2Y',
    appId: '1:392225529433:android:d1c2cb558d5b7ed16e1b48',
    messagingSenderId: '392225529433',
    projectId: 'pocket-mall-123',
    storageBucket: 'pocket-mall-123.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcbdNut_rxi2wSeXs2iusZbV2Yd0-cCHw',
    appId: '1:392225529433:ios:2ebad82d77336b716e1b48',
    messagingSenderId: '392225529433',
    projectId: 'pocket-mall-123',
    storageBucket: 'pocket-mall-123.appspot.com',
    iosBundleId: 'com.example.practiceapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBcbdNut_rxi2wSeXs2iusZbV2Yd0-cCHw',
    appId: '1:392225529433:ios:487af973ae1ce9e06e1b48',
    messagingSenderId: '392225529433',
    projectId: 'pocket-mall-123',
    storageBucket: 'pocket-mall-123.appspot.com',
    iosBundleId: 'com.example.practiceapp.RunnerTests',
  );
}
