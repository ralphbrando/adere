import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC_ey3sfNwJmpcmmLR7N7R2EbybpUaMH4k",
            authDomain: "coaching-3uxtx0.firebaseapp.com",
            projectId: "coaching-3uxtx0",
            storageBucket: "coaching-3uxtx0.appspot.com",
            messagingSenderId: "352780324648",
            appId: "1:352780324648:web:323825fb0a1b9183bd8a1d"));
  } else {
    await Firebase.initializeApp();
  }
}
