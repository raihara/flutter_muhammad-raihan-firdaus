import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/models/models.dart';
import '/bloc/blocs.dart';

class AddTodoScreen extends StatelessWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerName = TextEditingController();
    TextEditingController controllerPhone = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('New Contact'),
      ),
      body: BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, state) {
          if (state is ContactsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ContactsLoaded) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // _inputField('ID', controllerName),
                    // _inputField('Task', controllerPhone),
                    // _inputField('Description', controllerDescription),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        controller: controllerName,
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
                        controller: controllerPhone,
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
                    ElevatedButton.icon(
                      onPressed: () {
                        var contact = Contact(
                          name: controllerName.value.text,
                          phone: controllerPhone.value.text,
                        );
                        context.read<ContactsBloc>().add(AddContacts(contacts: contact));
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                      label: const Text('Simpan'),
                      icon: const Icon(Icons.save),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Text('Something went wrong.');
          }
        },
      ),
    );
  }
}
