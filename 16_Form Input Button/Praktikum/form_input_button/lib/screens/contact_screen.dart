import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:form_input_button/screens/contact_list_screen.dart';
import 'package:form_input_button/models/contact_manager.dart';

import 'contact_default_screen.dart';
import './contact_item_screen.dart';



class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),

      // TODO 9: Buat Floating Action Button dan Navigasi ke task item screen
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<TaskManager>(context, listen: false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskItemScreen(
                onCreate: (task) {
                  manager.addTask(task);
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      ),
      // TODO 7: Add buildTaskScreen
      body: buildTaskScreen(),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<TaskManager>(
      builder: (context, manager, child) {
        if (manager.taskModels.isNotEmpty) {
          return TaskListScreen(
            manager: manager,
          );
        } else {
          return EmptyTaskScreen();
        }
      },
    );
  }
}