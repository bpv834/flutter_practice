import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class HomeModel {
  final _picker = ImagePicker();

  updateProfileImage() async {
    XFile? xfile = await _picker.pickImage(source: ImageSource.gallery);

    if (xfile != null) {
      //이미지 업로드
      final storageRef = FirebaseStorage.instance.ref();
      final imageRef = storageRef.child(
          'user/${FirebaseAuth.instance.currentUser?.uid}/profile/${DateTime
              .now()
              .millisecondsSinceEpoch}.png'
      );

      //이미지 url 얻기
      //1.업로드
      await imageRef.putFile(File(xfile.path));
      //2. url 링크 받기
      final downloadUrl = await imageRef.getDownloadURL();

      //업데이트
      await FirebaseAuth.instance.currentUser?.updatePhotoURL(downloadUrl);
    }
  }

  String getEmail() {
    //email 타입이 ?타입, mail이 널이라면 기본값으로 '메일없음'이라도 준다는 문법
    return FirebaseAuth.instance.currentUser?.email ?? '메일 없음';
  }

  String getNickName() {
    return FirebaseAuth.instance.currentUser?.displayName ?? '이름 없음';
  }

  String getProfileImageUrl() {
    return FirebaseAuth.instance.currentUser?.photoURL ??
        'https://cdnimg.melon.co.kr/cm2/artistcrop/images/002/61/143/261143_20210325180240_org.jpg?61e575e8653e5920470a38d1482d7312/melon/optimize/90';
  }
}