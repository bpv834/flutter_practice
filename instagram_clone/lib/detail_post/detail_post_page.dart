import 'package:flutter/material.dart';
import 'package:instagram_clone/detail_post/detail_post_model.dart';

import '../domain/post.dart';

class DetailPostPage extends StatelessWidget {
  const DetailPostPage({super.key, required this.post});

  final Post? post;

  @override
  Widget build(BuildContext context) {
    final model = DetailPostModel();

    return Scaffold(
      appBar: AppBar(
        title: Text('둘러보기'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(model.getProfileImageUrl()),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    Text(
                      model.getEmail(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(model.getNickName())
                  ],
                )
              ],
            ),
          ),
          Hero(tag: post!.id, child: Image.network(post!.imageUrl)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(post!.title),
          ),
        ],
      ),
    );
  }
}
