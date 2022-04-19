part of 'contact_bloc.dart';

abstract class ContactsEvent extends Equatable {
  const ContactsEvent();

  @override
  List<Object> get props => [];
}

class LoadContacts extends ContactsEvent {
  final List<Contact> contacts;

  const LoadContacts({
    this.contacts = const <Contact>[],
  });

  @override
  List<Object> get props => [contacts];
}

class AddContacts extends ContactsEvent {
  final Contact contacts;

  const AddContacts({
    required this.contacts,
  });

  @override
  List<Object> get props => [contacts];
}

class UpdateContacts extends ContactsEvent {
  final Contact contacts;

  const UpdateContacts({
    required this.contacts,
  });

  @override
  List<Object> get props => [contacts];
}

class DeleteContacts extends ContactsEvent {
  final Contact contact;

  const DeleteContacts({
    required this.contact,
  });

  @override
  List<Object> get props => [contact];
}