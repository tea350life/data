import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOPOXRfk0x7LuYPWjMjaeBMlwlgPh9pfQ",
            authDomain: "motiv8-4cf70.firebaseapp.com",
            projectId: "motiv8-4cf70",
            storageBucket: "motiv8-4cf70.appspot.com",
            messagingSenderId: "132511650692",
            appId: "1:132511650692:web:93e8bff91a1bfd61ec43d1",
            measurementId: "G-7NQ99LQ220"));
  } else {
    await Firebase.initializeApp();
  }
}
