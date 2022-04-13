import 'package:contact_provider/home.dart';
import 'package:contact_provider/screens/add_contact.dart';
import 'package:contact_provider/screens/list_contact.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contact_provider/store/contact.dart' as contact_storage;

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => contact_storage.Contacts(),
    ),
  ],
  child: const MyApp(),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact Provider',
      home: HomePage(),
    );
  }
}