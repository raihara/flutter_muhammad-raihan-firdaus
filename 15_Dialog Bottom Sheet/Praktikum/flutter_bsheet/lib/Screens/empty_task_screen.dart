import 'package:flutter/material.dart';
import 'package:flutter_bsheet/models/image_bsheets.dart';
import 'package:flutter_bsheet/models/bottom_sheet.dart';

class EmptyTaskScreen extends StatelessWidget {
  const EmptyTaskScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        TextButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              builder: (context) => Bsheet()
            );
          },
          child: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
        ),
        TextButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              builder: (context) => ImageBsheet()
            );
          },
          child: Image.network('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/10/475327981.jpg'),
        ),
        TextButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              builder: (context) => Bsheet()
            );
          },
          child: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
        ),
        TextButton(
          onPressed: (){
            showModalBottomSheet(
              context: context,
              builder: (context) => ImageBsheet()
            );
          },
          child: Image.network('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/10/475327981.jpg'),
        ),
      ],
    );
  }
}