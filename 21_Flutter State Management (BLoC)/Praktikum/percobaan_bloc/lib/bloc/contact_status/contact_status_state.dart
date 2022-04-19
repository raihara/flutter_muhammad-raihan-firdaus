part of 'contact_status_bloc.dart';

abstract class ContactsStatusState extends Equatable {
  const ContactsStatusState();

  @override
  List<Object> get props => [];
}

class ContactsStatusLoading extends ContactsStatusState {}

class ContactsStatusLoaded extends ContactsStatusState {
  final List<Contact> pendingContacts;
  final List<Contact> completedContacts;
  final List<Contact> cancelledContacts;

  const ContactsStatusLoaded({
    this.pendingContacts = const <Contact>[],
    this.completedContacts = const <Contact>[],
    this.cancelledContacts = const <Contact>[],
  });

  @override
  List<Object> get props => [
        pendingContacts,
        completedContacts,
        cancelledContacts,
      ];
}