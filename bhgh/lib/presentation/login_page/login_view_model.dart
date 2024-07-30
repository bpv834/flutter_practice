import 'package:bhgh/core/router/router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';

@injectable
class LoginViewModel with ChangeNotifier{
  void login(BuildContext context, String email, String password) async{
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      if(credential.user!.emailVerified){
        context.push('/homePage');
      }else{


        credential.user!.sendEmailVerification();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('#################No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('%%%%%%%%%%%%%%%%%%%%%%%%%%Wrong password provided for that user.');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('비밀번호가 틀렸습니다..')),
        );
      } else {
        print('%%%%%%%%%%%%%%%%%%%%%%%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^r.');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('등록된 이메일이 없습니다.')),
        );
      }
    }
  }
}