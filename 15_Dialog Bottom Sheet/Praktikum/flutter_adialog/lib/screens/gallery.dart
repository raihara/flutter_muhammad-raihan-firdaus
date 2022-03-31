import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 40,
      crossAxisCount: 2,
      children: [
        TextButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back'),
                    ),
                  ],
                ),
            );
          },
          child: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
        ),
        TextButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back'),
                    ),
                  ],
                ),
            );
          },
          child: Image.network('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/10/475327981.jpg'),
        ),
        TextButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back'),
                    ),
                  ],
                ),
            );
          },
          child: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
        ),
        TextButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back'),
                    ),
                  ],
                ),
            );
          },
          child: Image.network('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/10/475327981.jpg'),
        ),
        TextButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back'),
                    ),
                  ],
                ),
            );
          },
          child: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
        ),
        TextButton(
          onPressed: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  content: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Back'),
                    ),
                  ],
                ),
            );
          },
          child: Image.network('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/10/475327981.jpg'),
        ),
        // TextButton(
        //   onPressed: (){
        //     showModalBottomSheet(
        //       context: context,
        //       builder: (context) => ImageBsheet()
        //     );
        //   },
        //   child: Image.network('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/10/475327981.jpg'),
        // ),
        // TextButton(
        //   onPressed: (){
        //     showModalBottomSheet(
        //       context: context,
        //       builder: (context) => Bsheet()
        //     );
        //   },
        //   child: Image.network('https://static.republika.co.id/uploads/member/images/news/e75hblx2mk.jpg'),
        // ),
        // TextButton(
        //   onPressed: (){
        //     showModalBottomSheet(
        //       context: context,
        //       builder: (context) => ImageBsheet()
        //     );
        //   },
        //   child: Image.network('https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/10/475327981.jpg'),
        // ),
      ],
    );
  }
}