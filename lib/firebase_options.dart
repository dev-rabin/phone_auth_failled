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
    apiKey: 'AIzaSyCDiziUPVub4njQBGHrDYSnlSFKOMwRGmc',
    appId: '1:55254464633:web:a49482dbc192beeb603ca8',
    messagingSenderId: '55254464633',
    projectId: 'phone-sign-in-260799',
    authDomain: 'phone-sign-in-260799.firebaseapp.com',
    storageBucket: 'phone-sign-in-260799.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBES4Ri6T9meBc7t1Y4Ur6fojHac5c9LzQ',
    appId: '1:55254464633:android:39d11c86415b24e4603ca8',
    messagingSenderId: '55254464633',
    projectId: 'phone-sign-in-260799',
    storageBucket: 'phone-sign-in-260799.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8P3zJB_vzR-RNB3aQXCkoMUVLH8AU72k',
    appId: '1:55254464633:ios:62739a891b4c48c1603ca8',
    messagingSenderId: '55254464633',
    projectId: 'phone-sign-in-260799',
    storageBucket: 'phone-sign-in-260799.appspot.com',
    iosClientId: '55254464633-fsark5j1tuf53iuq8rue0rg2ue1r0g1p.apps.googleusercontent.com',
    iosBundleId: 'com.example.phoneSignin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA8P3zJB_vzR-RNB3aQXCkoMUVLH8AU72k',
    appId: '1:55254464633:ios:51abfb5337cc29bd603ca8',
    messagingSenderId: '55254464633',
    projectId: 'phone-sign-in-260799',
    storageBucket: 'phone-sign-in-260799.appspot.com',
    iosClientId: '55254464633-j0tr0fhch86bkep6mi00b966l2a0eglm.apps.googleusercontent.com',
    iosBundleId: 'com.example.phoneSignin.RunnerTests',
  );
}
