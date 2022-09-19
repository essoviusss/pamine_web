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
    apiKey: 'AIzaSyCKjciWedU2oZbQAChDMueoIA2dpr8RMho',
    appId: '1:227308749344:web:b601566b2337dbe4853245',
    messagingSenderId: '227308749344',
    projectId: 'pamineproject101',
    authDomain: 'pamineproject101.firebaseapp.com',
    databaseURL: 'https://pamineproject101-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pamineproject101.appspot.com',
    measurementId: 'G-1TTDZKEQGP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDnNuK3lQLKvKftb91VROyn0oueSdhcGTw',
    appId: '1:227308749344:android:c4c234ce57b12828853245',
    messagingSenderId: '227308749344',
    projectId: 'pamineproject101',
    databaseURL: 'https://pamineproject101-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pamineproject101.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDc03DxQL-FiuoKWfnk8HBqOgrw9zqXWDk',
    appId: '1:227308749344:ios:b0193ec073302b00853245',
    messagingSenderId: '227308749344',
    projectId: 'pamineproject101',
    databaseURL: 'https://pamineproject101-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pamineproject101.appspot.com',
    androidClientId: '227308749344-1goaf9dl58p4vf0r663r134urucifttu.apps.googleusercontent.com',
    iosClientId: '227308749344-94i6jfeautucnkpqkv1d70tj3gmppgi0.apps.googleusercontent.com',
    iosBundleId: 'com.example.pamineWeb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDc03DxQL-FiuoKWfnk8HBqOgrw9zqXWDk',
    appId: '1:227308749344:ios:b0193ec073302b00853245',
    messagingSenderId: '227308749344',
    projectId: 'pamineproject101',
    databaseURL: 'https://pamineproject101-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'pamineproject101.appspot.com',
    androidClientId: '227308749344-1goaf9dl58p4vf0r663r134urucifttu.apps.googleusercontent.com',
    iosClientId: '227308749344-94i6jfeautucnkpqkv1d70tj3gmppgi0.apps.googleusercontent.com',
    iosBundleId: 'com.example.pamineWeb',
  );
}
