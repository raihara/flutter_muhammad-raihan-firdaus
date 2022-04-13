import 'package:contact_provider/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contact_provider/store/contact.dart' as contact_stora;
import 'package:contact_provider/screens/add_contact.dart';

class ListContact extends StatefulWidget {
  const ListContact({Key? key}) : super(key: key);

  @override
  State<ListContact> createState() => _ListContactState();
}

class _ListContactState extends State<ListContact> {
  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_stora.Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person_add),
        onPressed: () {
          final manager =
              Provider.of<contact_stora.Contacts>(context, listen: false);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AddContact(),
            ),
          );
        },
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  contactProvider.listcontacts[index].name[0],
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                contactProvider.listcontacts[index].name,
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
              subtitle: Text(contactProvider.listcontacts[index].phone),
            );
          },
          separatorBuilder: (ctx, idx) => (Divider(
                indent: 50,
                color: Colors.grey,
                height: 0,
                thickness: 1,
              )),
          itemCount: contactProvider.listcontacts.length),
    );
  }
}
