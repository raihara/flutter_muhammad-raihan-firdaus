import 'package:flutter/material.dart';
import 'package:flutter_transition/contact.dart';
import 'package:flutter_transition/new_contact.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person_add),
        onPressed: (){
          Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation){
              return const NewContact();
            },
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, .5), end: Offset.zero);
              return SlideTransition(position: animation.drive(tween),
              child: child,
              );
            }
            ),
          );
        },
      ),
      body: Contact(),
    );
  }
}