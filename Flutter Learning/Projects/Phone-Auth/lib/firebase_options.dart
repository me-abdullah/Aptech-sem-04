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

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBpcnBqEKEkjlFnggcx55_ybljM2umBEBc',
    appId: '1:504800753319:web:d2bb4eaf7a5e2eeefc0d82',
    messagingSenderId: '504800753319',
    projectId: 'fir-aptech-4fb7c',
    authDomain: 'fir-aptech-4fb7c.firebaseapp.com',
    storageBucket: 'fir-aptech-4fb7c.appspot.com',
    measurementId: 'G-8DRCCRY6XN',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBpcnBqEKEkjlFnggcx55_ybljM2umBEBc',
    appId: '1:504800753319:web:d2bb4eaf7a5e2eeefc0d82',
    messagingSenderId: '504800753319',
    projectId: 'fir-aptech-4fb7c',
    authDomain: 'fir-aptech-4fb7c.firebaseapp.com',
    storageBucket: 'fir-aptech-4fb7c.appspot.com',
    measurementId: 'G-8DRCCRY6XN',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAN4bMfXCJWbFvZ8gzlxXqfgqL5SabmI-g',
    appId: '1:504800753319:ios:3567ca61ce811a6efc0d82',
    messagingSenderId: '504800753319',
    projectId: 'fir-aptech-4fb7c',
    storageBucket: 'fir-aptech-4fb7c.appspot.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAN4bMfXCJWbFvZ8gzlxXqfgqL5SabmI-g',
    appId: '1:504800753319:ios:3567ca61ce811a6efc0d82',
    messagingSenderId: '504800753319',
    projectId: 'fir-aptech-4fb7c',
    storageBucket: 'fir-aptech-4fb7c.appspot.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_-xyCstPf9uSx1tWvu_mSy861M3GJ-O8',
    appId: '1:504800753319:android:8c3e027091e868c4fc0d82',
    messagingSenderId: '504800753319',
    projectId: 'fir-aptech-4fb7c',
    storageBucket: 'fir-aptech-4fb7c.appspot.com',
  );

}