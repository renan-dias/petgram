import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAhidtLrRThEnrS4A-mIgZHOyZ-xG5xKKc",
            authDomain: "petgram-84df7.firebaseapp.com",
            projectId: "petgram-84df7",
            storageBucket: "petgram-84df7.appspot.com",
            messagingSenderId: "323830279225",
            appId: "1:323830279225:web:898da29cafaf79c20471e8",
            measurementId: "G-Y9J4TZFSEE"));
  } else {
    await Firebase.initializeApp();
  }
}
