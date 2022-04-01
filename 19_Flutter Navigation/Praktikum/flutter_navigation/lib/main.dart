import 'package:flutter/material.dart';
import 'package:flutter_navigation/screens/Create_new_contact.dart';
import 'package:flutter_navigation/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Navigaton with NamedRoutes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const MyHomePage(),
        '/new': (_) => const NewContact()
      },
      // home: const MyHomePage(),
    );
  }
}