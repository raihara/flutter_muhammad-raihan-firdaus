import 'package:flutter/material.dart';
import 'package:navigation_notnamed/screens/contact_screen.dart';
import 'package:navigation_notnamed/screens/create_new_contact.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: MyContact(),
      //Floating Button
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => NewContact()));
        },
      ),
    );
  }
}