import 'package:flutter/material.dart';
import 'package:flutter_navigation/models/contact_model.dart';

class NewContact extends StatefulWidget {
  // final Function(ContactModel) onCreate;
  const NewContact({ 
    Key? key,
    // required this.onCreate,
  }) : super(key: key);

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  final _contactNameController = TextEditingController();
  final _contactPhoneController = TextEditingController();

  String name = '';
  String phone = '';

  @override
  void initState() {
    super.initState();
    _contactNameController.addListener(() {
      setState(() {
        name = _contactNameController.text;
      });
    });
    _contactPhoneController.addListener(() {
      setState(() {
        phone = _contactPhoneController.text;
      });
    });
  }
  
  @override
  void dispose() {
    _contactNameController.dispose();
    _contactPhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Contact'),
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
          controller: _contactNameController,
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
          controller: _contactPhoneController,
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
        final contactItem = ContactModel(
          name: _contactNameController.text,
          phone: _contactPhoneController.text,
        );
      },
    );
  }
}