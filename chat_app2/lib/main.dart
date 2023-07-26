import 'package:chat_app2/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';//로그인 인증 패키지
void main() async{
  // 플러터에서 파이어베이스를 사용하려면 메인메소드 내에서 비동기 방식으로 반드시 WFB.ensuer()메서드를 먼저 불러오고 firebase.init()메서드를 불러와야함
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatting app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginSignupScreen(),
    );
  }
}
