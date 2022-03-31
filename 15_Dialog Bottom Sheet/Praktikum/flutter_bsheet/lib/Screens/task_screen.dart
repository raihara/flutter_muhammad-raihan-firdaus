import 'package:flutter/material.dart';
import 'package:flutter_bsheet/Screens/empty_task_screen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galery View Bottom Sheets'),
      ),
      body: EmptyTaskScreen(),
    );
  }
}