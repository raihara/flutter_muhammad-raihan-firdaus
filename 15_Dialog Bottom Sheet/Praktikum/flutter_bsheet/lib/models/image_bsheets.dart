import 'package:flutter/material.dart';

class ImageBsheet extends StatelessWidget {
  const ImageBsheet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/10/475327981.jpg'),
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