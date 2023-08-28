import 'package:firebase_auth/firebase_auth.dart';

class AccountModel{
  void logout() async{
    await FirebaseAuth.instance.signOut();
  }

  String getNickName(){
    return FirebaseAuth.instance.currentUser?.displayName ?? '이름 없음';
  }

  String getProfileImageUrl(){
    return FirebaseAuth.instance.currentUser?.photoURL ?? 'https://cdnimg.melon.co.kr/cm2/artistcrop/images/002/61/143/261143_20210325180240_org.jpg?61e575e8653e5920470a38d1482d7312/melon/optimize/90';

  }
}