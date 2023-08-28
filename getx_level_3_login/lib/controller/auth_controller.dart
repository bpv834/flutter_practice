import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:getx_level_3_login/screens/login.dart';
import 'package:getx_level_3_login/screens/welcome.dart';

class AuthController extends GetxController {
  //어디서든지 instance에 접근하도록 함
  static AuthController instance = Get.find();

  //초기화 시점이 늦어 late 사용
  //변수를 선언하는 방식은 변수의 타입을 Rx{타입}의 방식으로 선언하고 변수의 값은 ‘.obs’를 붙이게 됩니다
  late Rx<User?> _user;
  FirebaseAuth authentication = FirebaseAuth.instance;

  //Worker는 controller 안에서 onInit() 함수를 override하고 그 안에 추가해서 사용하게 되는데 아래의 4가지 종류가 있습니다.
  //init()함수를 : ever(매 변경때), once(첫 변경때만), interval(특정 지정 시간 인터벌이 지나면 실행), Debounce(인터벌 종료 후 특정 지정 시간 이후 한번만 실행)
  //GetX컨트롤러가 초기화 된 후 네트워크에서 불러오는 정보를 위한 기능들을 구현하기 위해 초기화 시켜줄 때 필요
  @override
  void onReady() {
    super.onReady();
    //rx<User?>타입으로 형변환
    _user = Rx<User?>(authentication.currentUser);
    //_user를 stream에 bind 해줌, 이 stream은 유저의 모든 행동을 실시간으로 전달해 줌, Changes를 통해
    //앱 사용자가 로그인 혹은 로그아웃 등을 하면 그 즉시 _user에게 전달 됨
    _user.bindStream(authentication.userChanges());
    //매번 변경 될 때 실행
    ever(_user, _moveToPage);
  }

  _moveToPage(User? user) {
    if (user == null) {
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() => WelcomePage());
    }
  }

  register(String email, password) async {
    try {
      await authentication.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("Error Message", "User message",
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Registration is failed",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(
              color: Colors.white,
            ),
          ));
    }
  }

  void logout(){
    authentication.signOut();
  }
}
