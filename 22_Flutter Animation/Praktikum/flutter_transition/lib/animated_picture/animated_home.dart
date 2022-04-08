import 'package:flutter/material.dart';

class AnimatedPicture extends StatefulWidget {
  const AnimatedPicture({ Key? key }) : super(key: key);

  @override
  State<AnimatedPicture> createState() => _AnimatedPictureState();
}

class _AnimatedPictureState extends State<AnimatedPicture> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Picture'),
      ),
      body: Center(
        child: AnimatedContainer(
          child: TextButton(
            onPressed: (){
              setState(() {
                isBig = !isBig;
              });
            }, 
            child: Image.network('https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/04/01/3944496653.jpg'),
          ),
          height: isBig ? 500 : 200,
          width: isBig ? 500 : 200,
          duration: const Duration(milliseconds: 400)),
      ),
    );
  }
}