import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('GridView'),
        ),
      body: GridViewWidget(),
      ),
      );
  }
}
class GridViewWidget extends StatelessWidget {
  const GridViewWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      padding: EdgeInsets.zero,
      mainAxisSpacing: 20,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pets_rounded,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pregnant_woman,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.person,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.photo_size_select_small,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pets_rounded,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pregnant_woman,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.g_translate,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.photo_size_select_small,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pets_rounded,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pregnant_woman,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.person,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.photo_size_select_small,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pets_rounded,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pregnant_woman,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.person,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.photo_size_select_small,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pets_rounded,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pregnant_woman,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.person,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.photo_size_select_small,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pets_rounded,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.pregnant_woman,
            size: 30,
            color: Colors.white,),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.person,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey[50],
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000),
            color: Colors.blue,
            ),
            child: Icon(Icons.photo_size_select_small,
            size: 30,
            color: Colors.white
            ),
          ),
        ),
      ],
    );
  }
}
