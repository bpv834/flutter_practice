import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_level_3_login/controller/auth_controller.dart';
import 'package:getx_level_3_login/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  //auth 컨트롤러를 초기화 과정에서 바인드 되게 만들 수 있음(연결까지 기다림)
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: LoginPage(),
    );
  }
}