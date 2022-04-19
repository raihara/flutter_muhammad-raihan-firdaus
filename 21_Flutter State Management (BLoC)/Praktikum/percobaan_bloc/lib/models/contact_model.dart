import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  final String name;
  final String phone;
  bool? isCompleted;
  bool? isCancelled;

  Contact({
    required this.name,
    required this.phone,
    this.isCompleted,
    this.isCancelled,
  }) {
    isCompleted = isCompleted ?? false;
    isCancelled = isCancelled ?? false;
  }

  Contact copyWith({
    String? name,
    String? phone,
    bool? isCompleted,
    bool? isCancelled,
  }) {
    return Contact(
      name: name ?? this.name,
      phone: phone ?? this.phone,
      isCompleted: isCompleted ?? this.isCompleted,
      isCancelled: isCancelled ?? this.isCancelled,
    );
  }

  @override
  List<Object?> get props => [
        name,
        phone,
        isCompleted,
        isCancelled,
      ];
}