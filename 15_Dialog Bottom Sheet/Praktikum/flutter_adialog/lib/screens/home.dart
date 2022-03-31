import 'package:flutter/material.dart';
import 'package:flutter_adialog/screens/gallery.dart';

class MyHome extends StatelessWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galery View Alert Dialog'),
      ),
      body: GalleryView(),
    );
  }
}