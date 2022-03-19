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
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZxLgawuQAc8M-ndsrwyxDo2fW-WsrPA-kKA&usqp=CAU"),
                //backgroundColor: Colors.lightBlue,
                child: Text(
                  "M",
                  style: Tema.kataHeading5.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.indigo,
                image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtGZiWleybWwyRGeu0JJ4kDMplYCSm_p9nXQ&usqp=CAU"),
                  fit: BoxFit.cover),
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
              height: 7,
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        title: Text(
          "Telegram",
          style: Tema.kataHeading5.copyWith(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton (
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: dataChat.map((e) {
            return _chatSection(e);
          }).toList(),
        ),
      ),
    );
  }
  Widget _chatSection(ChatData data) {
    return Container(
      height: 80,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: Tema.defaultMargin),
      margin: const EdgeInsets.only(top: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius : BorderRadius.circular(1100),
            child: Image.network(
              data.gambar.toString(),
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.nama.toString(),
                style: Tema.quote.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                data.obrolan.toString(),
                style: Tema.quote.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                data.read!
                ? Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 15,
                )
                : SizedBox.shrink(),
                Text(
                  data.time.toString(),
                  style: Tema.quote.copyWith(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            ),
          data.jumlahChat != null
          ? Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                data.jumlahChat.toString(),
                style: Tema.quote.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
          : const SizedBox.shrink(),
          ],
        )
        ],
      ),
    );
  }
}