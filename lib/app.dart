import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
<<<<<<< HEAD
import 'package:group_project/SignIn.dart';
=======
import 'package:group_project/register.dart';
>>>>>>> 229d07a8d57af2c4e6f1aa8091fc9e85a7dce847

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
=======
    return MaterialApp(debugShowCheckedModeBanner: false, home: Register());
>>>>>>> 229d07a8d57af2c4e6f1aa8091fc9e85a7dce847
  }
}
