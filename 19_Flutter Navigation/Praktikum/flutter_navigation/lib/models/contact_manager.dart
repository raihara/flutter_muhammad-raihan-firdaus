import 'package:flutter_navigation/models/contact_model.dart';
import 'package:flutter/cupertino.dart';

class MyContact extends ChangeNotifier {
  final _cModels = [
    ContactModel(name: 'Raihan', phone: '083462339348'),
    ContactModel(name: 'Firdaus', phone: '083462339348'),
    ContactModel(name: 'Agung', phone: '083462339348'),
    ContactModel(name: 'Ahmad', phone: '083462339348'),
    ContactModel(name: 'Syafiq', phone: '083462339348'),
    ContactModel(name: 'Mikazuki', phone: '083462339348'),
    ContactModel(name: 'Shell', phone: '083462339348'),
  ];
  List<ContactModel> get cModels => List.unmodifiable(_cModels);

  void deleteTask(int index) {
    _cModels.removeAt(index);
    notifyListeners();
  }

  void addTask(ContactModel task) {
    _cModels.add(task);
    notifyListeners();
  }
}