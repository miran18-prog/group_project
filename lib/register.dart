// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:group_project/SignIn.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    // Auth _auth = Auth();

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 125),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (passwordController.text !=
                          confirmPasswordController.text) {
                        return 'make sure password fields arr matching';
                      }
                      return null;
                    },
                    controller: passwordController,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      hintText: 'Confirm password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (passwordController.text !=
                          confirmPasswordController.text) {
                        return 'make sure password fields are matching';
                      }
                      return null;
                    },
                    controller: confirmPasswordController,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: 175,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // _auth.signUpWithEmailAndPassword(context,
                        //     name: usernameController.text,
                        //     email: emailController.text,
                        //     password: passwordController.text);
                      }
                    },
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                GestureDetector(
                  onTap: (() => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignInScreen()))),
                  child: RichText(
                    // ignore:
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account ?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: "Login",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
