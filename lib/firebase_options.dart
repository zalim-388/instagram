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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC1Fq0w_i_ly6_eJEEQolf4rH5t8WHF57k',
    appId: '1:293963137381:web:9b489401baf5735530e18c',
    messagingSenderId: '293963137381',
    projectId: 'login-page-b8ac5',
    authDomain: 'login-page-b8ac5.firebaseapp.com',
    storageBucket: 'login-page-b8ac5.firebasestorage.app',
    measurementId: 'G-0BYQ008M25',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBPJlZPVysA6nLy8KmEJZUgtGwfwP145DQ',
    appId: '1:293963137381:android:691495dc80bd249f30e18c',
    messagingSenderId: '293963137381',
    projectId: 'login-page-b8ac5',
    storageBucket: 'login-page-b8ac5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbVbqp19USr2Jfs1Lr4Bi8YbtY4MREel8',
    appId: '1:293963137381:ios:31bdf911bc66f00530e18c',
    messagingSenderId: '293963137381',
    projectId: 'login-page-b8ac5',
    storageBucket: 'login-page-b8ac5.firebasestorage.app',
    iosBundleId: 'com.example.instagram',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbVbqp19USr2Jfs1Lr4Bi8YbtY4MREel8',
    appId: '1:293963137381:ios:31bdf911bc66f00530e18c',
    messagingSenderId: '293963137381',
    projectId: 'login-page-b8ac5',
    storageBucket: 'login-page-b8ac5.firebasestorage.app',
    iosBundleId: 'com.example.instagram',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC1Fq0w_i_ly6_eJEEQolf4rH5t8WHF57k',
    appId: '1:293963137381:web:0417ba106f2a8d0630e18c',
    messagingSenderId: '293963137381',
    projectId: 'login-page-b8ac5',
    authDomain: 'login-page-b8ac5.firebaseapp.com',
    storageBucket: 'login-page-b8ac5.firebasestorage.app',
    measurementId: 'G-D3DZHX736E',
  );
}
