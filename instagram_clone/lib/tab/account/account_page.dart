import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../detail_post/detail_post_page.dart';
import '../../domain/post.dart';
import 'account_model.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  final model = AccountModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AccountPage'),
        actions: [
          IconButton(
            onPressed: () {
              model.logout();
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Stack(children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            model.getProfileImageUrl(),
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_a_photo),
                          ),
                        ),
                      )
                    ]),
                    Text(
                      model.getNickName(),
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    StreamBuilder<QuerySnapshot<Post>>(
                        stream: model.postsStream,
                        builder: (context, snapshot) {
                          int count = 0;
                          if (snapshot.hasData) {
                            count = snapshot.data!.size;
                          }
                          return Text(
                            '${count}',
                            style: TextStyle(fontSize: 18),
                          );
                        }),
                    Text(
                      '게시물',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '팔로우',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '팔로잉',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(3),
                child: StreamBuilder<QuerySnapshot<Post>>(
                    stream: model.postsStream,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) return Text('에러');
                      if (snapshot.connectionState == ConnectionState.waiting)
                        return Center(child: CircularProgressIndicator());

                      List<Post> posts =
                          snapshot.data!.docs.map((e) => e.data()).toList();
                      return GridView.builder(
                        itemCount: posts.length,
                        gridDelegate:
                            //열 개수
                            SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 2,
                                crossAxisSpacing: 2),
                        itemBuilder: (BuildContext context, int index) {
                          final post = posts[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPostPage(post: post),
                                ),
                              );
                            },
                            child: Hero(
                              tag: post.id,
                              child: Image.network(
                                post.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
