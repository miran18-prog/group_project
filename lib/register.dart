import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: const Text(
              "Register",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: "Password"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: SizedBox(
              width: 175,
              child: ElevatedButton(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: () {},
              ),
            ),
          )
        ]),
      ),
    );
  }
}
