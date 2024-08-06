import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

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
        print('이메일 인증 안됐음');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('메일을 확인해 주세요')),
        );
      }
    } on FirebaseAuthException catch (e) {
      print('에러 코드!!! : ${e.code}');
      if (e.code == 'invalid-credential') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('계정을 확인 해주세요')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('에러코드 ${e.code}.')),
        );
      }
    }
  }
}