import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

import '../tab/tab_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    // 로그인 옵션들의 리스트입니다 ,  사용자에게 제공될 로그인 옵션들을 정의합니다
    final providers = [EmailAuthProvider()];

    return StreamBuilder<User?>(
      //로그인 상태냐 아니냐의 판단객체
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        if(!snapshot.hasData){
          //로그인 화면
          return SignInScreen(
            providers: providers,
            actions: [
              //로그인 상태 변경 시 수행할 동작을 정의하는 리스트입니다.
              AuthStateChangeAction<SignedIn>((context, state) {
                //다른 화면으로 전환하고자 할 때 이전 화면을 제거하고 새로운 화면을 보여주기 위해 사용됩니다
                Navigator.pushReplacementNamed(context, '/profile');
              }),
            ],
            headerBuilder: (context, constraints, _){
              return Center(
                child: Text('Instagram Clone'),
              );
            },
          );
        }else{
          return TabPage();
        }
      },
    );
  }
}
