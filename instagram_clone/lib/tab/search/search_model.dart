import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/domain/post.dart';

class SearchModel {
  final Stream<QuerySnapshot<Post>> postsStream = FirebaseFirestore.instance
      .collection('posts')
      .withConverter<Post>(
        fromFirestore: (snapshot, _) => Post.fromJson(snapshot.data()!),
        toFirestore: (post, _) => post.toJson(),
      )
      .snapshots();
}
