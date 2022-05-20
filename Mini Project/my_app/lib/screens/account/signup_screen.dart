import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/home/home_screen.dart';

import '../../reusable_widget/reusable.widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 225, 210, 27),
              Color.fromARGB(255, 200, 139, 25),
              Color.fromARGB(255, 139, 69, 11)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(18, 100, 18, 0),
            child: Column(
              children: <Widget>[
                reusableTextField(
                  "Enter Username",
                  Icons.person_outline_rounded,
                  false,
                  _userNameController,
                ),
                SizedBox(
                  height: 15,
                ),
                reusableTextField(
                  "Enter Email Address",
                  Icons.email_outlined,
                  false,
                  _emailController,
                ),
                SizedBox(
                  height: 15,
                ),
                reusableTextField(
                  "Enter Password",
                  Icons.lock_outline_rounded,
                  true,
                  _passwordController,
                ),
                SizedBox(
                  height: 15,
                ),
                accountButton(context, "Sign Up", () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _passwordController.text)
                      .then((value) {
                    print("Created New Account");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
