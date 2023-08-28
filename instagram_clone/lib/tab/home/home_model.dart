import 'package:firebase_auth/firebase_auth.dart';

class HomeModel{
  String getEmail(){
    //email 타입이 ?타입, mail이 널이라면 기본값으로 '메일없음'이라도 준다는 문법
    return FirebaseAuth.instance.currentUser?.email ?? '메일 없음';
  }

  String getNickName(){
    return FirebaseAuth.instance.currentUser?.displayName ?? '이름 없음';
  }

  String getProfileImageUrl(){
    return FirebaseAuth.instance.currentUser?.photoURL ?? 'https://cdnimg.melon.co.kr/cm2/artistcrop/images/002/61/143/261143_20210325180240_org.jpg?61e575e8653e5920470a38d1482d7312/melon/optimize/90';

  }
}