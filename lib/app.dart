// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:group_project/create_profile.dart';
=======
>>>>>>> 51f415b8326ee78b2277db5d30cfc96532e64f85
import 'package:group_project/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
        debugShowCheckedModeBanner: false, home: CreateProfile());
=======
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
>>>>>>> 51f415b8326ee78b2277db5d30cfc96532e64f85
  }
}
