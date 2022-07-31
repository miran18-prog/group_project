import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:group_project/app.dart';
import 'package:group_project/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(const MyApp());
}
