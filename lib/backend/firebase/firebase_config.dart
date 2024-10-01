import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCjowg3EQTyDArTnuOONeJD6ChdQjMigKc",
            authDomain: "temp-conversion-nzzy7r.firebaseapp.com",
            projectId: "temp-conversion-nzzy7r",
            storageBucket: "temp-conversion-nzzy7r.appspot.com",
            messagingSenderId: "1029200747292",
            appId: "1:1029200747292:web:3b863b405d9ba3d24c78d9"));
  } else {
    await Firebase.initializeApp();
  }
}
