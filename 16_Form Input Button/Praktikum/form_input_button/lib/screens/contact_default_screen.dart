import 'package:flutter/material.dart';
import 'package:form_input_button/models/contact_model.dart';

class EmptyTaskScreen extends StatelessWidget {
  EmptyTaskScreen({Key? key}) : super(key: key);

  List<TaskModel> mycontacts = [
    TaskModel(name: 'Raihan', phone: '083462339348'),
    TaskModel(name: 'Firdaus', phone: '083462339348'),
    TaskModel(name: 'Agung', phone: '083462339348'),
    TaskModel(name: 'Ahmad', phone: '083462339348'),
    TaskModel(name: 'Syafiq', phone: '083462339348'),
    TaskModel(name: 'Mikazuki', phone: '083462339348'),
    TaskModel(name: 'Shell', phone: '083462339348'),
  ];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mycontacts.length,
          itemBuilder: (context, index) {
            var tempContact = mycontacts[index];
            return GestureDetector(
              onTap: (){},
              child: Card(
              child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(tempContact.name[0],
                style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(tempContact.name),
              subtitle: Text(tempContact.phone),
              ),
            ),
            );
          },
        );
  }
}