import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth {
  //! sign in method
  signInWithEMailAndPassword(context,
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  signUpWithEmailAndPassword(context,
      {required String email,
      required String password,
      required String name}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => {
                FirebaseFirestore.instance
                    .collection('users')
                    .add({'username': name})
              });
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }
}
