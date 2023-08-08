import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Card(
        //웹에서 이미지 랜덤으로 얻어 옴
        child: Image.network(
          'https://source.unsplash.com/random?sig-$index/',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
