import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDLhQh59RG9QwndOxjnvKLTl-79Sns_jrI",
            authDomain: "i-speak-xf26f2.firebaseapp.com",
            projectId: "i-speak-xf26f2",
            storageBucket: "i-speak-xf26f2.firebasestorage.app",
            messagingSenderId: "381639589115",
            appId: "1:381639589115:web:09b19bea17a3c39c28c45e",
            measurementId: "G-SXRL928J9Q"));
  } else {
    await Firebase.initializeApp();
  }
}
