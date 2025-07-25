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
    apiKey: 'AIzaSyBNkj2MLuNLla8gQ9SZwxT0UG1WBbjkdp4',
    appId: '1:786194958283:web:64c4a2faba1cdd8db2984e',
    messagingSenderId: '786194958283',
    projectId: 'cmcfoood',
    authDomain: 'cmcfoood.firebaseapp.com',
    storageBucket: 'cmcfoood.firebasestorage.app',
    measurementId: 'G-7CBBRHBBCP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXIvYaiLl1fNY3mF82W28TUaJm1vDcwDg',
    appId: '1:786194958283:android:38462b8bdcd16201b2984e',
    messagingSenderId: '786194958283',
    projectId: 'cmcfoood',
    storageBucket: 'cmcfoood.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8fN2PAUNBXRnQHR_fIAHE2PgAyNhTcKE',
    appId: '1:786194958283:ios:4e1d63b38a68eafab2984e',
    messagingSenderId: '786194958283',
    projectId: 'cmcfoood',
    storageBucket: 'cmcfoood.firebasestorage.app',
    androidClientId: '786194958283-k0rk5tuess2hja4kp3dqjvdbn3j3c5ph.apps.googleusercontent.com',
    iosClientId: '786194958283-ggijbm1tvusqipp82gsi227ekvgveu6p.apps.googleusercontent.com',
    iosBundleId: 'com.example.cmcStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB8fN2PAUNBXRnQHR_fIAHE2PgAyNhTcKE',
    appId: '1:786194958283:ios:4e1d63b38a68eafab2984e',
    messagingSenderId: '786194958283',
    projectId: 'cmcfoood',
    storageBucket: 'cmcfoood.firebasestorage.app',
    androidClientId: '786194958283-k0rk5tuess2hja4kp3dqjvdbn3j3c5ph.apps.googleusercontent.com',
    iosClientId: '786194958283-ggijbm1tvusqipp82gsi227ekvgveu6p.apps.googleusercontent.com',
    iosBundleId: 'com.example.cmcStore',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBNkj2MLuNLla8gQ9SZwxT0UG1WBbjkdp4',
    appId: '1:786194958283:web:79525f7a8e9a34a1b2984e',
    messagingSenderId: '786194958283',
    projectId: 'cmcfoood',
    authDomain: 'cmcfoood.firebaseapp.com',
    storageBucket: 'cmcfoood.firebasestorage.app',
    measurementId: 'G-YYS71HSVWQ',
  );

}