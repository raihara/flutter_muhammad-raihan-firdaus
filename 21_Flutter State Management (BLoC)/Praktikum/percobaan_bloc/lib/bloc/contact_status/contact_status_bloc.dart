import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:percobaan_bloc/bloc/contact/contact_bloc.dart';
import 'package:percobaan_bloc/models/models.dart';

part 'contact_status_event.dart';
part 'contact_status_state.dart';

class ContactsStatusBloc extends Bloc<ContactsStatusEvent, ContactsStatusState> {
  final ContactsBloc _contactsBloc;
  late StreamSubscription _contactsSubcription;

  ContactsStatusBloc({required ContactsBloc contactsBloc})
      : _contactsBloc = contactsBloc,
        super(ContactsStatusLoading()) {
    on<UpdateContactsStatus>(_onUpdateContactsStatus);

    _contactsSubcription = _contactsBloc.stream.listen((state) {
      if (state is ContactsLoaded) {
        add(
          UpdateContactsStatus(contacts: state.contacts),
        );
      }
    });
  }

  void _onUpdateContactsStatus(
    UpdateContactsStatus event,
    Emitter<ContactsStatusState> emit,
  ) {
    List<Contact> pendingContacts = event.contacts
        .where((contact) => contact.isCancelled == false && contact.isCompleted == false)
        .toList();
    List<Contact> completedContacts = event.contacts
        .where((contact) => contact.isCompleted == true && contact.isCancelled == false)
        .toList();
    List<Contact> cancelledContacts =
        event.contacts.where((todo) => todo.isCancelled == false).toList();

    emit(
      ContactsStatusLoaded(
        pendingContacts: pendingContacts,
        completedContacts: completedContacts,
        cancelledContacts: cancelledContacts,
      ),
    );
  }

  @override
  Future<void> close() {
    _contactsSubcription.cancel();
    return super.close();
  }
}