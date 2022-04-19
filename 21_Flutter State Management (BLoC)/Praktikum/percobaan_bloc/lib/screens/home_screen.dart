import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/models/models.dart';
import '/screens/screens.dart';
import '/bloc/blocs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddTodoScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: BlocBuilder<ContactsStatusBloc, ContactsStatusState>(
        builder: (context, state) {
          if (state is ContactsStatusLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ContactsStatusLoaded) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _todo(
                    state.pendingContacts,
                    'Daftar',
                  ),
                  _todo(
                    state.completedContacts,
                    'Favorite',
                  ),
                ],
              ),
            );
          } else {
            return const Text('Something went wrong.');
          }
        },
      ),
    );
  }

  Column _todo(List<Contact> todos, String status) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            children: [
              Text(
                '$status Contact: ',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: todos.length,
          itemBuilder: (BuildContext context, int index) {
            return _contactsCard(
              context,
              todos[index],
            );
          },
        ),
      ],
    );
  }

  Card _contactsCard(
    BuildContext context,
    Contact contact,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${contact.name}: ${contact.phone}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            BlocBuilder<ContactsBloc, ContactsState>(
              builder: (context, state) {
                return Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        context.read<ContactsBloc>().add(
                              UpdateContacts(
                                contacts: contact.copyWith(isCompleted: true),
                              ),
                            );
                      },
                      icon: const Icon(Icons.favorite_rounded),
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<ContactsBloc>().add(
                              DeleteContacts(
                                contact: contact.copyWith(isCancelled: true),
                              ),
                            );
                      },
                      icon: const Icon(Icons.cancel),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
