import 'package:flutter/material.dart';
import 'package:form_input_button/models/contact_model.dart';

class TaskItemCard extends StatelessWidget {
  final TaskModel task;
  // TODO 18: Membuat properti onpPressed
  final Function() onPressed;

  const TaskItemCard({
    Key? key,
    required this.task,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(task.name,
              style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.w700),
              ),
              Text(task.phone)
            ],
          ),
          SizedBox(width: 250,),
          IconButton(
            // TODO 17: Membuat dialog
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: const Text('Are you sure?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('NO'),
                    ),
                    TextButton(
                      onPressed: onPressed,
                      child: const Text('YES'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.delete_forever_rounded),
          ),
        ],
      ),
    );
  }
}