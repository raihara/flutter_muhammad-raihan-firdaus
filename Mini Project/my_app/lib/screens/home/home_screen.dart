import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_app/constant/color.dart';
import 'package:my_app/screens/account/signin_screen.dart';
import 'package:my_app/screens/home/widget/category.dart';

import 'widget/Header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Column(
            children: [const Header(),SizedBox(height: 25,), Category()],
          )
        ],
      )),
    );
  }
}
