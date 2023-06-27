import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thapar_eats/Screens/home_page.dart';
import 'package:thapar_eats/firebase_options.dart';

import 'Screens/first_page.dart';

void main() {
  runApp(MyApp());
  initFirebase();
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
