import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Badge Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Badge Demo"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: expandChip()),
              Center(child: expandBadge()),
          ],
        ),
      ),
    );
  }
}
Widget expandChip(){
  return  Chip(
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.deepPurple,
      label: Text('BADGE', style: TextStyle(color: Colors.white)),
    );
}

Widget expandBadge(){
  return Badge(
      toAnimate: false,
      shape: BadgeShape.square,
      badgeColor: Colors.deepPurple,
      borderRadius: BorderRadius.circular(8),
      badgeContent: Text('BADGE', style: TextStyle(color: Colors.white)),
    );
}