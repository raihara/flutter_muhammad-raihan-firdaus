import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:contact_provider/models/contact_model.dart';
import 'package:contact_provider/screens/list_contact.dart';
import 'package:contact_provider/store/contact.dart' as contact_stora;

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  var _formKey = GlobalKey<FormState>();
  var _nameController = TextEditingController();
  var _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<contact_stora.Contacts>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact'),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Tidak ada kontak';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                      hintText: 'Marco'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _phoneController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Tidak boleh kosong';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      icon: Icon(Icons.phone_android_rounded),
                      border: OutlineInputBorder(),
                      labelText: 'Phone Number',
                      hintText: '08xxxxxxx'),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) return;
                    _formKey.currentState!.save();
                    contactProvider.add(
                      ContactModeling(
                          name: _nameController.text,
                          phone: _phoneController.text),
                    );
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListContact()),
                        (route) => false);
                    // }
                  },
                  child: const Text('Simpan'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
