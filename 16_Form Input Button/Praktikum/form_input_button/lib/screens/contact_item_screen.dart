import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:form_input_button/models/contact_model.dart';

class TaskItemScreen extends StatefulWidget {
  final Function(TaskModel) onCreate;
  const TaskItemScreen({
    Key? key,
    required this.onCreate,
  }) : super(key: key);

  @override
  _TaskItemScreenState createState() => _TaskItemScreenState();
}

class _TaskItemScreenState extends State<TaskItemScreen> {
  // TODO 10: add state properti, initState, dan dispose
  final _taskNameController = TextEditingController();
  final _taskPhoneController = TextEditingController();
  
  String name = '';
  String phone = '';

  @override
  void initState() {
    super.initState();
    _taskNameController.addListener(() {
      setState(() {
        name = _taskNameController.text;
      });
    });
    _taskPhoneController.addListener(() {
      setState(() {
        phone = _taskPhoneController.text;
      });
    });
  }

  @override
  void dispose() {
    _taskNameController.dispose();
    _taskPhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // buildTaskNameField
            // TODO 11: buat name field
            buildNameField(),
            const SizedBox(
              height: 16,
            ),
            buildPhoneField(),
            const SizedBox(
              height: 16,
            ),
            // buildButton
            // TODO 12: buat button
            buildButton(),
          ],
        ),
      ),
    );
  }

  Widget buildNameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Name'),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _taskNameController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText: 'Masukkan nama lengkap',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
  Widget buildPhoneField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Phone'),
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _taskPhoneController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            hintText: 'Masukkan no.phone',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildButton() {
    return ElevatedButton(
      child: const Text('Submit'),
      onPressed: () {
        // TODO 14: add callback handler
        // TODO 15: add package uuid
        final taskItem = TaskModel(
          name: _taskNameController.text,
          phone: _taskPhoneController.text,
        );
        widget.onCreate(taskItem);
      },
    );
  }
}