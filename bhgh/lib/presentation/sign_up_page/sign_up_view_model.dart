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

      //메일, 비밀번호 등록
      final credential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      //사용자 이메일 인증 , 계정 생성후 인증을 보낼 수 있음
      await credential.user!.sendEmailVerification();
      var db = FirebaseFirestore.instance;
      // Create a new user with a first and last name

      //rrn으로 성별 구하기
      String gender = (int.parse(rrnController.text.substring(6,7)) % 2 != 0) ? "남" : "여";

      //나이 구하기
      int age = calculateAge(rrnController.text);



      final user = <String, dynamic>{
        "email": emailController.text,
        "name": nameController.text,
        "rrn": rrnController.text,
        "age": age,
        "gender" : gender,
        "mainHabit": mainHabitController.text,
        'habits': _state.habitControllers.map((controller) => controller.text).toList(),
      };

      final userTile = <String, dynamic>{
        "tileId" : '',
        "name": nameController.text,
        "age": age,
        "gender" : gender,
        "mainHabit": mainHabitController.text,
        'habits': _state.habitControllers.map((controller) => controller.text).toList(),
        'likeCount' : 0,
      };



// Add a new document with a generated ID
      db.collection("users").doc(credential.user!.uid).set(user).onError((e,_)=> print('!!!!!!!!!!!Error : $e'));

      final docRef = db.collection("tiles").doc(credential.user!.uid);
      docRef.set(userTile).then((_) {
        // 문서 ID를 tileId 필드로 업데이트
        docRef.update({'tileId': docRef.id}).then((_) {
          print('DocumentSnapshot added with ID: ${docRef.id}');
        });
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
            print('비밀번호 보안이 약해요 6자리 이상 입력.');
      } else if (e.code == 'email-already-in-use') {
        print('이미 존재하는 이메일');
      }
    } catch (e) {
      print('에러 @!!#!@##!#!#: $e ');
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

  int calculateAge(String rrn) {
    if (rrn.length != 13) {
      throw FormatException("유효하지 않은 주민등록번호 길이입니다.");
    }

    // 생년월일 및 세기 구분자 추출
    String yy = rrn.substring(0, 2);
    String mm = rrn.substring(2, 4);
    String dd = rrn.substring(4, 6);
    int g = int.parse(rrn.substring(6, 7));

    // 7번째 숫자에 따라 세기 결정
    int century;
    if (g == 1 || g == 2) {
      century = 1900;
    } else if (g == 3 || g == 4) {
      century = 2000;
    } else {
      throw FormatException("유효하지 않은 주민등록번호입니다.");
    }

    // 출생 연도 계산
    int birthYear = century + int.parse(yy);
    DateTime birthDate = DateTime(birthYear, int.parse(mm), int.parse(dd));

    // 현재 날짜
    DateTime today = DateTime.now();
    int age = today.year - birthDate.year;

    // 아직 생일이 지나지 않았다면 나이를 하나 줄임
    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }

    return age;
  }
}
