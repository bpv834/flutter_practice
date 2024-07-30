import 'package:bhgh/presentation/sign_up_page/sign_up_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignUpViewModel with ChangeNotifier {
  SignUpState _state = const SignUpState();

  SignUpState get state => _state;

  Future<void> signup(TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController nameController,
      TextEditingController rrnController,
      TextEditingController mainHabitController,) async {
    try {
      print ( '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:');

      final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //사용자 이메일 인증 , 계정 생성후 인증을 보낼 수 있음
      await credential.user!.sendEmailVerification();
      var db = FirebaseFirestore.instance;
      // Create a new user with a first and last name
      final user = <String, dynamic>{
        "email": emailController.text,
        "name": nameController.text,
        "rrn": rrnController.text,
        "mainHabit": mainHabitController.text,
        'habits': _state.habitControllers.map((controller) => controller.text).toList(),
      };



// Add a new document with a generated ID
      db.collection("users").doc(credential.user!.uid).set(user).onError((e,_)=> print('Error : $e'));

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void addHabit() {
    TextEditingController controller = TextEditingController();
    //=List.from : Dart에서 리스트를 복사하여 새로운 리스트를 생성하는 메서드입니다.
    List<TextEditingController> updatedControllers =
    List.from(_state.habitControllers)
      ..add(controller);
    _state = _state.copyWith(habitControllers: updatedControllers);
    notifyListeners();
  }

  void removeHabit(int index) {
    List<TextEditingController> newControllers =
    List.from(_state.habitControllers);
    newControllers.removeAt(index);
    _state = state.copyWith(habitControllers: newControllers);
    notifyListeners();
  }
}
