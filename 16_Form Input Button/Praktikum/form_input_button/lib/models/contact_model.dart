class TaskModel {
  final String name;
  final String phone;

  TaskModel({
    required this.name,
    required this.phone,
  });

  void tambahKontak(String nPar, String numPar){
    mycontacts.add(TaskModel(name: nPar, phone: numPar));
  }

  List<TaskModel> mycontacts = [
    TaskModel(name: 'Raihan', phone: '083462339348'),
    TaskModel(name: 'Firdaus', phone: '083462339348'),
    TaskModel(name: 'Agung', phone: '083462339348'),
    TaskModel(name: 'Ahmad', phone: '083462339348'),
    TaskModel(name: 'Syafiq', phone: '083462339348'),
    TaskModel(name: 'Mikazuki', phone: '083462339348'),
    TaskModel(name: 'Shell', phone: '083462339348'),
  ];
}