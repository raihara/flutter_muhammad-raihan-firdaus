import 'package:flutter/material.dart';
import 'package:test_andro/theme.dart';
import 'package:test_andro/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Muhammad Raihan Firdaus",
                style: Tema.kataHeading5.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                "+62 88971788275",
                style: Tema.kataHeading6.copyWith(
                  color: Colors.white,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text(
                  "M",
                  style: Tema.kataHeading5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              ),
            ListTile (
              leading: Icon(Icons.people),
              title: Text("New Group"),
            ),
            ListTile (
              leading: Icon(Icons.lock),
              title: Text("New Secret Chat"),
            ),
            ListTile (
              leading: Icon(Icons.campaign),
              title: Text("New Channel"),
            ),
            Divider(
              height: 4,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            ListTile (
              leading: Icon(Icons.contacts),
              title: Text("Contacts"),
            ),
            ListTile (
              leading: Icon(Icons.person_add),
              title: Text("Invite Friend"),
            ),
            ListTile (
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile (
              leading: Icon(Icons.help),
              title: Text("Telegram FAQ"),
            ),
          ],
        ),
      ),
    );
  }
}