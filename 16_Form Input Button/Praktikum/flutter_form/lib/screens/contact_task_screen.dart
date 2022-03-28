import 'package:flutter/material.dart';
import 'package:task_management_2/models/data_contact.dart';
import 'package:task_management_2/models/contact_model.dart';

// TODO 3: buat empty screen
class EmptyTaskScreen extends StatelessWidget {
  EmptyTaskScreen({Key? key}) : super(key: key);
  
  List<DataContact> _mycontacts = [
    DataContact('Raihan', '083462339348'),
    DataContact('Firdaus', '083462339348'),
    DataContact('Agung', '083462339348'),
    DataContact('Ahmad', '083462339348'),
    DataContact('Syafiq', '083462339348'),
    DataContact('Mikazuki', '083462339348'),
    DataContact('Orga', '083462339348'),
    DataContact('Olive', '083462339348'),
    DataContact('Miu', '083462339348'),
    DataContact('Zerban', '083462339348'),
    DataContact('Kanako', '083462339348'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemBuilder: (context, index) {
            final tempContact = _mycontacts[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(tempContact.name[0],
                style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(tempContact.name),
              subtitle: Text(tempContact.phone),
            );
          },
        );
  }
}
