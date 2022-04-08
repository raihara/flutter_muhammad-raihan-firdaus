import 'package:flutter/material.dart';
import 'package:flutter_transition/contact_models.dart';

class Contact extends StatelessWidget {
  Contact({ Key? key }) : super(key: key);
  
  List<ContactModel> cModels = [
    ContactModel(name: 'Raihan', phone: '083462339348'),
    ContactModel(name: 'Firdaus', phone: '083462339348'),
    ContactModel(name: 'Agung', phone: '083462339348'),
    ContactModel(name: 'Ahmad', phone: '083462339348'),
    ContactModel(name: 'Syafiq', phone: '083462339348'),
    ContactModel(name: 'Mikazuki', phone: '083462339348'),
    ContactModel(name: 'Shell', phone: '083462339348'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cModels.length,
          itemBuilder: (context, index) {
            var tempContact = cModels[index];
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