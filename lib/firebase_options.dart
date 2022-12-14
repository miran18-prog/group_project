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
    apiKey: 'AIzaSyDTRv21e0M9hg4bJje66i40iXn39BMmdQg',
    appId: '1:750887112155:web:c5dd91400e78c78c16abfe',
    messagingSenderId: '750887112155',
    projectId: 'groupproject-aba35',
    authDomain: 'groupproject-aba35.firebaseapp.com',
    storageBucket: 'groupproject-aba35.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYykFMIfTyVQHCZISyujoeN-BjTvxu0D0',
    appId: '1:750887112155:android:6276278aa6b6e93616abfe',
    messagingSenderId: '750887112155',
    projectId: 'groupproject-aba35',
    storageBucket: 'groupproject-aba35.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDlimq581WnnjBjbRK4TFV4W2fd1cmVrtY',
    appId: '1:750887112155:ios:e6628ccf3ee18b9316abfe',
    messagingSenderId: '750887112155',
    projectId: 'groupproject-aba35',
    storageBucket: 'groupproject-aba35.appspot.com',
    iosClientId: '750887112155-dioo7a2al6fvu7b1p4fd1cnljahtfan9.apps.googleusercontent.com',
    iosBundleId: 'com.example.groupProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDlimq581WnnjBjbRK4TFV4W2fd1cmVrtY',
    appId: '1:750887112155:ios:e6628ccf3ee18b9316abfe',
    messagingSenderId: '750887112155',
    projectId: 'groupproject-aba35',
    storageBucket: 'groupproject-aba35.appspot.com',
    iosClientId: '750887112155-dioo7a2al6fvu7b1p4fd1cnljahtfan9.apps.googleusercontent.com',
    iosBundleId: 'com.example.groupProject',
  );
}
