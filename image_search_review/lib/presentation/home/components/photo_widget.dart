import 'package:flutter/material.dart';

import '../../../domain/model/photo.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({super.key, required this.photo});
  final Photo photo;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(photo.previewURL),
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
