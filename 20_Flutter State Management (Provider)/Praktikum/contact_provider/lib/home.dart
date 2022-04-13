import 'package:contact_provider/screens/list_contact.dart';
import 'package:contact_provider/store/contact.dart';
import 'package:flutter/material.dart';
import 'package:contact_provider/models/contact_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var lNameController = TextEditingController();
  var lPhoneController = TextEditingController();

  List<ContactLocal> _localContact = [];

  void _addContact() {
    final newContact =
        ContactLocal(lNameController.text, lPhoneController.text);

    setState(() {
      _localContact.add(newContact);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Contact'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ListContact(),
                ),
              );
            },
            icon: Icon(Icons.contacts_rounded),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: lNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
                hintText: 'Marco',
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 5,),
            TextField(
              keyboardType: TextInputType.phone,
              controller: lPhoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.phone_android_rounded),
                hintText: '08xxxxxx',
                labelText: 'Phone',
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton.icon(
              onPressed: _addContact,
              icon: Icon(
                Icons.save_alt_rounded,
              ),
              label: const Text('Simpan'),
            ),
            SizedBox(
              height: 16,
            ),
            Text('Contact List'),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final ctc = _localContact[index];
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(ctc.name[0]),
                    ),
                    title: Text(
                      ctc.name,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(ctc.phone),
                  );
                },
                separatorBuilder: (ctx, idx) => Divider(),
                itemCount: _localContact.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
