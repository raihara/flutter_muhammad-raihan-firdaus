import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '/models/models.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc() : super(ContactsLoading()) {
    on<LoadContacts>(_onLoadContacts);
    on<AddContacts>(_onAddContacts);
    on<DeleteContacts>(_onDeleteContacts);
    on<UpdateContacts>(_onUpdateContacts);
  }
  void _onLoadContacts(
    LoadContacts event,
    Emitter<ContactsState> emit,
  ) {
    emit(ContactsLoaded(contacts: event.contacts));
  }

  void _onAddContacts(
    AddContacts event,
    Emitter<ContactsState> emit,
  ) {
    final state = this.state;
    if (state is ContactsLoaded) {
      emit(
        ContactsLoaded(
          contacts: List.from(state.contacts)..add(event.contacts),
        ),
      );
    }
  }

  void _onDeleteContacts(
    DeleteContacts event,
    Emitter<ContactsState> emit,
  ) {
    final state = this.state;
    if (state is ContactsLoaded) {
      List<Contact> contacts = (state.contacts.where((contact) {
        return contact.name != event.contact.name;
      })).toList();

      emit(ContactsLoaded(contacts: contacts));
    }
  }

  void _onUpdateContacts(
    UpdateContacts event,
    Emitter<ContactsState> emit,
  ) {
    final state = this.state;
    if (state is ContactsLoaded) {
      List<Contact> contacts = (state.contacts.map((contact) {
        return contact.name == event.contacts.name ? event.contacts : contact;
      })).toList();

      emit(ContactsLoaded(contacts: contacts));
    }
  }
}