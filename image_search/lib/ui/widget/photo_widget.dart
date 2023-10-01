import 'package:flutter/material.dart';
import 'package:image_search/model/Photo.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(photo.previewUrl),
        ),
      ),
    );
  }
}
