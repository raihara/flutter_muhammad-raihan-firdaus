part of 'contact_status_bloc.dart';

abstract class ContactsStatusEvent extends Equatable {
  const ContactsStatusEvent();

  @override
  List<Object> get props => [];
}

class UpdateContactsStatus extends ContactsStatusEvent {
  final List<Contact> contacts;

  const UpdateContactsStatus({this.contacts = const <Contact>[]});

  @override
  List<Object> get props => [contacts];
}