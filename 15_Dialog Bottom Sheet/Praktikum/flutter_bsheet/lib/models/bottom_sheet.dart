import 'package:flutter/material.dart';

class Bsheet extends StatelessWidget {
  const Bsheet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
            ),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlue,
            ),
          ),
          SizedBox(height: 10,),
          Text('Image'),
        ],
      ),
    );
  }
}