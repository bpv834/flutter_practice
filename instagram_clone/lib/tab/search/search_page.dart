import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/create/create_page.dart';
import 'package:instagram_clone/tab/search/search_model.dart';

import '../../domain/post.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final List<String> _urls = [
    'https://lh5.googleusercontent.com/p/AF1QipPGl6MqUOpA-oR3QcdGBgaWh67smtnDY1s05ps4=w260-h175-n-k-no',
    'https://lh5.googleusercontent.com/p/AF1QipPGl6MqUOpA-oR3QcdGBgaWh67smtnDY1s05ps4=w260-h175-n-k-no',
    'https://lh5.googleusercontent.com/p/AF1QipPGl6MqUOpA-oR3QcdGBgaWh67smtnDY1s05ps4=w260-h175-n-k-no',
  ];

  @override
  Widget build(BuildContext context) {
    final model = SearchModel();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CreatePage();
              },
            ),
          );
        },
        child: Icon(
          Icons.create,
        ),
      ),
      appBar: AppBar(
        title: Text('Instagram clone'),
      ),
      body: Padding(
        padding: EdgeInsets.all(3),
        child: StreamBuilder<QuerySnapshot<Post>>(
          stream: model.postsStream,
          builder: (context, snapshot) {
            if(snapshot.hasError)
              return Text('에러');
            if(snapshot.connectionState==ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());

            List<Post> posts = snapshot.data!.docs.map((e) => e.data()).toList();
            return GridView.builder(
              itemCount: posts.length,
              gridDelegate:
                  //열 개수
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisSpacing: 2, crossAxisSpacing: 2),
              itemBuilder: (BuildContext context, int index) {
                final post = posts[index];
                return Image.network(
                  post.imageUrl,
                  fit: BoxFit.cover,
                );
              },
            );
          }
        ),
      ),
    );
  }
}
