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
    apiKey: 'AIzaSyBLyrKF9KxB4dKkDKs_1yIkmGb5sMHqwxE',
    appId: '1:925838180081:web:b912fc6e84c2d692f6f350',
    messagingSenderId: '925838180081',
    projectId: 'education-kids-2181c',
    authDomain: 'education-kids-2181c.firebaseapp.com',
    databaseURL: 'https://education-kids-2181c-default-rtdb.firebaseio.com',
    storageBucket: 'education-kids-2181c.appspot.com',
    measurementId: 'G-EVGTL9X7R0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_WTI3r-oafh5ctisUu2E6O5AEQo2Ff7c',
    appId: '1:925838180081:android:dcbfa0973e1d4deef6f350',
    messagingSenderId: '925838180081',
    projectId: 'education-kids-2181c',
    databaseURL: 'https://education-kids-2181c-default-rtdb.firebaseio.com',
    storageBucket: 'education-kids-2181c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZIjZ5RiVvnNFcZVJ6TQ5ePf9YL0Lb574',
    appId: '1:925838180081:ios:fd08c955d7560b2cf6f350',
    messagingSenderId: '925838180081',
    projectId: 'education-kids-2181c',
    databaseURL: 'https://education-kids-2181c-default-rtdb.firebaseio.com',
    storageBucket: 'education-kids-2181c.appspot.com',
    androidClientId: '925838180081-20f76goivvla7k98gkp21taoprrm4v9b.apps.googleusercontent.com',
    iosClientId: '925838180081-4l0uifhl7jch55p7ib6s1fhd6a2ngu8r.apps.googleusercontent.com',
    iosBundleId: 'com.example.educationalKidsGame',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZIjZ5RiVvnNFcZVJ6TQ5ePf9YL0Lb574',
    appId: '1:925838180081:ios:fd08c955d7560b2cf6f350',
    messagingSenderId: '925838180081',
    projectId: 'education-kids-2181c',
    databaseURL: 'https://education-kids-2181c-default-rtdb.firebaseio.com',
    storageBucket: 'education-kids-2181c.appspot.com',
    androidClientId: '925838180081-20f76goivvla7k98gkp21taoprrm4v9b.apps.googleusercontent.com',
    iosClientId: '925838180081-4l0uifhl7jch55p7ib6s1fhd6a2ngu8r.apps.googleusercontent.com',
    iosBundleId: 'com.example.educationalKidsGame',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBLyrKF9KxB4dKkDKs_1yIkmGb5sMHqwxE',
    appId: '1:925838180081:web:ec385e361b370587f6f350',
    messagingSenderId: '925838180081',
    projectId: 'education-kids-2181c',
    authDomain: 'education-kids-2181c.firebaseapp.com',
    databaseURL: 'https://education-kids-2181c-default-rtdb.firebaseio.com',
    storageBucket: 'education-kids-2181c.appspot.com',
    measurementId: 'G-Y77Z3PP0WX',
  );

}