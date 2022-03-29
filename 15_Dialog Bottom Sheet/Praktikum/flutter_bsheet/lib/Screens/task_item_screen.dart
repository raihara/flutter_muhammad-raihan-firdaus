import 'package:flutter/material.dart';
import 'package:flutter_bsheet/models/task_model.dart';

class TaskItemScreen extends StatefulWidget {
  final Function(TaskModel) onCreate;
  const TaskItemScreen({ Key? key, required this.onCreate }) : super(key: key);

  @override
  State<TaskItemScreen> createState() => _TaskItemScreenState();
}

class _TaskItemScreenState extends State<TaskItemScreen> {

  final _taskNameController = TextEditingController();
  String _taskName = '';
  @override
  void initState() {
    _taskNameController.addListener(() {
      setState(() {
        _taskName = _taskNameController.text;
      });
    });
    super.initState();
  }
  @override
  void dispose() {
    _taskNameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text('Create Task'),),
      body:  Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            //buildTaskname field
            buildNameField(),
            //buidbutton
          ],
        ),
      ),
    );
  }
  Widget buildNameField(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Task title'),
        TextField(
          controller: _taskNameController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText: 'E.g study',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
        ),
      ],
    );
  }
}