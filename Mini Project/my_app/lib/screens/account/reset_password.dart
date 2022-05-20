import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/screens/home/home_screen.dart';

import '../../reusable_widget/reusable.widget.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController _emailController = TextEditingController();

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
                accountButton(context, "Reset Password", () {
                  FirebaseAuth.instance
                      .sendPasswordResetEmail(email: _emailController.text)
                      .then((value) => Navigator.of(context).pop());
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
