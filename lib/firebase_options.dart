// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBFf3hor3DMRjWmi0S-q4ZU2oJMKT2KjQ4',
    appId: '1:321710271966:web:8a28ecd8db06f6e7db014f',
    messagingSenderId: '321710271966',
    projectId: 'invetory-kurumin',
    authDomain: 'invetory-kurumin.firebaseapp.com',
    databaseURL: 'https://invetory-kurumin-default-rtdb.firebaseio.com',
    storageBucket: 'invetory-kurumin.appspot.com',
    measurementId: 'G-DK8ZFZCDT1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqXmj8ORZeRzSjfw1jWtRcAV7dmwzkhZI',
    appId: '1:321710271966:android:45cf8ba8d6c6ff09db014f',
    messagingSenderId: '321710271966',
    projectId: 'invetory-kurumin',
    databaseURL: 'https://invetory-kurumin-default-rtdb.firebaseio.com',
    storageBucket: 'invetory-kurumin.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJPLHAKRdJmRmDmiKUDaVuzMO7yCT1ClY',
    appId: '1:321710271966:ios:9d11140d8cebce08db014f',
    messagingSenderId: '321710271966',
    projectId: 'invetory-kurumin',
    databaseURL: 'https://invetory-kurumin-default-rtdb.firebaseio.com',
    storageBucket: 'invetory-kurumin.appspot.com',
    iosClientId: '321710271966-s6d3ot7qc42bkv7a1dgjtgeakg4o5fjo.apps.googleusercontent.com',
    iosBundleId: 'com.kurumin',
  );
}