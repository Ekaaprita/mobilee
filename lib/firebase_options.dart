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
    apiKey: 'AIzaSyDrW2wjrhzv7q7LQE5I_Yjzwo0kCV_6zhU',
    appId: '1:488371217702:web:2d52ccbd91eae6c87ccde7',
    messagingSenderId: '488371217702',
    projectId: 'mobilekl-5fcee',
    authDomain: 'mobilekl-5fcee.firebaseapp.com',
    storageBucket: 'mobilekl-5fcee.appspot.com',
    measurementId: 'G-SFYK4M854M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCc2M6EJIcdvJHxJ2GQHbBLEpAzbKT1ynA',
    appId: '1:488371217702:android:7e330858e97353677ccde7',
    messagingSenderId: '488371217702',
    projectId: 'mobilekl-5fcee',
    storageBucket: 'mobilekl-5fcee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCCt_Zkg4yON5PftDRVvszp3zHc69iQIN8',
    appId: '1:488371217702:ios:2d9abc463bbb40657ccde7',
    messagingSenderId: '488371217702',
    projectId: 'mobilekl-5fcee',
    storageBucket: 'mobilekl-5fcee.appspot.com',
    iosBundleId: 'com.example.mobilekelomp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCCt_Zkg4yON5PftDRVvszp3zHc69iQIN8',
    appId: '1:488371217702:ios:8012dd913982f5a47ccde7',
    messagingSenderId: '488371217702',
    projectId: 'mobilekl-5fcee',
    storageBucket: 'mobilekl-5fcee.appspot.com',
    iosBundleId: 'com.example.mobilekelomp.RunnerTests',
  );
}
