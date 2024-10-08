part of 'contact_bloc.dart';

abstract class ContactsState extends Equatable {
  const ContactsState();

  @override
  List<Object> get props => [];
}

class ContactsLoading extends ContactsState {}

class ContactsLoaded extends ContactsState {
  final List<Contact> contacts;

  const ContactsLoaded({
    this.contacts = const <Contact>[],
  });

  @override
  List<Object> get props => [contacts];
}

class ContactsError extends ContactsState {}