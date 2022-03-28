import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management_2/models/contact_manager.dart';
import 'package:task_management_2/screens/contact_list_screen.dart';

import 'contact_task_screen.dart';
import 'contact_item_screen.dart';

// TODO 2: Membuat Task Screen
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
