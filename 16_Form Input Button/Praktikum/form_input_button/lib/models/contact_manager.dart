import 'package:flutter/cupertino.dart';
import 'package:form_input_button/models/contact_model.dart';

class TaskManager extends ChangeNotifier {
  final _taskModels = [
    TaskModel(name: 'Raihan', phone: '083462339348'),
    TaskModel(name: 'Firdaus', phone: '083462339348'),
    TaskModel(name: 'Agung', phone: '083462339348'),
    TaskModel(name: 'Ahmad', phone: '083462339348'),
    TaskModel(name: 'Syafiq', phone: '083462339348'),
    TaskModel(name: 'Mikazuki', phone: '083462339348'),
    TaskModel(name: 'Shell', phone: '083462339348'),
  ];
  List<TaskModel> get taskModels => List.unmodifiable(_taskModels);

  void deleteTask(int index) {
    _taskModels.removeAt(index);
    notifyListeners();
  }

  void addTask(TaskModel task) {
    _taskModels.add(task);
    notifyListeners();
  }
}