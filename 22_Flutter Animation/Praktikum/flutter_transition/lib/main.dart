import 'package:flutter/material.dart';
import 'package:flutter_transition/animated_picture/animated_home.dart';
import 'package:flutter_transition/contact_home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Contact Transition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimatedPicture(),
    );
  }
}
