import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

import '../domain/post.dart';

class CreateModel {
  final _picker = ImagePicker();

  Future<File?> getImage() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      return File(pickedImage!.path);
    }
  }

  Future<void> uploadPost(String title, File imageFile) async {
    //이미지 업로드
    final storageRef = FirebaseStorage.instance.ref();
    final imageRef = storageRef.child('postImages/${DateTime.now().microsecondsSinceEpoch}.png');

    //이미지 url을 얻고
    await imageRef.putFile(imageFile);
    final downloadUrl = await imageRef.getDownloadURL();


    final postsRef =
        FirebaseFirestore.instance.collection('posts').withConverter<Post>(
              fromFirestore: (snapshot, _) => Post.fromJson(snapshot.data()!),
              toFirestore: (post, _) => post.toJson(),
            );
    //.doc()를 호출하면 Firestore에서 자동으로 고유한 식별자를 가진 새로운 문서를 생성합니다.
    // ~.doc는 데이터베이스에서 작업하는 데 사용되는 코드 조각입니다.
    // FirebaseFirestore.instance.collection('posts') == postRef
    final newPostRef = postsRef.doc();
    //.doc()로 문서 id를 읽어 와 문서에 .set()으로 id를 저장
    //데이터를 문서에 저장하려면 .set()사용하거나.update() 사용하여 문서를 업데이트할 수 있습니다.
    newPostRef.set(
      Post(
        id: newPostRef.id,
        userId: FirebaseAuth.instance.currentUser!.uid,
        title: title,
        imageUrl: downloadUrl,
      ),
    );
  }
}
