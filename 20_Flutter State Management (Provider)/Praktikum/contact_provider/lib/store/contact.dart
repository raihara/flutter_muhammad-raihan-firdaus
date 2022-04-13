import 'package:contact_provider/models/contact_model.dart';
import 'package:flutter/material.dart';

class Contacts with ChangeNotifier {
  final List<ContactModeling> _contacts = [];
  List<ContactModeling> get listcontacts => _contacts;

  void add(ContactModeling contact){
    _contacts.add(contact);
    notifyListeners();
  }
}