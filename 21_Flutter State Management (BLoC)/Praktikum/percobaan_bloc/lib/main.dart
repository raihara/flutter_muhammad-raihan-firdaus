import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/bloc/blocs.dart';
import '/models/models.dart';
import '/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactsBloc()
            ..add(
              LoadContacts(
                contacts: [
                  Contact(
                    name: 'Raihan',
                    phone: '08961849234',
                  ),
                  Contact(
                    name: 'Firdaus',
                    phone: '08572932035',
                  ),
                ],
              ),
            ),
        ),
        BlocProvider(
          create: (context) => ContactsStatusBloc(
            contactsBloc: BlocProvider.of<ContactsBloc>(context),
          )..add(const UpdateContactsStatus()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BloC Contact',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.deepPurple,
          appBarTheme: const AppBarTheme(
            color: Colors.deepPurple,
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}