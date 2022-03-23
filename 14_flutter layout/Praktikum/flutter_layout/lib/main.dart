import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('JSON ListView in Flutter'),
        ),
      body: ListViewWidget(),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('L',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Leanne Graham",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("1-770-736-8031 x56442"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('E',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ervin Howell",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("010-692-6593 x09125"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('C',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Clementine Bauch",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("1-463-123-4447"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('P',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Patricia Lebsack",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("493-170-9623 x156"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('C',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Chelsey Dietrick",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("(254)954-1289"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('M',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mrs. Dennis Schulist",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("1-477-935-8478 x6430"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('K',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kurtis Weissnat",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("210.067.6132"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('R',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Raihan",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("Selamat Pagi"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('F',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Firdaus",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("selamat Siang"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('L',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Luthfi",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("Selamat Sore"),
              ],
            ),
            ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
              margin: EdgeInsets.zero,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 25,
                child: Text('A',
                style: TextStyle(color: Colors.white),
              ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Agus",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
                Text("Healing wae"),
              ],
            ),
            ),
            ],
          ),
        ],
      ),
    );
  }
}